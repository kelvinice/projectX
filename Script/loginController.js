$(function () {
    $("#buttonSubmitLogin").click(function (e) {

        var username = $("#nameTxt").val();
        var password = $("#passwordTxt").val();
        if(username == "" || username == null){
            $("#errorDiv").html("Username Must be filled");
        }else if(password == "" || password == null){
            $("#errorDiv").html("Password Must be filled");
        }else{
            $("#errorDiv").html("Loggin in...");
            var ajaxLogin = $.ajax({
                url: "../Api/doLogin.php",
                method: "POST",
                data: {
                    data1: username,
                    data2: password
                }
            });

            ajaxLogin.done(function (result) {
                outLoginForm();

            });
        }
    });
});