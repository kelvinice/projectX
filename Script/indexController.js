$(function () {

    function fetchData(test){
        //console.log(test);

        var ajaxGetSong = $.ajax({
            url: "../Api/getSongs.php",
            method: "POST",
            data: {
                data1: offset,
                data2: searchKey
            }
        });

        var loadImg = document.createElement('div');
        loadImg.id='image-load';
        document.body.appendChild(loadImg);

        ajaxGetSong.done(
            function (result) {
                var tempHasil = JSON.parse(result);
                if(tempHasil.length==0 && isFirst)$("#playlist-body").html(""); //barbar
                for(var i=0;i<tempHasil.length;i++){
                    var name = tempHasil[i]["name"];
                    var n = name.search(searchKey);
                    if(n!=-1 && searchKey != ''){
                        name = name.substring(0, n)+'<span class="yellow-span">'+searchKey+'</span>'+name.substring(n+searchKey.length, name.length);
                    }
                    var path = tempHasil[i]["path"];
                    var n = path.search(searchKey);
                    if(n!=-1 && searchKey != ''){
                        path = path.substring(0, n)+'<span class="yellow-span">'+searchKey+'</span>'+path.substring(n+searchKey.length, path.length);
                    }
                    if(isFirst){
                        $("#playlist-body").html(
                            '<div class="playlist-body-content black-ground">'+
                            '<div class="playlist-body-content-contents">'+tempHasil[i]["id"]+'</div>'+
                            '<div class="playlist-body-content-contents">'+name+'</div>'+
                            '<div class="playlist-body-content-contents">'+path+'</div>'+
                            '<div class="playlist-body-content-contents"><div class="play-div" value="'+tempHasil[i]["id"]+'"></div></div>'+
                            "</div>"
                        );
                    }
                    else if(iteratorToogle){
                        $("#playlist-body").append(
                            '<div class="playlist-body-content black-ground">'+
                            '<div class="playlist-body-content-contents">'+tempHasil[i]["id"]+'</div>'+
                            '<div class="playlist-body-content-contents">'+name+'</div>'+
                            '<div class="playlist-body-content-contents">'+path+'</div>'+
                            '<div class="playlist-body-content-contents"><div class="play-div" value="'+tempHasil[i]["id"]+'"></div></div>'+
                            "</div>"
                        );
                    }else{
                        $("#playlist-body").append(
                            '<div class="playlist-body-content gray-ground">'+
                            '<div class="playlist-body-content-contents">'+tempHasil[i]["id"]+'</div>'+
                            '<div class="playlist-body-content-contents">'+name+'</div>'+
                            '<div class="playlist-body-content-contents">'+path+'</div>'+
                            '<div class="playlist-body-content-contents"><div class="play-div" value="'+tempHasil[i]["id"]+'"></div></div>'+
                            "</div>"
                        );
                    }
                    iteratorToogle=!iteratorToogle;
                    isFirst=false;
                }
                offset++;
                loadImg.remove();
                $(".play-div").click(function (event) {
                    $("#foot-bar").animate({bottom: "0%"}, "fast");
                    audio = $("#myAudio")[0];
                    audio.src = "../Public/Songs/"+$(event.target).attr('value')+".mp3";
                    audio.play();
                });
            }
        );

    };

    $("#fetchButton").click(()=> fetchData(offset));

    $("#stop-div").click(function () {
        $("#foot-bar").animate({bottom: "-10%"}, "fast");
        audio = $("#myAudio")[0];
        audio.currentTime = 0;
        audio.pause();
    });

    $("#searchTxt").keyup(function () {
        searchKey = $("#searchTxt").val();
        offset=0;
        isFirst = true;
        iteratorToogle = true;
        fetchData(offset);
    });

    $(window).scroll(function() {
        if($(window).scrollTop() + $(window).height() > $(document).height() - 100) {
            fetchData(offset);
        }
    });
    fetchData(offset);

    $("#filter-form").submit(function (e) {
        e.preventDefault();
        searchKey = $("#searchTxt").val();
        $("#playlist-body").html("");
        offset=0;
        fetchData(offset);
    });

    $("#buttonLogin").click(function () {
        $("#full-screen-div").css("display","block");
        $("#login-form").css("display","block");
    });

    $("#full-screen-div").click(function () {
        $("#full-screen-div").css("display","none");
        $("#login-form").css("display","none");
        $("#nameTxt").val("");
        $("#passwordTxt").val("");
        $("#errorDiv").html("");
    });

    $("#login-form").submit(function (e) {
        e.preventDefault();

        var username = $("#nameTxt").val();
        var password = $("#passwordTxt").val();
        if(username == "" || username == null){
            $("#errorDiv").html("Username Must be filled");
        }else if(password == "" || password == null){
            $("#errorDiv").html("Password Must be filled");
        }else{
            $("#errorDiv").html("Loggin in...");

        }
    });

});

var searchKey="";
var offset=0;
var iteratorToogle=true;
var isFirst=true;
var audio;