$(document).ready(function(){
    var avatar = document.getElementById("avatar");
    avatar.addEventListener("click", function(){
        avatar.style.right = "-50%";
        document.getElementById("chat").style.right = "0";
    });

    var chat_close = document.getElementById("chat_head_close");
    chat_close.addEventListener("click", function(){
        document.getElementById("chat").style.right = "-100%";
        avatar.style.right = "0";
    });
});