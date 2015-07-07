/**
 * Created by root on 22.06.15.
 */
var myMap;
var myPlacemark;
var idPoint;
$("div#file_line").dropzone({ url: "/file/post" });
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
            center: [51.531579, 46.007785],
            zoom: 13
        });
        for(var i =0;i<data.length;i++) {
            var splitIn = data[i].coordinates.split(" ").map(Number);
            console.log("Координаты: "+splitIn);
            myPlacemark = new ymaps.Placemark(splitIn,{id:data[i].idPoint,balloonContent:data[i].address});
            myMap.geoObjects.add(myPlacemark);
            // Создание экземпляра элемента управления
            myPlacemark.events
                .add('click',function(e){
                    e.get('target').options.set('preset');
                    e.get('target').options.set('preset', 'twirl#redIcon');
                    var target = e.get('target');
                    idPoint= target.properties._K.id;
                    console.log(idPoint);
                });
        }
        myMap.controls.add(
            new ymaps.control.ZoomControl()
        );
    }
}
$('form[name=allData]').submit(function(){

    // Maybe show a loading indicator...

    $.post($(this).attr('action'), $(this).serialize(), function(res){
        // Do something with the response `res`
        console.log(res);
        // Don't forget to hide the loading indicator!
    });

    return false; // prevent default action

});

