<?php

App::uses('AppController', 'Controller');

/**
 * Items Controller
 *
 * @property Item $Item
 * @property PaginatorComponent $Paginator
 */
class ItemsController extends AppController
{

    /**
     * Components
     *
     * @var array
     */
    public $components = array('Paginator');

    /**
     * admin_index method
     *
     * @return void
     */
    public function admin_index()
    {
        $this->Item->recursive = 0;
        $this->set('items', $this->Paginator->paginate());
    }

    /**
     * admin_view method
     *
     * @throws NotFoundException
     * @param string $id
     * @return void
     */
    public function admin_view($id = null)
    {
        if (!$this->Item->exists($id)) {
            throw new NotFoundException(__('Invalid item'));
        }
        $options = array('conditions' => array('Item.' . $this->Item->primaryKey => $id));
        $this->set('item', $this->Item->find('first', $options));
    }

    /**
     * admin_add method
     *
     * @return void
     */
    public function admin_add()
    {
        if ($this->request->is('post')) {
            $this->Item->create();
            if ($this->Item->save($this->request->data)) {
                $this->Session->setFlash(__('The item has been saved.'));
                return $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('The item could not be saved. Please, try again.'));
            }
        }
        $browsenodes = $this->Item->Browsenode->find('list');
        $this->set(compact('browsenodes'));
    }

    /**
     * admin_edit method
     *
     * @throws NotFoundException
     * @param string $id
     * @return void
     */
    public function admin_edit($id = null)
    {
        if (!$this->Item->exists($id)) {
            throw new NotFoundException(__('Invalid item'));
        }
        if ($this->request->is(array('post', 'put'))) {
            if ($this->Item->save($this->request->data)) {
                $this->Session->setFlash(__('The item has been saved.'));
                return $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('The item could not be saved. Please, try again.'));
            }
        } else {
            $options = array('conditions' => array('Item.' . $this->Item->primaryKey => $id));
            $this->request->data = $this->Item->find('first', $options);
        }
        $browsenodes = $this->Item->Browsenode->find('list');
        $this->set(compact('browsenodes'));
    }

    /**
     * admin_delete method
     *
     * @throws NotFoundException
     * @param string $id
     * @return void
     */
    public function admin_delete($id = null)
    {
        $this->Item->id = $id;
        if (!$this->Item->exists()) {
            throw new NotFoundException(__('Invalid item'));
        }
        $this->request->allowMethod('post', 'delete');
        if ($this->Item->delete()) {
            $this->Session->setFlash(__('The item has been deleted.'));
        } else {
            $this->Session->setFlash(__('The item could not be deleted. Please, try again.'));
        }
        return $this->redirect(array('action' => 'index'));
    }

    public function admin_getId()
    {
        $this->loadModel('Asin');
        App::import('Vendor', 'AmazonECS/AmazonECS');
        try {
            // get a new object with your API Key and secret key.
            // Added in version 1.0 is the new optional parameter to set up an AssociateTag (AssociateID)
            $amazonEcs = new AmazonECS(AWS_API_KEY, AWS_API_SECRET_KEY, 'IN',
                AWS_ASSOCIATE_TAG);

            $amazonEcs->associateTag(AWS_ASSOCIATE_TAG);

            $alfas = array('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0');
            $arr = array();
            $j = 0;
            for ($i = 1; $i <= 5; $i++) {
                $amazonEcs->page($i);
                foreach ($alfas as $alfa) {
                    $response2 = $amazonEcs->category('All')->responseGroup('ItemIds')->optionalParameters(array('Condition' => 'New'))->search($alfa, 1805560031);
                    foreach ($response2->Items->Item as $item) {
                        $arr[$j]['asin'] = $item->ASIN;
                        $j++;
                    }
                }

                sleep(1);
            }
            foreach ($arr as $a) {
                $c = $this->Asin->find('count',
                    array('conditions' => array('Asin.asin' => $a['asin'])));
                if ($c <= 0) {
                    $this->Asin->saveMany(array('Asin' => array('asin' => $a['asin'])));
                }
            }
        } catch (Exception $e) {
            echo $e->getMessage();
        }
    }

    public function admin_cron($asin = '')
    {
        $this->loadModel('Asin');
        // echo AWS_API_KEY;exit;
        App::import('Vendor', 'AmazonECS/AmazonECS');
        try {
            if (empty($asin)) {
                $asin = 'B00L8WT2UI';
            }

            $asins = $this->Asin->find('all',
                array('conditions' => array('Asin.done' => 0), 'limit' => 50));
            //debug($asins);
            // exit;
            foreach ($asins as $a) {
                $this->Item->create();
                $asin = $a['Asin']['asin'];

                // get a new object with your API Key and secret key.
                // Added in version 1.0 is the new optional parameter to set up an AssociateTag (AssociateID)
                $amazonEcs = new AmazonECS(AWS_API_KEY, AWS_API_SECRET_KEY,
                    'IN', AWS_ASSOCIATE_TAG);

                $amazonEcs->associateTag(AWS_ASSOCIATE_TAG);

                // Looking up multiple items
                $response = $amazonEcs->responseGroup('Large,Variations,Reviews,Accessories,Offers')->optionalParameters(array('Condition' => 'New'))->lookup($asin);
                //   debug($response->Items);exit;
                if ($response->Items->Item) {
                    $conditions = array('Item.ASIN' => $response->Items->Item->ASIN);
                    $data = $this->Item->find('first',
                        array('conditions' => $conditions));


                    $item['Item']['ASIN'] = $response->Items->Item->ASIN;
                    $item['Item']['SalesRank'] = $response->Items->Item->SalesRank;
                    $item['Item']['DetailPageURL'] = $response->Items->Item->DetailPageURL;
                    $item['Item']['CustomerReviews'] = $response->Items->Item->CustomerReviews->IFrameURL;
                    $item['Item']['HasReviews'] = $response->Items->Item->CustomerReviews->HasReviews;
                    $item['Item']['browsenode_id'] = $response->Items->Item->BrowseNodes->BrowseNode->BrowseNodeId;


                    /* ItemAttribute */
                    $this->loadModel('ItemBrand');
                    $brand_id = $this->ItemBrand->insertBrand($response->Items->Item->ItemAttributes->Brand);
                    $item['ItemAttribute'][0]['item_brand_id'] = $brand_id;
                    $this->loadModel('ItemBinding');
                    if(!isset($response->Items->Item->ItemAttributes->Binding)){
                        debug($response->Items->Item);exit;
                    }
                    $item_binding_id = $this->ItemBinding->insertBinding($response->Items->Item->ItemAttributes->Binding);
                    $item['ItemAttribute'][0]['item_binding_id'] = $item_binding_id;
                    $item['ItemAttribute'][0]['Color'] = $this->isValue($response->Items->Item->ItemAttributes->Color);
                    $item['ItemAttribute'][0]['EAN'] = $this->isValue($response->Items->Item->ItemAttributes->EAN);
                    $item['ItemAttribute'][0]['Label'] = $this->isValue($response->Items->Item->ItemAttributes->Label);
                    $item['ItemAttribute'][0]['LegalDisclaimer'] = $this->isValue($response->Items->Item->ItemAttributes->LegalDisclaimer);
                    $item['ItemAttribute'][0]['Manufacturer'] = $this->isValue($response->Items->Item->ItemAttributes->Manufacturer);
                    $item['ItemAttribute'][0]['Model'] =  $this->isValue($response->Items->Item->ItemAttributes->Model);
                    $item['ItemAttribute'][0]['MPN'] =  $this->isValue($response->Items->Item->ItemAttributes->MPN);
                    $item['ItemAttribute'][0]['OperatingSystem'] =  $this->isValue($response->Items->Item->ItemAttributes->OperatingSystem);
                    $item['ItemAttribute'][0]['PackageQuantity'] =  $this->isValue($response->Items->Item->ItemAttributes->PackageQuantity);
                    $item['ItemAttribute'][0]['PartNumber'] =  $this->isValue($response->Items->Item->ItemAttributes->PartNumber);
                    $item['ItemAttribute'][0]['ProductGroup'] =  $this->isValue($response->Items->Item->ItemAttributes->ProductGroup);
                    $item['ItemAttribute'][0]['ProductTypeName'] =  $this->isValue($response->Items->Item->ItemAttributes->ProductTypeName);
                    $item['ItemAttribute'][0]['Publisher'] =  $this->isValue($response->Items->Item->ItemAttributes->Publisher);
                    $item['ItemAttribute'][0]['Studio'] =  $this->isValue($response->Items->Item->ItemAttributes->Studio);
                    $item['ItemAttribute'][0]['Title'] =  $this->isValue($response->Items->Item->ItemAttributes->Title);
                    $item['ItemAttribute'][0]['Warranty'] =  $this->isValue($response->Items->Item->ItemAttributes->Warranty);
                    /* ItemAttribute */
                    //debug($item);exit;

                    /* ItemImage */
                    foreach ($response->Items->Item->ImageSets->ImageSet as $iskey => $is) {
                        $item['ItemImage'][$iskey]['SwatchImage'] = $this->isValue($is->SwatchImage->URL);
                        $item['ItemImage'][$iskey]['SmallImage'] = $this->isValue($is->SmallImage->URL);
                        $item['ItemImage'][$iskey]['ThumbnailImage'] = $this->isValue($is->ThumbnailImage->URL);
                        $item['ItemImage'][$iskey]['TinyImage'] = $this->isValue($is->TinyImage->URL);
                        $item['ItemImage'][$iskey]['MediumImage'] = $this->isValue($is->MediumImage->URL);
                        $item['ItemImage'][$iskey]['LargeImage'] = $this->isValue($is->LargeImage->URL);
                    }
                    /* ItemImage */
                    /* ItemFeature */
                    foreach ($response->Items->Item->ItemAttributes->Feature as $fkey => $f) {
                        $item['ItemFeature'][$fkey]['Feature'] = $this->isValue($f);
                    }
                    /* ItemFeature */
                    /* ItemDimension */
                    $item['ItemDimension'][0]['Height'] = $this->isValue($response->Items->Item->ItemAttributes->ItemDimensions->Height->_);
                    $item['ItemDimension'][0]['Length'] = $this->isValue($response->Items->Item->ItemAttributes->ItemDimensions->Length->_);
                    $item['ItemDimension'][0]['Weight'] = $this->isValue($response->Items->Item->ItemAttributes->ItemDimensions->Weight->_);
                    $item['ItemDimension'][0]['Width'] = $this->isValue($response->Items->Item->ItemAttributes->ItemDimensions->Width->_);
                    $item['ItemDimension'][0]['Height_unit'] = $this->isValue($response->Items->Item->ItemAttributes->ItemDimensions->Height->Units);
                    $item['ItemDimension'][0]['Length_unit'] = $this->isValue($response->Items->Item->ItemAttributes->ItemDimensions->Length->Units);
                    $item['ItemDimension'][0]['Weight_unit'] = $this->isValue($response->Items->Item->ItemAttributes->ItemDimensions->Weight->Units);
                    $item['ItemDimension'][0]['Width_unit'] = $this->isValue($response->Items->Item->ItemAttributes->ItemDimensions->Width->Units);
                    /* ItemDimension */

                    //  debug($response->Items->Item);
                    //exit;


                    if ($this->Item->saveAll($item)) {
                        $this->Session->setFlash(__('The item has been saved.'));
                        // return $this->redirect(array('action' => 'index'));
                    } else {
                        $this->Session->setFlash(__('The item could not be saved. Please, try again.'));
                    }
                }
                $a['Asin']['done'] = 1;
                $this->Asin->save($a);
            }


            // $response = $amazonEcs->responseGroup('Images')->lookup('B00ITO43DY');


            // For more examples please look at testItemSearch.php and testItemLookup.php
            // These examples also could be used with the AssociateTag
        } catch (Exception $e) {
            echo $e->getMessage();
        }


        exit;


        if ($this->request->is('post')) {
            $this->Item->create();
            if ($this->Item->save($this->request->data)) {
                $this->Session->setFlash(__('The item has been saved.'));
                return $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('The item could not be saved. Please, try again.'));
            }
        }
        $browsenodes = $this->Item->Browsenode->find('list');
        $this->set(compact('browsenodes'));
    }

    function isValue($val)
    {
        if (isset($val)) {
            return $val;
        } else {
            return '';
        }
    }

}
