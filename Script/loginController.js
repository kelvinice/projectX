function doLogout() {
    sessionStorage.clear();
    $("#buttonLogin").show();
    $("#buttonLogout").hide();
}

function doLogin() {
    $("#buttonLogin").hide();
    $("#buttonLogout").show();
}

function verifyUser(){
    if(sessionStorage.getItem('user_session')!= null){
        var session_id = sessionStorage.getItem('user_session');
        var ajaxVerify = $.ajax({
            url: "../Api/doVerifyUser.php",
            data: {
                data1: session_id
            },
            method : "POST",
        });

        ajaxVerify.done(function (result) {
            if(result.search("Error : ") != -1){
                alert(result);
                doLogout();
            }else{
                doLogin();
            }
        });
    }else{
        doLogout();
    }
}

$(function () {
    verifyUser();
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
                if(result == "fail"){
                    $("#errorDiv").html("Wrong Login Data");
                }else{
                    sessionStorage.setItem('user_session',result);
                    outLoginForm();
                    doLogin();
                }

            });
        }
    });
    
    $("#buttonLogout").click(() => doLogout());
    
});