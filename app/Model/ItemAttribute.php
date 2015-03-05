<?php
App::uses('AppModel', 'Model');
/**
 * ItemAttribute Model
 *
 * @property Item $Item
 * @property ItemBinding $ItemBinding
 * @property ItemBrand $ItemBrand
 */
class ItemAttribute extends AppModel {


	//The Associations below have been created with all possible keys, those that are not needed can be removed

/**
 * belongsTo associations
 *
 * @var array
 */
	public $belongsTo = array(
		'Item' => array(
			'className' => 'Item',
			'foreignKey' => 'item_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		),
		'ItemBinding' => array(
			'className' => 'ItemBinding',
			'foreignKey' => 'item_binding_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		),
		'ItemBrand' => array(
			'className' => 'ItemBrand',
			'foreignKey' => 'item_brand_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		)
	);
}
