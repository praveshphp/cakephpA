<div class="items view">
<h2><?php echo __('Item'); ?></h2>
	<dl>
		<dt><?php echo __('Id'); ?></dt>
		<dd>
			<?php echo h($item['Item']['id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('ASIN'); ?></dt>
		<dd>
			<?php echo h($item['Item']['ASIN']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Sales Rank'); ?></dt>
		<dd>
			<?php echo h($item['Item']['sales_rank']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Detail Page Url'); ?></dt>
		<dd>
			<?php echo h($item['Item']['detail_page_url']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Customer Reviews'); ?></dt>
		<dd>
			<?php echo h($item['Item']['customer_reviews']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Has Review'); ?></dt>
		<dd>
			<?php echo h($item['Item']['has_review']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Browsenode'); ?></dt>
		<dd>
			<?php echo $this->Html->link($item['Browsenode']['id'], array('controller' => 'browsenodes', 'action' => 'view', $item['Browsenode']['id'])); ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Item'), array('action' => 'edit', $item['Item']['id'])); ?> </li>
		<li><?php echo $this->Form->postLink(__('Delete Item'), array('action' => 'delete', $item['Item']['id']), array(), __('Are you sure you want to delete # %s?', $item['Item']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Items'), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Item'), array('action' => 'add')); ?> </li>
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
<div class="related">
	<h3><?php echo __('Related Item Dimensions'); ?></h3>
	<?php if (!empty($item['ItemDimension'])): ?>
	<table cellpadding = "0" cellspacing = "0">
	<tr>
		<th><?php echo __('Id'); ?></th>
		<th><?php echo __('Item Id'); ?></th>
		<th><?php echo __('Height'); ?></th>
		<th><?php echo __('Height Unit'); ?></th>
		<th><?php echo __('Length'); ?></th>
		<th><?php echo __('Length Unit'); ?></th>
		<th><?php echo __('Weight'); ?></th>
		<th><?php echo __('Weight Unit'); ?></th>
		<th><?php echo __('Width'); ?></th>
		<th><?php echo __('Width Unit'); ?></th>
		<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	<?php foreach ($item['ItemDimension'] as $itemDimension): ?>
		<tr>
			<td><?php echo $itemDimension['id']; ?></td>
			<td><?php echo $itemDimension['item_id']; ?></td>
			<td><?php echo $itemDimension['Height']; ?></td>
			<td><?php echo $itemDimension['Height_unit']; ?></td>
			<td><?php echo $itemDimension['Length']; ?></td>
			<td><?php echo $itemDimension['Length_unit']; ?></td>
			<td><?php echo $itemDimension['Weight']; ?></td>
			<td><?php echo $itemDimension['Weight_unit']; ?></td>
			<td><?php echo $itemDimension['Width']; ?></td>
			<td><?php echo $itemDimension['Width_unit']; ?></td>
			<td class="actions">
				<?php echo $this->Html->link(__('View'), array('controller' => 'item_dimensions', 'action' => 'view', $itemDimension['id'])); ?>
				<?php echo $this->Html->link(__('Edit'), array('controller' => 'item_dimensions', 'action' => 'edit', $itemDimension['id'])); ?>
				<?php echo $this->Form->postLink(__('Delete'), array('controller' => 'item_dimensions', 'action' => 'delete', $itemDimension['id']), array(), __('Are you sure you want to delete # %s?', $itemDimension['id'])); ?>
			</td>
		</tr>
	<?php endforeach; ?>
	</table>
<?php endif; ?>

	<div class="actions">
		<ul>
			<li><?php echo $this->Html->link(__('New Item Dimension'), array('controller' => 'item_dimensions', 'action' => 'add')); ?> </li>
		</ul>
	</div>
</div>
<div class="related">
	<h3><?php echo __('Related Item Attributes'); ?></h3>
	<?php if (!empty($item['ItemAttribute'])): ?>
	<table cellpadding = "0" cellspacing = "0">
	<tr>
		<th><?php echo __('Id'); ?></th>
		<th><?php echo __('Item Id'); ?></th>
		<th><?php echo __('Item Binding Id'); ?></th>
		<th><?php echo __('Item Brand Id'); ?></th>
		<th><?php echo __('Color'); ?></th>
		<th><?php echo __('EAN'); ?></th>
		<th><?php echo __('Label'); ?></th>
		<th><?php echo __('LegalDisclaimer'); ?></th>
		<th><?php echo __('Manufacturer'); ?></th>
		<th><?php echo __('Model'); ?></th>
		<th><?php echo __('MPN'); ?></th>
		<th><?php echo __('OperatingSystem'); ?></th>
		<th><?php echo __('PackageQuantity'); ?></th>
		<th><?php echo __('PartNumber'); ?></th>
		<th><?php echo __('ProductGroup'); ?></th>
		<th><?php echo __('ProductTypeName'); ?></th>
		<th><?php echo __('Publisher'); ?></th>
		<th><?php echo __('Studio'); ?></th>
		<th><?php echo __('Title'); ?></th>
		<th><?php echo __('Warranty'); ?></th>
		<th><?php echo __('CustomerReviews'); ?></th>
		<th><?php echo __('DetailPageURL'); ?></th>
		<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	<?php foreach ($item['ItemAttribute'] as $itemAttribute): ?>
		<tr>
			<td><?php echo $itemAttribute['id']; ?></td>
			<td><?php echo $itemAttribute['item_id']; ?></td>
			<td><?php echo $itemAttribute['item_binding_id']; ?></td>
			<td><?php echo $itemAttribute['item_brand_id']; ?></td>
			<td><?php echo $itemAttribute['Color']; ?></td>
			<td><?php echo $itemAttribute['EAN']; ?></td>
			<td><?php echo $itemAttribute['Label']; ?></td>
			<td><?php echo $itemAttribute['LegalDisclaimer']; ?></td>
			<td><?php echo $itemAttribute['Manufacturer']; ?></td>
			<td><?php echo $itemAttribute['Model']; ?></td>
			<td><?php echo $itemAttribute['MPN']; ?></td>
			<td><?php echo $itemAttribute['OperatingSystem']; ?></td>
			<td><?php echo $itemAttribute['PackageQuantity']; ?></td>
			<td><?php echo $itemAttribute['PartNumber']; ?></td>
			<td><?php echo $itemAttribute['ProductGroup']; ?></td>
			<td><?php echo $itemAttribute['ProductTypeName']; ?></td>
			<td><?php echo $itemAttribute['Publisher']; ?></td>
			<td><?php echo $itemAttribute['Studio']; ?></td>
			<td><?php echo $itemAttribute['Title']; ?></td>
			<td><?php echo $itemAttribute['Warranty']; ?></td>
			<td><?php echo $itemAttribute['CustomerReviews']; ?></td>
			<td><?php echo $itemAttribute['DetailPageURL']; ?></td>
			<td class="actions">
				<?php echo $this->Html->link(__('View'), array('controller' => 'item_attributes', 'action' => 'view', $itemAttribute['id'])); ?>
				<?php echo $this->Html->link(__('Edit'), array('controller' => 'item_attributes', 'action' => 'edit', $itemAttribute['id'])); ?>
				<?php echo $this->Form->postLink(__('Delete'), array('controller' => 'item_attributes', 'action' => 'delete', $itemAttribute['id']), array(), __('Are you sure you want to delete # %s?', $itemAttribute['id'])); ?>
			</td>
		</tr>
	<?php endforeach; ?>
	</table>
<?php endif; ?>

	<div class="actions">
		<ul>
			<li><?php echo $this->Html->link(__('New Item Attribute'), array('controller' => 'item_attributes', 'action' => 'add')); ?> </li>
		</ul>
	</div>
</div>
<div class="related">
	<h3><?php echo __('Related Item Features'); ?></h3>
	<?php if (!empty($item['ItemFeature'])): ?>
	<table cellpadding = "0" cellspacing = "0">
	<tr>
		<th><?php echo __('Id'); ?></th>
		<th><?php echo __('Item Id'); ?></th>
		<th><?php echo __('Feature'); ?></th>
		<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	<?php foreach ($item['ItemFeature'] as $itemFeature): ?>
		<tr>
			<td><?php echo $itemFeature['id']; ?></td>
			<td><?php echo $itemFeature['item_id']; ?></td>
			<td><?php echo $itemFeature['Feature']; ?></td>
			<td class="actions">
				<?php echo $this->Html->link(__('View'), array('controller' => 'item_features', 'action' => 'view', $itemFeature['id'])); ?>
				<?php echo $this->Html->link(__('Edit'), array('controller' => 'item_features', 'action' => 'edit', $itemFeature['id'])); ?>
				<?php echo $this->Form->postLink(__('Delete'), array('controller' => 'item_features', 'action' => 'delete', $itemFeature['id']), array(), __('Are you sure you want to delete # %s?', $itemFeature['id'])); ?>
			</td>
		</tr>
	<?php endforeach; ?>
	</table>
<?php endif; ?>

	<div class="actions">
		<ul>
			<li><?php echo $this->Html->link(__('New Item Feature'), array('controller' => 'item_features', 'action' => 'add')); ?> </li>
		</ul>
	</div>
</div>
<div class="related">
	<h3><?php echo __('Related Item Images'); ?></h3>
	<?php if (!empty($item['ItemImage'])): ?>
	<table cellpadding = "0" cellspacing = "0">
	<tr>
		<th><?php echo __('Id'); ?></th>
		<th><?php echo __('Item Id'); ?></th>
		<th><?php echo __('SwatchImage'); ?></th>
		<th><?php echo __('SmallImage'); ?></th>
		<th><?php echo __('ThumbnailImage'); ?></th>
		<th><?php echo __('TinyImage'); ?></th>
		<th><?php echo __('MediumImage'); ?></th>
		<th><?php echo __('LargeImage'); ?></th>
		<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	<?php foreach ($item['ItemImage'] as $itemImage): ?>
		<tr>
			<td><?php echo $itemImage['id']; ?></td>
			<td><?php echo $itemImage['item_id']; ?></td>
			<td><?php echo $itemImage['SwatchImage']; ?></td>
			<td><?php echo $itemImage['SmallImage']; ?></td>
			<td><?php echo $itemImage['ThumbnailImage']; ?></td>
			<td><?php echo $itemImage['TinyImage']; ?></td>
			<td><?php echo $itemImage['MediumImage']; ?></td>
			<td><?php echo $itemImage['LargeImage']; ?></td>
			<td class="actions">
				<?php echo $this->Html->link(__('View'), array('controller' => 'item_images', 'action' => 'view', $itemImage['id'])); ?>
				<?php echo $this->Html->link(__('Edit'), array('controller' => 'item_images', 'action' => 'edit', $itemImage['id'])); ?>
				<?php echo $this->Form->postLink(__('Delete'), array('controller' => 'item_images', 'action' => 'delete', $itemImage['id']), array(), __('Are you sure you want to delete # %s?', $itemImage['id'])); ?>
			</td>
		</tr>
	<?php endforeach; ?>
	</table>
<?php endif; ?>

	<div class="actions">
		<ul>
			<li><?php echo $this->Html->link(__('New Item Image'), array('controller' => 'item_images', 'action' => 'add')); ?> </li>
		</ul>
	</div>
</div>
