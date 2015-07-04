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
    <!-- Scripts -->
    <script src="resources/js/jquery-1.11.3.min.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/mainJs.js"></script>
    <script src="https://api-maps.yandex.ru/2.0-stable/?load=package.standard&lang=ru-RU" type="text/javascript"> </script>
    <script>
        $(function () {
            $("#sidebar-wrapper").load("resources/imports/wrap_panel.html");
        });
    </script>
</head>
<body>
<div id="wrapper">
    <div id="sidebar-wrapper"></div>
    <div id="page-content-wrapper">
        <div class="container-fluid">
            <div class="row" style="padding-top: 20px">
                <div class="col-lg-12">
                    <div class="well">
                        <form method="post" action="sendNewPoint">
                            <div class="row" style="padding-top: 20px">
                                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                    <div class="panel panel-default">
                                        <div class="panel-heading" role="tab" id="headingOne">
                                            <h4 class="panel-title">
                                                <a class="collapsed glyphicon glyphicon-asterisk" role="button" data-toggle="collapse" data-parent="#accordion"
                                                   href="#maps_line" aria-expanded="false" aria-controls="collapseOne" onclick="getMapData()">
                                                    Выберите ближайшую удобную точку печати.
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="maps_line" class="panel-collapse collapse in" role="tabpanel"
                                             aria-labelledby="maps">
                                            <div class="panel-body">
                                                <div id="map" style="width: 600px; height: 400px"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading" role="tab" id="headingTwo">
                                            <h4 class="panel-title">
                                                <a class="glyphicon glyphicon-asterisk collapsed" role="button" data-toggle="collapse"
                                                   data-parent="#accordion" href="#file_line" aria-expanded="false"
                                                   aria-controls="collapseTwo">
                                                    Загрузите файл
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="file_line" class="panel-collapse collapse" role="tabpanel"
                                             aria-labelledby="headingTwo">
                                            <div class="panel-body">
                                                Файл
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading" role="tab" id="headingThree">
                                            <h4 class="panel-title">
                                                <a class="glyphicon glyphicon-asterisk collapsed" role="button" data-toggle="collapse"
                                                   data-parent="#accordion" href="#params_line" aria-expanded="false"
                                                   aria-controls="collapseThree">
                                                    Настройте параметры печати
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="params_line" class="panel-collapse collapse" role="tabpanel"
                                             aria-labelledby="headingThree">
                                            <div class="panel-body">
                                                Здесь параметры
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading" role="tab" id="headingThree">
                                            <h4 class="panel-title">
                                                <a class="glyphicon glyphicon-asterisk collapsed" role="button" data-toggle="collapse"
                                                   data-parent="#accordion" href="#money_line" aria-expanded="false"
                                                   aria-controls="collapseThree">
                                                    Выберите способ оплаты
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="money_line" class="panel-collapse collapse" role="tabpanel"
                                             aria-labelledby="headingThree">
                                            <div class="panel-body">
                                                Способы оплаты
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading" role="tab" id="headingThree">
                                            <h4 class="panel-title">
                                                <a class="glyphicon glyphicon-asterisk collapsed" role="button" data-toggle="collapse"
                                                   data-parent="#accordion" href="#get_line" aria-expanded="false"
                                                   aria-controls="collapseThree">
                                                    Забирайте
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="get_line" class="panel-collapse collapse" role="tabpanel"
                                             aria-labelledby="headingThree">
                                            <div class="panel-body">
                                                ПОлучить код заказа и проверить статус.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>