/**
 * Created by rakh1213 on 17.07.2015.
 */
var myMap;
var myPlacemark;
var idPoint;
var mapConfigChecked = false;
var colorConfig = 0;
function getMapData(myMap) {
    var data;
    $.ajax({
        url: "/getAllMapData",
        dataType: 'json',
        data: data,
        success: function (data) {
            ymaps.ready(init(data));
        }
    })
    ;
}
function clearAllTarget() {
    myMap.geoObjects.each(function (geoObject) {
        geoObject.options.unset('preset');
    });
}
function init(data) {
    if (myMap == null) {
        myMap = new ymaps.Map('map', {
            center: [51.531579, 46.007785],
            zoom: 13
        });
        for (var i = 0; i < data.length; i++) {
            var splitIn = data[i].coordinates.split(" ").map(Number);
            console.log("Координаты: " + splitIn);
            myPlacemark = new ymaps.Placemark(splitIn, {id: data[i].idPoint, balloonContent: data[i].address});
            // Создание экземпляра элемента управления
            myPlacemark.events
                .add('click', function (e) {
                    clearAllTarget();
                    var currentPoint = e.get('target');
                    currentPoint.options.set('preset', 'twirl#redIcon');
                    idPoint = currentPoint.properties._K.id;
                });

            myMap.geoObjects.add(myPlacemark);
        }
        //-------------------------------------------------------------------------------
        myPlacemark = new ymaps.Placemark([51.531579, 46.007785], {id: 1});
        myPlacemark.events
            .add('click', function (e) {
                clearAllTarget();
                var currentPoint = e.get('target');
                currentPoint.options.set('preset', 'twirl#redIcon');
                idPoint = currentPoint.properties._K.id;
            });
        myMap.geoObjects.add(myPlacemark);
        //-------------------------------------------------------------------------------
        myPlacemark = new ymaps.Placemark([51.532679, 46.007785], {id: 1});
        myPlacemark.events
            .add('click', function (e) {
                clearAllTarget();
                var currentPoint = e.get('target');
                currentPoint.options.set('preset', 'twirl#redIcon');
                idPoint = currentPoint.properties._K.id;
            });
        myMap.geoObjects.add(myPlacemark);
        //-------------------------------------------------------------------------------

        myMap.controls.add(new ymaps.control.ZoomControl());
    }
}

function setExampleImage() {
    var example_img = document.getElementById("example_img");
    $('#toggle_setting_color').change(function () {
        var prop = $(this).prop('checked');
        if (!prop) {
            example_img.setAttribute("src", "resources/img/black_image.jpeg");
            colorConfig = 0;
        }
        else {
            example_img.setAttribute("src", "resources/img/color_image.jpg")
            colorConfig = 1;
        }
    })
}

function submitMapData() {
    mapConfigChecked = true;
    var step1_img = document.getElementById("step1_image");
    step1_img.setAttribute("src", "resources/img/success.png");
}

function cancelMapData(){
    mapConfigChecked = false;
    var step1_img = document.getElementById("step1_image");
    step1_img.setAttribute("src", "resources/img/map.png");
}
