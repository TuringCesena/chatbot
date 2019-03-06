$(document).ready( function(){
    $("#avatar").on("click", function(){
        $("#avatar").css("right", "-110%");
        $("#chat").css("right", "0");
    });

    $("#chat_top_close").on("click", function(){
        $("#chat").css("right", "-110%");
        $("#avatar").css("right", "0");
    });

    $("#btnLogin").on("click", function(){
        var display = $("#chat_login_form").css("display");
        if(display == "none"){
            $("#chat_login_form").css("display", "block");
            $("#btnLogin").html("&times;");
        }else{
            $("#chat_login_form").css("display", "none");
            $("#btnLogin").html("Login");
        }
    });

    //  CHANGE IMAGE AND BG COLOR
    // var face = document.createElement("img");


    
    /*
    JSON di request: api/chat
    {
        content: "user input", "user": "username"
    }
    JSON di risposta: api/chat
    {
        status: true/false,
        content: [
            {
                title: "title",
                "subtitle": "subtitle",
                "img": "http://..."
            },
            {
                ... come sopra
            }
        ]
    }
    */
    /*
    JSON di request: api/login
    {
        user: "username",
        "pswd": "password"
    }
    JSON di risposta: api/login
    {
        status: true/false
    }
    */

    var USER = "GUEST";
    //FUNZIONE DI CREAZIONE CARD DI RISPOSTA
    function chat_card(title, subtitle, img){
        var card = document.createElement("div");
        card.className += "chatbot_answer";
        var titleDiv = document.createElement("div");
        titleDiv.innerHTML = title;
        titleDiv.className += "chat_card_title";
        var subtitleDiv = document.createElement("div");
        subtitleDiv.innerHTML = subtitle;
        subtitleDiv.className += "chat_card_subtitle";
        var card_img = document.createElement("img");
        card_img.src = img;
        card_img.className += "chat_card_img";

        card.append(titleDiv);
        card.append(card_img);
        card.append(subtitleDiv);

        return card;
        
    }

    //FUNZIONI CAMBIO FACCIA / COLORE
    function jim_happy(){
        $("chat_top_face").css("background", "#06f");
        $("chat_top_face_img").src = "jim_happy.png";
    }
    function jim_sad(){
        $("chat_top_face").css("background", "#666");
        $("chat_top_face_img").src = "jim_sad.png";
    }
    function jim_angry(){
        $("chat_top_face").css("background", "#f00");
        $("chat_top_face_img").src = "jim_angry.png";
    }

    //AJAX alla chatbot API e inclusione messaggi api/chat
    $("#chat_inputs_submit").on("click", function(event){
        event.preventDefault();
        var user_msg = document.createElement("div");
        user_msg.className += "user_msg";
        user_msg.innerHTML = $("#chat_inputs_message").val();
        $("#chat_inputs_message").val("");
        $("#chat_messages").append(user_msg);
        fetch('http://turing2019.azurewebsites.net/api/chat', {
            method: "POST",
            // body: { "content": "\"" + user_msg.innerHTML + "\"", "user": "\"" + USER + "\""},
            body: "\"" + user_msg.innerHTML + "\"",
            headers:{ 'Content-Type': 'application/json' }
        }).then(function(response){
            return response.json();
        }).then(function(data){
            console.log(data);
            var answer = document.createElement("div");
            // foreach JSON.parse(data).content:
            // answer = chat_card(content.title, content.subtitle, content.img)
            answer.innerHTML = JSON.parse(data).result.fulfillment.speech;
            answer.className += "chatbot_answer";
            $("#chat_messages").append(answer);
            $("#chat_messages").scrollTop($("#chat_messages").prop("scrollHeight"));
        });
    });


    //LOGIN FORM AJAX
    $("#login_btn").on("click",function(event){
        event.preventDefault();
        $("#btnLogin").click();
        fetch("http://turing2019.azurewebsites.net/api/login", {
            method: "POST",
            body: {
                "user": "\"" + $("txtUser").val() + "\"",
                "pswd": "\"" + $("txtPswd").val() + "\""
            },
            headers:{ 'Content-Type': 'application/json' }
        }).then(function(response){
            if(/*JSON.parse(response).status ==*/ true){
                USER = $("txtUser").val();
                $("txtUser").val("");
                $("#btnLogin").click();
            }
        });
    });
});

