<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/html">
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
    <link href="https://gitcdn.github.io/bootstrap-toggle/2.2.0/css/bootstrap-toggle.min.css" rel="stylesheet">
    <!-- Scripts -->
    <script src="resources/js/jquery-1.11.3.min.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/file_controller.js"></script>
    <script src="resources/js/map_controller.js"></script>
    <script src="http://api-maps.yandex.ru/2.0/?load=package.standard,package.clusters&lang=ru-RU"
            type="text/javascript"></script>
    <script src="https://gitcdn.github.io/bootstrap-toggle/2.2.0/js/bootstrap-toggle.min.js"></script>
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
                    <img src="resources/img/map.png" id="step1_image" class="step-img img-responsive" alt>
                </a>
            </div>
            <div class="col-sm-4 step-item">
                <img src="resources/img/next.png" class="step-img next-step img-responsive" alt>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4 step-item text-center"></div>
            <div class="col-sm-1 text-center text_numer_step"><span style="font-size: 6em">2</span></div>
            <div class="col-sm-4 step-item text-center">
                <a href="#step2" class="step-link" data-toggle="modal">
                    <div class="caption">
                        <div class="caption-content">
                            <span class="glyphicon glyphicon-download-alt"> Загрузи документ</span>
                        </div>
                    </div>
                    <img src="resources/img/document.png" class="step-img img-responsive" alt>
                </a>
            </div>
            <div class="col-sm-4 step-item text-center">
                <a href="#step3" class="step-link" data-toggle="modal">
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
                <img src="resources/img/next2.png" class="step-img next-step img-responsive" alt>
            </div>
        </div>
    </div>
    <button class="btn btn-success" onclick="sendTestData()">Отправить данные</button>
</section>

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
                <div class="col-lg-8  model-line">
                    <div class="modal-body">
                        <h2 class="text-modal-body">Выберите точку печати</h2>
                        <hr class="star-primary">
                        <div id="map" class="step-map"></div>
                        <ul style="font-size: 16px">
                            <li>Выберите подходящую точку</li>
                            <li>Щелкните на соответствующем маркере</li>
                            <li>Нажмите кнопку Подтвердить</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="modal-body">
                        <h2 class="text-modal-body">Цвет</h2>
                        <hr class="star-primary">
                        <h5>Если в выбранной точке нет возможности цветной печати,</br> то автоматически будет выбрана
                            Черно-белая.</h5>

                        <div id="color_setting">
                            <input onchange="setExampleImage()" type="checkbox" checked data-toggle="toggle"
                                   data-onstyle="warning"
                                   data-off="Черно-белая" data-on="Цветная" id="toggle_setting_color">
                        </div>
                        </br>
                        <div id="image_setting">
                            <img src="resources/img/color_image.jpg" id="example_img">
                        </div>
                    </div>
                </div>
            </div>

            <button type="button" onclick="submitMapData()" class="btn btn-success"
                    data-dismiss="modal">Подтвердить</button>
            <button type="button"  onclick="cancelMapData()" class="btn btn-danger"
                    data-dismiss="modal">Закрыть</button>
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade" id="step2" tabindex="-1" role="dialog" aria-hidden="true"
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
                        <h2 class="text-modal-body">Загрузите файл</h2>
                        <hr class="star-primary">
                        <input id="documentId" type="file" title="Search for a file to add">
                        <button type="button" class="btn btn-success" onclick="setPatch()" data-dismiss="modal">
                            Подтвердить
                        </button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Закрыть</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade" id="step3" tabindex="-1" role="dialog" aria-hidden="true"
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
                    <div class="modal-body centered">
                        <h2 class="text-modal-body">Оплатите заказ</h2>
                        <hr class="star-primary">
                        <iframe frameborder="0" allowtransparency="true" scrolling="no"
                                src="https://money.yandex.ru/embed/shop.xml?account=410013301112923&quickpay=shop&payment-type-choice=on&writer=seller&targets=%D0%9E%D0%BF%D0%BB%D0%B0%D1%82%D0%B0+%D1%83%D1%81%D0%BB%D1%83%D0%B3%D0%B8%2C+%D0%BF%D1%80%D0%B5%D0%B4%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D1%8F%D0%B5%D0%BC%D0%B0%D1%8F+%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%BE%D0%BC+PRINT4ALL.&targets-hint=&default-sum=&button-text=01&fio=on&mail=on&successURL="
                                width="100%" height="213" style="padding-left: 130px;"></iframe>
                        <div class="row">
                            <div class="col-lg-2 col-lg-offset-10">
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Закрыть</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>