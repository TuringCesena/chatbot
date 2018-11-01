'''
link documentazione 
http://www.mysqltutorial.org/python-mysql-query/
https://dev.mysql.com/doc/connector-python/en/connector-python-example-connecting.html
https://stackoverflow.com/questions/44916637/python-typeerror-must-be-str-not-int
'''


import flask
from mysql.connector import (connection)


#apertura connessione
cnx = connection.MySQLConnection(user='root', password='', host='127.0.0.1', database='chatbot_services')
cursor = cnx.cursor(dictionary=True)


#__name__ è una variabile python che prende il nome dello script del file stesso
app = flask.Flask(__name__)




######################################################################


#
# INDEX
# visalizzazione base digitando soltanto localhost:5000
#
@app.route('/')
def index():
    return("rest api chatbot")



#
# GET
# elenco di tutti gli elementi
#
@app.route("/api/users", methods=["GET"])                           #route indica l'url su cui verra reindirizzata la chiamata
def get_users():
    query = ("SELECT * from users")
    cursor.execute(query)
    rows = cursor.fetchall()
    return flask.jsonify({"users": rows})                         #tutti gli elementi vengono presi e convertiti in array json



#
# GET
# restutisce solo un elemento con id corrispondente al parametro
#
@app.route("/api/users/<int:id>", methods=["GET"])                  #con la sintassi <tipodato:parametro> indico nel route un parametro
def get_user(id):
    query = ("SELECT * from users where pk_utente = "+str(id)+";")
    cursor.execute(query)
    rows = cursor.fetchall()
    if len(rows) == 0:
        return "Errore 404"
    return flask.jsonify({"user": rows[0]})



#
# POST
# creazione di un elemento.
# è necessario installare postman e generare una richiesta post poi impostare diversi campi
# nell'header: nome -> Content-type
#              value -> application/json
# nel body: {"nome": "stefano2", "descrizione": "prova2"}
# 
@app.route('/api/items', methods=['POST'])
def create_create():
    if not flask.request.json or not 'nome' in flask.request.json:  #se non esiste la richiesta o il campo nome ritorna 400 bad request
        return("Errore 400")
    item = {
        'id': items[-1]['id'] + 1,                                  #prende l'id dell'ultimo elemento e incrementa il valore di 1
        'nome': flask.request.json['nome'],                         #importa il nome dal json del body
        'descrizione': flask.request.json.get('descrizione', ""),   #???
        'presenteStoreOnline': False,
        'categoria':'0-100 anni',
        'dataRilascio':'21/08/2018',
        'presenteStoreOnline': True,
        'dataInserimento':'21/08/2018'
    }
    items.append(item)
    return flask.jsonify({'item': item}), 201



if __name__ == "__main__":                                          #allo script è concesso andare in esecuzione solo se viene lanciato dall'utente e non incluso come libreria in un altro file (import)
   app.run(debug=True)                                              #debug = true consente di mostrare sulla console l richieste ricevute





'''
sintassi del for contratto del python:
data una lista con degli elementi posso scorrere con il for (equivalente foreach)
e porre una condizione

ES:
lista = ["cane", "maiale", "cammello", "cavallo"]
x = [i for i in lista if i == "cane"]

x contiene gli elementi di lista che scorrendola con il for hanno il valore uguale a cane

x >> ["cane"]
'''
