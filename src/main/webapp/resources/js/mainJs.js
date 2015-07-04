/**
 * Created by root on 22.06.15.
 */
var myMap;
var myPlacemark;
function getMapData(myMap) {
    var data;
    $.ajax({
        url: "/getAllMapData",
        dataType: 'json',
        data: data,
        success: function (data) {
            ymaps.ready(init(data));
            console.log("Data: " + data);
        }
    })
    ;
}
;
function init(data) {
    if (myMap == null) {
        myMap = new ymaps.Map('map', {
            center: [51.563806, 45.992036],
            zoom: 9
        });
        for(var i =0;i<data.length;i++) {
            var splitIn = data[i].split(" ").map(Number);
            console.log("Координаты: "+splitIn);
            myPlacemark = new ymaps.Placemark(splitIn);
            myMap.geoObjects.add(myPlacemark);
            // Создание экземпляра элемента управления
            myPlacemark.events
                .add('mouseenter', function (e) {
                    // Ссылку на объект, вызвавший событие,
                    // можно получить из поля 'target'.
                    e.get('target').options.set('preset', 'twirl#greenIcon');
                })
                .add('mouseleave', function (e) {
                    e.get('target').options.unset('preset');
                });
        }
        myMap.controls.add(
            new ymaps.control.ZoomControl()
        );
    }
}
