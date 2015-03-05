<?php
App::uses('AppModel', 'Model');
/**
 * Asin Model
 *
 */
class Asin extends AppModel {

/**
 * Use table
 *
 * @var mixed False or table name
 */
	public $useTable = 'asin';

/**
 * Validation rules
 *
 * @var array
 */
	public $validate = array(
		'asin' => array(
			'notEmpty' => array(
				'rule' => array('notEmpty'),
				//'message' => 'Your custom message here',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
		'done' => array(
			'numeric' => array(
				'rule' => array('numeric'),
				//'message' => 'Your custom message here',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
	);
}
