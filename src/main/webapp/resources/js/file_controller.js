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

