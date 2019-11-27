<!DOCTYPE html lang="ja">
<html>
  <head>
    <title>PHP勉強会セッション２</title>
  </head>
  <body>
    <h1>何か入力して送信ボタンを押してください</h1>

    <form name="message-form" action="./index.php" method="POST">
      <p>
        <input type="text" name="message" value="" size="40">
        <input type="submit" value="送信">
      </p>
    </form>
    <hr>
    <div>
      ここにポストされたメッセージを表示してみましょう。
    </div>
  </body>
</html>
