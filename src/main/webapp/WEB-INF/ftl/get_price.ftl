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
    <!-- Scripts -->
    <script src="resources/js/jquery-1.11.3.min.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script>
        $("#menu-toggle").click(function (e) {
            e.preventDefault();
            $("#wrapper").toggleClass("toggled");
        });
    </script>
    <script>
        $(function(){
            $("#sidebar-wrapper").load("resources/imports/wrap_panel.html");
        });
    </script>
</head>
<body>
<div id="wrapper">
    <div id="sidebar-wrapper"></div>
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
                        <form method="post" action="newPrice"> 
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>