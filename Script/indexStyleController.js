function clearLoginForm() {
    $("#nameTxt").val("");
    $("#passwordTxt").val("");
    $("#errorDiv").html("");
    $("#errorDiv-file").html("");
    $("#songNameTxt").val("");
    $("#artistTxt").val("");
    $("#fileToUpload").val("");
    $("#errorDiv").css("background-color","lightpink");
    $("#errorDiv-file").css("background-color","lightpink");
}

function outLoginForm() {
    $("#full-screen-div").css("display","none");
    clearLoginForm();
    $("#addSongField").fadeOut("fast");
    $("#login-form").fadeOut("fast");
}

$(function () {
    $("#buttonLogin").click(function () {
        $("#full-screen-div").css("display","block");
        clearLoginForm();
        $("#login-form").fadeIn("fast");
    });
    
    $("#buttonAddSong").click(function () {
        $("#full-screen-div").css("display","block");
        clearLoginForm();
        $("#addSongField").fadeIn("fast");
    });

    $("#full-screen-div").click(() => outLoginForm());

});



