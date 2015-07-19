/**
 * Created by root on 22.06.15.
 */
var idConfig;
var idPatch;
var countPage;
var payCheck;

function sendTestData() {
    var data = {"id": idPoint, "config": 0, "patch": idPatch, "countPage": 10, "payCheck": true};
    $.ajax({
        url: "/sendTestData",
        method: "get",
        dataType: 'json',
        data: data
    })
    ;
}

function setPatch(patch) {
    var elementById = document.getElementById("documentId");
    var listFiles = elementById.files;
    var listFile = listFiles[0];
    var name = listFile.name;
    idPatch = name;
}

//function uploadFile() {
//    var elementsByName = document.getElementsByName("file");
//    var file = elementsByName[0].files[0];
//    $.ajax({
//        url: "/uploadFile",
//        method: "post",
//        data: file,
//        contentType:"multipart/form-data",
//        success: function () {
//            alert("1")
//        },
//        error: function () {
//            alert("2")
//        }
//    });
//}

$(document).ready(function () {
    $("#sendFile").submit(function (event) {
        var form = document.getElementById("sendFile");
        var formData = new FormData(form);
        $.ajax({
            url: '/uploadFile',
            type: 'POST',
            data: formData,
            async: false,
            cache: false,
            contentType: false,
            processData: false,
            charset: "utf-8",
            success: function () {
                var elementById = document.getElementById("error_upload");
                elementById.hidden = true;
                var elementById = document.getElementById("success_upload");
                elementById.hidden = null;
            },
            error: function () {
                var elementById = document.getElementById("success_upload");
                elementById.hidden = true;
                var elementById = document.getElementById("error_upload");
                elementById.hidden = null;
            }
        });

        return false;
    });
});
