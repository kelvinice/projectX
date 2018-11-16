function clearLoginForm() {
    $("#nameTxt").val("");
    $("#passwordTxt").val("");
    $("#errorDiv").html("");
}

function outLoginForm() {
    $("#full-screen-div").css("display","none");
    clearLoginForm();
    $("#login-form").fadeOut("fast");
}

$(function () {
    $("#buttonLogin").click(function () {
        $("#full-screen-div").css("display","block");
        clearLoginForm();
        $("#login-form").fadeIn("fast");
    });

    $("#full-screen-div").click(() => outLoginForm());



});



