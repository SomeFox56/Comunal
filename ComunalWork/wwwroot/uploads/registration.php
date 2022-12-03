<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="css/registration.css">
</head>
<body>
<div class="reg_title">
    <p>Регистрация</p>
</div>
<form method="post" action="actions/registration.php">
    <input type="text" placeholder="Имя" name="first_name">
    <input type="text" placeholder="Фамилия" name="last_name">

    <input type="date" placeholder="Дата рождения" name="born_date">
    <select name="gender" required>

        <option value="" selected disabled hidden>Выберите пол</option>
        <option value="Мужской">Мужской</option>
        <option value="Женский">Женский</option>
    </select>
    <input type="text" placeholder="Почта" name="email">
    <input type="password" placeholder="Пароль" name="password">
    <div class="agreement">
        <div class="checkbox" >
        <input type="checkbox" id="checkbox-id" />
        <label for="checkbox-id"></label>
        </div>
        <p>Принимаю условия <a>Пользовательского соглашения</a></p>
    </div>
    <a href="">
    <input type="submit" class="submit_btn" value="Зарегистрироваться">
    </a>
</form>

<?php
include("snippets/footer.php")
?>
</body>
</html>