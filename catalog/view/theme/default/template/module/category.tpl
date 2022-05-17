<div class="box">
  <?php // Вывел имя родительской категории ?>
  <div class="box-heading"><?php echo $category['name'] ?></div>
  <?php // Проверка на то, чтобы массив с категориями, которые на одном уровне, не был пуст ?>
  <?php if (count($category['children']) > 0) { ?>
    <div class="box-content">
        <ul class="box-category">
          <?php // Перебираем категории, которые на одном уровне ?>
          <?php foreach ($category['children'] as $child) { ?>
            <?php // Если Категория активна, выделяем её ?>
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
