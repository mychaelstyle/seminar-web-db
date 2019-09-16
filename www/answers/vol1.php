<?php
// 名前を入れた配列を宣言
$members = array(
    "夏",
    "塚原",
    "田代",
    "小川",
    "中島"
);
?><!DOCTYPE html lang="ja">
<html>
  <head>
    <title>Answer example vol.1</title>
  </head>
  <body>

    <h1>Answer example vol.1</h1>

    <table border="1">
    <thead>
      <tr>
        <th>名前</th>
      </tr>
    </thead>
    <tbody>
<?php foreach( $members as $name ) { ?>
      <?php if('中島' != $name ) { ?>
      <tr>
        <td><?php echo $name; ?></td>
      </tr>
      <?php } ?>
<?php } ?>
    </tbody>
    </table>

  </body>
</html>
