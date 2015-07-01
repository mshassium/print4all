<!DOCTYPE HTML>
<html>
<head>
    <title>PRINT4ALL</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="resources/css/bootstrap-theme.min.css"/>
    <link rel="stylesheet" href="resources/css/loginStyle.css"/>
</head>
<body>
<div id="wrapper">
    <div id="sidebar-wrapper">
        <ul class="sidebar-nav">
            <li class="sidebar-brand">
                <a href="#">
                    Start Bootstrap
                </a>
            </li>
            <li>
                <a href="#">Dashboard</a>
            </li>
            <li>
                <a href="#">Shortcuts</a>
            </li>
            <li>
                <a href="#">Overview</a>
            </li>
            <li>
                <a href="#">Events</a>
            </li>
            <li>
                <a href="#">About</a>
            </li>
            <li>
                <a href="#">Services</a>
            </li>
            <li>
                <a href="#">Contact</a>
            </li>
        </ul>
    </div>
    <div id="page-content-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <a href="#menu-toggle" class="btn btn-default" id="menu-toggle">Toggle Menu</a>
                </div>
            </div>
            <div class="row" style="padding-top: 20px">
                <div class="col-lg-12">
                    <div class="well">
                        <form method="post" action="sendNewPoint">
                            <div class="row" style="padding-top: 20px">
                                <div class="col-lg-12">
                                    <label class="label label-info">Наименование организации</label>
                                    <br/>
                                    <select class="form-control focus" name="organisation_name">
                                    <#list nameOrganisation as item>
                                        <option>${item.name}</option>
                                    </#list>
                                    </select>
                                </div>
                            </div>
                            <div class="row" style="padding-top: 20px">
                                <div class="col-lg-12">
                                    <label class="label label-info">Адрес (Россия, Саратов, Белоглинская улица,
                                        17)</label>
                                    <br/>
                                    <input class="input-sm form-control" name="address" type="text"/>
                                </div>
                            </div>
                            <br/>
                            <label class="label label-info">Время работы</label>
                            <br/>

                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-time">ОТ</span>
                                        </span>
                                        <input class="form-control" name="before_time" type="time" value="08:00"/>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                          <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-time">ДО</span>
                                          </span>
                                        <input class="form-control" name="after_time" type="time" value="20:00"/>
                                    </div>
                                </div>
                            </div>
                            <br/>

                            <label class="label label-info">Список услуг</label>
                        <#list services as service>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="input-group">
                                        <span class="input-group-btn">
                                            <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-minus"></span></button>
                                        </span>
                                        <input class="form-control" type="text" value="${service.name}"/>
                                    </div>
                                    <!-- /input-group -->
                                </div>
                                <!-- /.col-lg-6 -->
                                <div class="col-lg-6">
                                    <div class="input-group">
                                        <input class="form-control" type="text" value="${service.price} руб."/>
                                        <span class="input-group-btn">
                                            <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-plus"></span></button>
                                        </span>
                                    </div>
                                    <!-- /input-group -->
                                </div>
                                <!-- /.col-lg-6 -->
                            </div>
                            <!-- /.row -->
                        </#list>
                            <br/>
                            <label class="label label-info">Акции, скидки, спец предложения.</label>

                            <div>
                                <textarea class="form-control text" name="message"></textarea>
                            </div>
                            <br/>
                            <footer>
                                <button type="submit" class="btn btn-success">Сохранить точку</button>
                            </footer>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Scripts -->
<script src="resources/js/jquery-1.11.3.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script>
    $("#menu-toggle").click(function (e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
</script>
</body>
</html>