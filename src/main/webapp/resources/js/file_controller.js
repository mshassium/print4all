/**
 * Created by root on 22.06.15.
 */
var idConfig;
var idPatch;
var countPage;
var payCheck;
function validateAllData() {
    return !!(idPoint != null && mapConfigChecked && colorConfig != null && idPatch != null && countPage != null && payCheck);

}
function sendTestData() {
    var checkData = validateAllData();
    if (checkData) {
        var data = {"id": idPoint, "config": idConfig, "patch": idPatch, "countPage": countPage, "payCheck": payCheck};
        $.ajax({
            url: "/sendTestData",
            method: "get",
            dataType: 'json',
            data: data,
            success:function(){
                alert("Data send.")
            },
            error:function(){
                alert("PIZDEC!!!! :)")
            }
        })
        ;
    }
    else {
        var elementById = document.getElementById("success_upload");
        elementById.hidden = true;
        var elementById = document.getElementById("error_upload");
        elementById.hidden = null;
    }
}

function setPatch() {
    var step2_img = document.getElementById("step2_image");
    step2_img.setAttribute("src", "resources/img/success.png");
}

//Загрузка дыннах на сервер
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
            success: function (response) {
                var elementById = document.getElementById("error_upload");
                elementById.hidden = true;
                var elementById = document.getElementById("success_upload");
                elementById.hidden = null;
                idPatch = response.fullPathToString;
                countPage = response.countPage
            },
            error: function (response) {
                var elementById = document.getElementById("success_upload");
                elementById.hidden = true;
                var elementById = document.getElementById("error_upload");
                elementById.hidden = null;
            }
        });

        return false;
    });
});
