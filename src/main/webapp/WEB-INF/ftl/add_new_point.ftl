<!DOCTYPE HTML>
<html>
<head>
    <title>PRINT4ALL</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!--[if lte IE 8]>
    <script src="resources/template1/js/ie/html5shiv.js"></script><![endif]-->
    <link rel="stylesheet" href="resources/template1/css/main.css"/>
    <!--[if lte IE 8]>
    <link rel="stylesheet" href="resources/template1/css/ie8.css"/><![endif]-->
    <!--[if lte IE 9]>
    <link rel="stylesheet" href="resources/template1/css/ie9.css"/><![endif]-->
</head>
<body>

<!-- Second -->
<section id="addNewPost" class="main">
    <div class="content dark style2">
        <div class="container">
            <div class="row">
                <div class="4u 12u(narrow)">
                    <section>
                        <h3>Добавить новую точку печати очень просто.<br/> Заполните форму ниже.<br/> У Вас все
                            получится!</h3>

                        <div class="container 75%">
                            <form method="post" action="sendNewPoint">
                                <div class="row 50%">
                                    <div class="7u 12u(mobile)">
                                        <label>Наименование организации</label>
                                        <select name="organisation_name">
                                        <#list nameOrganisation as item>
                                            <option>${item.name}</option>
                                        </#list>
                                        </select>
                                    </div>
                                </div>
                                <br/>
                                <label>Адрес (Россия, Саратов, Белоглинская улица, 17)</label>

                                <div class="row 50%">
                                    <div class="7u 12u(mobile)">
                                        <input name="address" type="text"/>
                                    </div>
                                </div>
                                <br/>
                                <label>Часы работы</label>

                                <div class="row 50%">
                                    <div class="3u 12u(mobile)"><input name="before_time" type="time" value="08:00"/>
                                    </div>
                                    <div class="3u 12u(mobile)"><input name="after_time" type="time" value="20:00"/>
                                    </div>
                                </div>
                                <br/>
                                <label>Список услуг</label>
                            <#list services as service>
                                <div class="row 50%">
                                    <div class="5u 9u(mobile)">
                                        <input type="text" value="${service.name}" readonly/>
                                    </div>
                                    <div class="2u 12u(mobile)">
                                        <input type="text" value="${service.price} руб."/>
                                    </div>
                                </div>
                            </#list>
                                <br/>
                                <label>Акции, скидки, спец предложения.</label>

                                <div class="row 50%">
                                    <div class="7u"><textarea name="message"></textarea></div>
                                </div>
                                <footer>
                                    <button type="submit" class="button scrolly">Сохранить точку</button>
                                </footer>
                            </form>
                        </div>

                    </section>
                </div>
                <div class="8u 12u(narrow)">
                    <div class="row">
                        <div class="6u">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Scripts -->
<script src="resources/template1/js/jquery.min.js"></script>
<script src="resources/template1/js/jquery.scrolly.min.js"></script>
<script src="resources/template1/js/skel.min.js"></script>
<script src="resources/template1/js/util.js"></script>
<!--[if lte IE 8]>
<script src="resources/template1/js/ie/respond.min.js"></script><![endif]-->
<script src="resources/template1/js/main.js"></script>

</body>
</html>