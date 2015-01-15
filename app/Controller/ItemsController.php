<?php

App::uses('AppController', 'Controller');

/**
 * Items Controller
 *
 * @property Item $Item
 * @property PaginatorComponent $Paginator
 */
class ItemsController extends AppController {

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
    public function admin_index() {
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
    public function admin_view($id = null) {
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
    public function admin_add() {
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
    public function admin_edit($id = null) {
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
    public function admin_delete($id = null) {
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

    public function admin_cron() {

        // echo AWS_API_KEY;exit;
        App::import('Vendor', 'AmazonECS/AmazonECS');
        try {
            // get a new object with your API Key and secret key.
            // Added in version 1.0 is the new optional parameter to set up an AssociateTag (AssociateID)
            $amazonEcs = new AmazonECS(AWS_API_KEY, AWS_API_SECRET_KEY, 'IN',
                    AWS_ASSOCIATE_TAG);

            $amazonEcs->associateTag(AWS_ASSOCIATE_TAG);

            // Looking up multiple items
            $response = $amazonEcs->responseGroup('Large,Variations,Reviews,Accessories,Offers')->optionalParameters(array('Condition' => 'New'))->lookup('B00L8WT2UI');
            // debug($response->Items->Item);
            $conditions = array('Item.ASIN' => $response->Items->Item->ASIN);
            $data = $this->Item->find('first',
                    array('conditions' => $conditions));
            debug($data);
            exit;
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
            $item_binding_id = $this->ItemBinding->insertBinding($response->Items->Item->ItemAttributes->Binding);
            $item['ItemAttribute'][0]['item_binding_id'] = $item_binding_id;
            $item['ItemAttribute'][0]['Color'] = $response->Items->Item->ItemAttributes->Color;
            $item['ItemAttribute'][0]['EAN'] = $response->Items->Item->ItemAttributes->EAN;
            $item['ItemAttribute'][0]['Label'] = $response->Items->Item->ItemAttributes->Label;
            $item['ItemAttribute'][0]['LegalDisclaimer'] = $response->Items->Item->ItemAttributes->LegalDisclaimer;
            $item['ItemAttribute'][0]['Manufacturer'] = $response->Items->Item->ItemAttributes->Manufacturer;
            $item['ItemAttribute'][0]['Model'] = $response->Items->Item->ItemAttributes->Model;
            $item['ItemAttribute'][0]['MPN'] = $response->Items->Item->ItemAttributes->MPN;
            $item['ItemAttribute'][0]['OperatingSystem'] = $response->Items->Item->ItemAttributes->OperatingSystem;
            $item['ItemAttribute'][0]['PackageQuantity'] = $response->Items->Item->ItemAttributes->PackageQuantity;
            $item['ItemAttribute'][0]['PartNumber'] = $response->Items->Item->ItemAttributes->PartNumber;
            $item['ItemAttribute'][0]['ProductGroup'] = $response->Items->Item->ItemAttributes->ProductGroup;
            $item['ItemAttribute'][0]['ProductTypeName'] = $response->Items->Item->ItemAttributes->ProductTypeName;
            $item['ItemAttribute'][0]['Publisher'] = $response->Items->Item->ItemAttributes->Publisher;
            $item['ItemAttribute'][0]['Studio'] = $response->Items->Item->ItemAttributes->Studio;
            $item['ItemAttribute'][0]['Title'] = $response->Items->Item->ItemAttributes->Title;
            $item['ItemAttribute'][0]['Warranty'] = $response->Items->Item->ItemAttributes->Warranty;
            /* ItemAttribute */
            //debug($item);exit;

            /* ItemImage */
            foreach ($response->Items->Item->ImageSets->ImageSet as $iskey => $is) {
                $item['ItemImage'][$iskey]['SwatchImage'] = $is->SwatchImage->URL;
                $item['ItemImage'][$iskey]['SmallImage'] = $is->SmallImage->URL;
                $item['ItemImage'][$iskey]['ThumbnailImage'] = $is->ThumbnailImage->URL;
                $item['ItemImage'][$iskey]['TinyImage'] = $is->TinyImage->URL;
                $item['ItemImage'][$iskey]['MediumImage'] = $is->MediumImage->URL;
                $item['ItemImage'][$iskey]['LargeImage'] = $is->LargeImage->URL;
            }
            /* ItemImage */
            /* ItemFeature */
            foreach ($response->Items->Item->ItemAttributes->Feature as $fkey => $f) {
                $item['ItemFeature'][$fkey]['Feature'] = $f;
            }
            /* ItemFeature */
            /* ItemDimension */
            $item['ItemDimension'][0]['Height'] = $response->Items->Item->ItemAttributes->ItemDimensions->Height->_;
            $item['ItemDimension'][0]['Length'] = $response->Items->Item->ItemAttributes->ItemDimensions->Length->_;
            $item['ItemDimension'][0]['Weight'] = $response->Items->Item->ItemAttributes->ItemDimensions->Weight->_;
            $item['ItemDimension'][0]['Width'] = $response->Items->Item->ItemAttributes->ItemDimensions->Width->_;
            $item['ItemDimension'][0]['Height_unit'] = $response->Items->Item->ItemAttributes->ItemDimensions->Height->Units;
            $item['ItemDimension'][0]['Length_unit'] = $response->Items->Item->ItemAttributes->ItemDimensions->Length->Units;
            $item['ItemDimension'][0]['Weight_unit'] = $response->Items->Item->ItemAttributes->ItemDimensions->Weight->Units;
            $item['ItemDimension'][0]['Width_unit'] = $response->Items->Item->ItemAttributes->ItemDimensions->Width->Units;
            /* ItemDimension */




            if ($this->Item->saveAll($item)) {
                $this->Session->setFlash(__('The item has been saved.'));
                return $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('The item could not be saved. Please, try again.'));
            }


            exit;

            $response = $amazonEcs->responseGroup('Images')->lookup('B00ITO43DY');


            // For more examples please look at testItemSearch.php and testItemLookup.php
            // These examples also could be used with the AssociateTag
        } catch (Exception $e) {
            echo $e->getMessage();
        }

        if ("cli" !== PHP_SAPI) {
            echo "</pre>";
        }
        try {
            $this->render(implode('/', $path));
        } catch (MissingViewException $e) {
            if (Configure::read('debug')) {
                throw $e;
            }
            throw new NotFoundException();
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

}
