# Chatbot project work Fitstic 2019

Routing API: 
- servizi:              /api/servizi                restituisce tutti i servizi 
- servizio:             /api/servizi/id             restituisce il servizio singolo con quell'ID
- servizi dell'utente:  /api/servizi/user/id        restituisce i servizi dell'utente con quell'ID
- news:                 /api/news                   restituisce tutte le news
- news dell'utente:     /api/news/user/id           restituisce le news di quell'utente con quell'ID
- ultimo accesso:       /api/user/lastession/id     aggiorna il campo del db utenti "ultimo accesso" in base al datetime della chiamata API 
