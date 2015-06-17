<!DOCTYPE html>
<html>
<head>
    <title>Простая и эффективная выпадающая форма для регистрации | Материалы сайта RUSELLER.COM</title>
    <meta charset="utf-8">
    <script src="resources/js/jquery-1.11.3.min.js"></script>
    <script src="resources/js/loginJs.js"></script>
    <link rel="stylesheet" href="resources/css/loginStyle.css"/>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>

<body>

<header class="cf">
    <nav>
        <ul>
            <li id="login">
                <a id="login-trigger">
                    Войти <span>&#x25BC;</span>
                </a>
                <div id="login-content">
                    <form method="post" action="/login">
                        <fieldset id="inputs">
                            <input id="username" type="email" name="Email" placeholder="Ваш email адрес" required>
                            <input id="password" type="password" name="Password" placeholder="Пароль" required>
                        </fieldset>
                        <fieldset id="actions">
                            <input type="submit" id="submit" value="Войти">
                            <label><input type="checkbox" checked="checked" id="remember"> Запомнить меня</label>
                        </fieldset>
                    </form>
                </div>
            </li>
            <li id="signup">
                <a id="login-trigger">Регистрация<span>&#x25BC;</span></a>

                <div id="login-content">
                    <form method="post" action="/signup">
                        <fieldset id="inputs">
                            <input id="username" type="text" name="login" placeholder="Ваш login" required>
                            <input id="email" type="email" name="Email" placeholder="Ваш email адрес" required>
                            <input id="password" type="password" name="Password" placeholder="Пароль" required>
                        </fieldset>
                        <fieldset id="actions">
                            <input type="submit" id="submit" value="Зарегистрироваться">
                        </fieldset>
                    </form>
                </div>
            </li>
            <li>${username}</li>
        </ul>
    </nav>
</header>
</body>
</html>
