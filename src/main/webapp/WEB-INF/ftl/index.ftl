<!DOCTYPE html>
<html>
<head>
    <title>Простая и эффективная выпадающая форма для регистрации | Материалы сайта RUSELLER.COM</title>
    <meta charset="utf-8">
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <script src="resources/js/jquery-1.11.3.min.js"></script>
    <script src="resources/js/loginJs.js"></script>
    <link rel="stylesheet" href="resources/css/loginStyle.css"/>
</head>

<body>

<header class="cf">
    <nav>
        <ul>
            <li id="login">
                <a id="login-trigger" href="#">
                    Войти <span>&#x25BC;</span>
                </a>

                <div id="login-content">
                    <form>
                        <fieldset id="inputs">
                            <input id="username" type="email" name="Email" placeholder="Ваш email адрес" required>
                            <input id="password" type="password" name="Password" placeholder="Пароль" required>
                        </fieldset>
                        <fieldset id="actions">
                            <input type="submit" id="submit" value="Войти">
                            <label><input type="checkbox" checked="checked"> Запомнить меня</label>
                        </fieldset>
                    </form>
                </div>
            </li>
            <li id="signup">
                <a href="">Регистрация</a>
            </li>
        </ul>
    </nav>
</header>
</body>
</html>
