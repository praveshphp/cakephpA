<?php

App::uses('AppModel', 'Model');

/**
 * ItemBinding Model
 *
 * @property ItemAttribute $ItemAttribute
 */
class ItemBinding extends AppModel {

    /**
     * Display field
     *
     * @var string
     */
    public $displayField = 'Binding';


    //The Associations below have been created with all possible keys, those that are not needed can be removed

    /**
     * hasMany associations
     *
     * @var array
     */
    public $hasMany = array(
        'ItemAttribute' => array(
            'className' => 'ItemAttribute',
            'foreignKey' => 'item_binding_id',
            'dependent' => false,
            'conditions' => '',
            'fields' => '',
            'order' => '',
            'limit' => '',
            'offset' => '',
            'exclusive' => '',
            'finderQuery' => '',
            'counterQuery' => ''
        )
    );

    function insertBinding($brand) {
        $conditions = array('ItemBinding.Binding' => $brand);
        $data = $this->find('first', array('conditions' => $conditions));
        if (!$data) {
            $d['ItemBinding']['Binding'] = $brand;
            $data = $this->save($d);
        }
       // debug($data['ItemBinding']['id']);exit;
        return $data['ItemBinding']['id'];
        // $this->save()
    }

}
