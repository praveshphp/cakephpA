<?php
App::uses('AppModel', 'Model');
/**
 * Browsenode Model
 *
 * @property Browsenode $ParentBrowsenode
 * @property Browsenode $ChildBrowsenode
 * @property Item $Item
 */
class Browsenode extends AppModel {


	//The Associations below have been created with all possible keys, those that are not needed can be removed

/**
 * belongsTo associations
 *
 * @var array
 */
	public $belongsTo = array(
		'ParentBrowsenode' => array(
			'className' => 'Browsenode',
			'foreignKey' => 'parent_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		)
	);

/**
 * hasMany associations
 *
 * @var array
 */
	public $hasMany = array(
		'ChildBrowsenode' => array(
			'className' => 'Browsenode',
			'foreignKey' => 'parent_id',
			'dependent' => false,
			'conditions' => '',
			'fields' => '',
			'order' => '',
			'limit' => '',
			'offset' => '',
			'exclusive' => '',
			'finderQuery' => '',
			'counterQuery' => ''
		),
		'Item' => array(
			'className' => 'Item',
			'foreignKey' => 'browsenode_id',
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
