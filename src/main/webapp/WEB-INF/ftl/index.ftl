<!DOCTYPE HTML>
<html>
<head>
    <title>PRINT4ALL</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="resources/css/bootstrap-theme.min.css"/>
    <link rel="stylesheet" href="resources/css/loginStyle.css"/>
    <link rel="stylesheet" href="resources/css/freelancer.css"/>
    <!-- Scripts -->
    <script src="resources/js/jquery-1.11.3.min.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/mainJs.js"></script>
    <script src="https://api-maps.yandex.ru/2.0-stable/?load=package.standard&lang=ru-RU"
            type="text/javascript"></script>
    <script>
        $(function () {
            $("#sidebar-wrapper").load("resources/imports/wrap_panel.html");
        });
        $(document).on('change', '.btn-file :file', function () {
            var input = $(this),
                    numFiles = input.get(0).files ? input.get(0).files.length : 1,
                    label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
            input.trigger('fileselect', [numFiles, label]);
        });

        $(document).ready(function () {
            $('.btn-file :file').on('fileselect', function (event, numFiles, label) {

                var input = $(this).parents('.input-group').find(':text'),
                        log = numFiles > 1 ? numFiles + ' files selected' : label;

                if (input.length) {
                    input.val(log);
                } else {
                    if (log) alert(log);
                }

            });
        });
        $('form[name=allData]').submit(function () {

            // Maybe show a loading indicator...

            $.post($(this).attr('action'), $(this).serialize(), function (res) {
                // Do something with the response `res`
                console.log(res);
                // Don't forget to hide the loading indicator!
            });

            return false; // prevent default action

        });
    </script>
</head>
<body>
<!-- Navigation -->
<nav class="navbar navbar-default navbar-fixed-top navbar-inverse">
    <div class="container">
        <div class="navbar-header page-scroll">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#page-top">PRINT4ALL</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li class="hidden">
                    <a href="#page-top"></a>
                </li>
                <li class="page-scroll">
                    <a href="#portfolio">Portfolio</a>
                </li>
                <li class="page-scroll">
                    <a href="#about">About</a>
                </li>
                <li class="page-scroll">
                    <a href="#contact">Contact</a>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>
<header>
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <ul class="list-inline steps">
                    <li role="presentation" class="vertical"><a class="step" data-toggle="collapse"
                                                                data-target="#maps_line" onclick="getMapData()">1. Выбор
                        места печати</a></li>
                    <li role="presentation" class="disabled vertical"><a class="disabled" data-toggle="collapse"
                                                                         data-target="#file_line">2. Выбор документа
                        печати</a></li>
                    <li role="presentation" class="disabled vertical"><a class="disabled" data-toggle="collapse"
                                                                         data-target="#params_line">3. Настройка
                        печати</a></li>
                    <li role="presentation" class="disabled vertical"><a class="disabled" data-toggle="collapse"
                                                                         data-target="#money_line">4. Оплата</a></li>
                    <li role="presentation" class="disabled vertical"><a class="disabled" data-toggle="collapse"
                                                                         data-target="#get_line">5. Статус заказа</a>
                    </li>
                    <li role="presentation" class="disabled vertical"><a class="disabled" href="#"> </a></li>
                </ul>
            </div>
        </div>
    </div>
</header>
<div id="page-content-wrapper">
    <div class="container-fluid">
        <div class="row" style="padding-top: 20px">
            <div class="col-lg-12">
                <form name="allData" method="post" action="sendNewPoint">
                    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                        <div class="row step" style="padding-top: 20px">
                            <div id="maps_line" class="step_in collapse">
                                <div id="map" style="width: 600px; height: 400px"></div>
                            </div>
                        </div>
                        <div class="row step" style="padding-top: 20px">

                            <div class="step_in collapse" id="file_line">
                                <div class="input-group">
                                    <span class="input-group-btn">
                                        <span class="btn btn-primary btn-file">
                                            Browse&hellip; <input type="file" multiple>
                                        </span>
                                    </span>
                                    <input type="text" class="form-control" readonly>
                                </div>
                            </div>
                        </div>
                        <div class="row step" style="padding-top: 20px">

                            <div id="params_line" class="step_in collapse">
                                Здесь параметры
                            </div>
                        </div>
                        <div class="row step" style="padding-top: 20px">

                            <div id="money_line" class="step_in collapse">
                                Способы оплаты
                            </div>
                        </div>
                        <div class="row step" style="padding-top: 20px">

                            <div id="get_line" class="step_in collapse">
                                ПОлучить код заказа и проверить статус.
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>