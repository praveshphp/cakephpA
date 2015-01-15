<div class="items index">
	<h2><?php echo __('Items'); ?></h2>
	<table cellpadding="0" cellspacing="0">
	<thead>
	<tr>
			<th><?php echo $this->Paginator->sort('id'); ?></th>
			<th><?php echo $this->Paginator->sort('ASIN'); ?></th>
			<th><?php echo $this->Paginator->sort('sales_rank'); ?></th>
			<th><?php echo $this->Paginator->sort('detail_page_url'); ?></th>
			<th><?php echo $this->Paginator->sort('customer_reviews'); ?></th>
			<th><?php echo $this->Paginator->sort('has_review'); ?></th>
			<th><?php echo $this->Paginator->sort('browsenode_id'); ?></th>
			<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	</thead>
	<tbody>
	<?php foreach ($items as $item): ?>
	<tr>
		<td><?php echo h($item['Item']['id']); ?>&nbsp;</td>
		<td><?php echo h($item['Item']['ASIN']); ?>&nbsp;</td>
		<td><?php echo h($item['Item']['sales_rank']); ?>&nbsp;</td>
		<td><?php echo h($item['Item']['detail_page_url']); ?>&nbsp;</td>
		<td><?php echo h($item['Item']['customer_reviews']); ?>&nbsp;</td>
		<td><?php echo h($item['Item']['has_review']); ?>&nbsp;</td>
		<td>
			<?php echo $this->Html->link($item['Browsenode']['id'], array('controller' => 'browsenodes', 'action' => 'view', $item['Browsenode']['id'])); ?>
		</td>
		<td class="actions">
			<?php echo $this->Html->link(__('View'), array('action' => 'view', $item['Item']['id'])); ?>
			<?php echo $this->Html->link(__('Edit'), array('action' => 'edit', $item['Item']['id'])); ?>
			<?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $item['Item']['id']), array(), __('Are you sure you want to delete # %s?', $item['Item']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
	</tbody>
	</table>
	<p>
	<?php
	echo $this->Paginator->counter(array(
	'format' => __('Page {:page} of {:pages}, showing {:current} records out of {:count} total, starting on record {:start}, ending on {:end}')
	));
	?>	</p>
	<div class="paging">
	<?php
		echo $this->Paginator->prev('< ' . __('previous'), array(), null, array('class' => 'prev disabled'));
		echo $this->Paginator->numbers(array('separator' => ''));
		echo $this->Paginator->next(__('next') . ' >', array(), null, array('class' => 'next disabled'));
	?>
	</div>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('New Item'), array('action' => 'add')); ?></li>
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
