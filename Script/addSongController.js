$(function () {
    $("#form-add-song").submit(function (e) {
        e.preventDefault();

        var songName = $("#songNameTxt").val();
        var artist = $("#artistTxt").val();

        if(songName == "" || songName == null){
            $("#errorDiv-file").html("Song Name Must be filled");
        }else if(artist == "" || artist == null){
            $("#errorDiv-file").html("Artist Must be filled");
        }else if($("#fileToUpload").prop('files').length > 0)
        {
            var file =  $("#fileToUpload").prop('files')[0];
            var formdata = new FormData();
            formdata.append("fileToUpload",file);
            formdata.append("songNameTxt",songName);
            formdata.append("artistTxt",artist);

            var ajaxUploadSong = $.ajax({
                url: "../Api/insertSong.php",
                method: "POST",
                processData: false,
                contentType: false,
                data: formdata
            });
            
            ajaxUploadSong.done(function (result) {
                if(result.search("Error : ") != -1){
                    $("#errorDiv-file").html(result);
                }else{
                    $("#errorDiv-file").css("background-color","lightgreen");
                    $("#errorDiv-file").html(result);
                }

            });


        }else{
            $("#errorDiv-file").html("No File");
        }


    });
    
});