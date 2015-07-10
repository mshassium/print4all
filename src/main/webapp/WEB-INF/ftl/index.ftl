<!DOCTYPE HTML>
<html>
<head>
    <title>PRINT4ALL</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="resources/css/bootstrap-theme.min.css"/>
    <link rel="stylesheet" href="resources/css/freelancer.css"/>
    <link href="resources/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet"
          type="text/css">
    <!-- Scripts -->
    <script src="resources/js/jquery-1.11.3.min.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/mainJs.js"></script>
    <script src="https://api-maps.yandex.ru/2.0-stable/?load=package.standard&lang=ru-RU"
            type="text/javascript"></script>
    <script>
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
        })
        ;
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
<section id="steps">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2>Сделай 3 простых шага</h2>
                <hr class="star-primary">
            </div>
        </div>

        <div class="row">
            <div class="col-sm-1 text-center text_numer_step"><span style="font-size: 6em">1</span></div>
            <div class="col-sm-4 step-item text-center">
                <a href="#step1" class="step-link" data-toggle="modal" onclick="getMapData()">
                    <div class="caption">
                        <div class="caption-content">
                            <span class="glyphicon glyphicon-map-marker"> Выбери точку печати</span>
                        </div>
                    </div>
                    <img src="resources/img/map.png" class="step-img img-responsive" alt>
                </a>
            </div>
            <div class="col-sm-4 step-item">
                <a href="#step1" class="step-link">
                    <img src="resources/img/next.png" class="step-img next-step img-responsive" alt>
                </a>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4 step-item text-center"></div>
            <div class="col-sm-1 text-center text_numer_step"><span style="font-size: 6em">2</span></div>
            <div class="col-sm-4 step-item text-center">
                <a href="#step1" class="step-link" data-toggle="modal">
                    <div class="caption">
                        <div class="caption-content">
                            <span class="glyphicon glyphicon-download-alt"> Загрузи документ</span>
                        </div>
                    </div>
                    <img src="resources/img/document.png" class="step-img img-responsive" alt>
                </a>
            </div>
            <div class="col-sm-4 step-item text-center">
                <a href="#step1" class="step-link" data-toggle="modal">
                    <div class="caption">
                        <div class="caption-content">
                            <span class="glyphicon glyphicon-credit-card"> Оплати</span>
                        </div>
                    </div>
                    <img src="resources/img/pay.png" class="step-img img-responsive" alt>
                </a>
            </div>

            <div class="col-sm-1 text-center text_numer_step"><span style="font-size: 6em">3</span></div>
            <div class="col-sm-4 step-item">
                <a href="#step1" class="step-link">
                    <img src="resources/img/next2.png" class="step-img next-step img-responsive" alt>
                </a>
            </div>
        </div>

    <#--<div class="col-sm-12">-->
    <#--<ul class="list-inline steps">-->
    <#--<li role="presentation" class="vertical"><a class="step" data-toggle="collapse"-->
    <#--data-target="#maps_line" onclick="getMapData()">1. Выбор-->
    <#--места печати</a></li>-->
    <#--<li role="presentation" class="disabled vertical"><a class="disabled" data-toggle="collapse"-->
    <#--data-target="#file_line">2. Выбор документа-->
    <#--печати</a></li>-->
    <#--<li role="presentation" class="disabled vertical"><a class="disabled" data-toggle="collapse"-->
    <#--data-target="#params_line">3. Настройка-->
    <#--печати</a></li>-->
    <#--<li role="presentation" class="disabled vertical"><a class="disabled" data-toggle="collapse"-->
    <#--data-target="#money_line">4. Оплата</a></li>-->
    <#--<li role="presentation" class="disabled vertical"><a class="disabled" data-toggle="collapse"-->
    <#--data-target="#get_line">5. Статус заказа</a>-->
    <#--</li>-->
    <#--<li role="presentation" class="disabled vertical"><a class="disabled" href="#"> </a></li>-->
    <#--</ul>-->
    <#--</div>-->
    </div>
</section>
<#--<div id="page-content-wrapper">-->
<#--<div class="container-fluid">-->
<#--<div class="row" style="padding-top: 20px">-->
<#--<div class="col-lg-12">-->
<#--<form name="allData" method="post" action="sendNewPoint">-->
<#--<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">-->
<#--<div class="row step" style="padding-top: 20px">-->
<#--<div class="row step" style="padding-top: 20px">-->

<#--<div class="step_in collapse" id="file_line">-->
<#--<div class="input-group">-->
<#--<span class="input-group-btn">-->
<#--<span class="btn btn-primary btn-file">-->
<#--Browse&hellip; <input type="file" multiple>-->
<#--</span>-->
<#--</span>-->
<#--<input type="text" class="form-control" readonly>-->
<#--</div>-->
<#--</div>-->
<#--</div>-->
<#--<div class="row step" style="padding-top: 20px">-->

<#--<div id="params_line" class="step_in collapse">-->
<#--Здесь параметры-->
<#--</div>-->
<#--</div>-->
<#--<div class="row step" style="padding-top: 20px">-->

<#--<div id="money_line" class="step_in collapse">-->
<#--Способы оплаты-->
<#--</div>-->
<#--</div>-->
<#--<div class="row step" style="padding-top: 20px">-->

<#--<div id="get_line" class="step_in collapse">-->
<#--ПОлучить код заказа и проверить статус.-->
<#--</div>-->
<#--</div>-->
<#--</div>-->
<#--</form>-->
<#--</div>-->
<#--</div>-->
<#--</div>-->
<#--</div>-->
<div class="portfolio-modal modal fade" id="step1" tabindex="-1" role="dialog" aria-hidden="true"
     style="display: none;">
    <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl">
                    <i class="glyphicon glyphicon-remove"></i>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="modal-body">
                        <h2 class="text-modal-body">Выберите точку печати</h2>
                        <hr class="star-primary">
                    <#--<img src="resources/img/submarine.png" class="img-responsive img-centered" alt="">-->
                        <div id="map" class="step-map"></div>
                        <ul style="font-size: 16px">
                            <li>Выберите подходящую точку</li>
                            <li>Щелкните на соответствующем маркере</li>
                            <li>Нажмите кнопку Подтвердить</li>
                        </ul>
                        <button type="button" class="btn btn-success" data-dismiss="modal">Подтвердить</button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Закрыть</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>