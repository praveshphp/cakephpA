<?php
App::uses('AppModel', 'Model');
/**
 * ItemBrand Model
 *
 * @property ItemAttribute $ItemAttribute
 */
class ItemBrand extends AppModel {


	//The Associations below have been created with all possible keys, those that are not needed can be removed

/**
 * hasMany associations
 *
 * @var array
 */
	public $hasMany = array(
		'ItemAttribute' => array(
			'className' => 'ItemAttribute',
			'foreignKey' => 'item_brand_id',
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

}
