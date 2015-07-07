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
    <script src="https://api-maps.yandex.ru/2.0-stable/?load=package.standard&lang=ru-RU"
            type="text/javascript"></script>
    <script>
        $(function () {
            $("#sidebar-wrapper").load("resources/imports/wrap_panel.html");
        });
        $(document).on('change', '.btn-file :file', function() {
            var input = $(this),
                    numFiles = input.get(0).files ? input.get(0).files.length : 1,
                    label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
            input.trigger('fileselect', [numFiles, label]);
        });

        $(document).ready( function() {
            $('.btn-file :file').on('fileselect', function(event, numFiles, label) {

                var input = $(this).parents('.input-group').find(':text'),
                        log = numFiles > 1 ? numFiles + ' files selected' : label;

                if( input.length ) {
                    input.val(log);
                } else {
                    if( log ) alert(log);
                }

            });
        });
        $('form[name=allData]').submit(function(){

            // Maybe show a loading indicator...

            $.post($(this).attr('action'), $(this).serialize(), function(res){
                // Do something with the response `res`
                console.log(res);
                // Don't forget to hide the loading indicator!
            });

            return false; // prevent default action

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

                    <form name="allData" method="post" action="sendNewPoint">
                        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                            <div class="row step" style="padding-top: 20px">
                                <button class="btn btn-info glyphicon glyphicon-asterisk" type="button"
                                        data-toggle="collapse" data-target="#maps_line"
                                        onclick="getMapData()">
                                    Выберите ближайшую удобную точку печати.
                                </button>
                                <div id="maps_line" class="step_in collapse">
                                    <div id="map" style="width: 600px; height: 400px"></div>
                                </div>
                            </div>
                            <div class="row step" style="padding-top: 20px">
                                <button class="btn btn-info glyphicon glyphicon-asterisk" type="button"
                                        data-toggle="collapse" data-target="#file_line">
                                    Загрузите файл
                                </button>
                                <div class="step_in collapse" id="file_line"><div class="input-group">
                                    <span class="input-group-btn">
                                        <span class="btn btn-primary btn-file">
                                            Browse&hellip; <input type="file" multiple>
                                        </span>
                                    </span>
                                    <input type="text" class="form-control" readonly>
                                </div></div>
                            </div>
                            <div class="row step" style="padding-top: 20px">
                                <button class="btn btn-info glyphicon glyphicon-asterisk" type="button"
                                        data-toggle="collapse" data-target="#params_line">
                                    Настройте параметры печати
                                </button>
                                <div id="params_line" class="step_in collapse">
                                    Здесь параметры
                                </div>
                            </div>
                            <div class="row step" style="padding-top: 20px">
                                <button class="btn btn-info glyphicon glyphicon-asterisk" type="button"
                                        data-toggle="collapse" data-target="#money_line">
                                    Выберите способ оплаты
                                </button>
                                <div id="money_line" class="step_in collapse">
                                    Способы оплаты
                                </div>
                            </div>
                            <div class="row step" style="padding-top: 20px">
                                <button class="btn btn-info glyphicon glyphicon-asterisk" type="submit"
                                        data-toggle="collapse" data-target="#get_line">
                                    Забирайте
                                </button>
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
</div>
</div>
</div>
</div>
</body>
</html>