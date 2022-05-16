<div class="box">
  <div class="box-heading"><?php echo $category['name'] ?></div>
  <?php if (count($category['children']) > 0) { ?>
    <div class="box-content">
        <ul class="box-category">
          <?php foreach ($category['children'] as $child) { ?>
            <?php if ($child['category_id'] == $child_id) { ?>
            <li>
              <a href="<?php echo $child['href']; ?>" class="active"><?php echo $child['name']; ?></a>
            </li>
            <?php } else { ?>
            <li>
              <a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
            </li>
            <?php } ?>
          <?php } ?>
        </ul>
    </div>
  <?php } ?>
</div>
