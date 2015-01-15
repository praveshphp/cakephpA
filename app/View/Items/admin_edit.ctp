<div class="items form">
<?php echo $this->Form->create('Item'); ?>
	<fieldset>
		<legend><?php echo __('Admin Edit Item'); ?></legend>
	<?php
		echo $this->Form->input('id');
		echo $this->Form->input('ASIN');
		echo $this->Form->input('sales_rank');
		echo $this->Form->input('detail_page_url');
		echo $this->Form->input('customer_reviews');
		echo $this->Form->input('has_review');
		echo $this->Form->input('browsenode_id');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $this->Form->value('Item.id')), array(), __('Are you sure you want to delete # %s?', $this->Form->value('Item.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List Items'), array('action' => 'index')); ?></li>
		<li><?php echo $this->Html->link(__('List Browsenodes'), array('controller' => 'browsenodes', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Browsenode'), array('controller' => 'browsenodes', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Item Dimensions'), array('controller' => 'item_dimensions', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Item Dimension'), array('controller' => 'item_dimensions', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Item Attributes'), array('controller' => 'item_attributes', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Item Attribute'), array('controller' => 'item_attributes', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Item Features'), array('controller' => 'item_features', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Item Feature'), array('controller' => 'item_features', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Item Images'), array('controller' => 'item_images', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Item Image'), array('controller' => 'item_images', 'action' => 'add')); ?> </li>
	</ul>
</div>
