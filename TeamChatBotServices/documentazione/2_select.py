#import delle librerie
# la sintassi from - import piu o meno consente di rinominare la libreria
# in questo caso mysql.connector verrò riconosciuto in connector
import datetime
from mysql.connector import (connection)


#apertura connessione
cnx = connection.MySQLConnection(user='root', password='', host='127.0.0.1', database='chatbot_services')
cursor = cnx.cursor()


#creazione query
query = ("SELECT * from users")
#query = ("SELECT nome, DATEDIFF(NOW(), last_session) from users;")


#esecuzione
cursor.execute(query)

#for (nome, cognome, last_session) in cursor:
#  print("{}, {}, {}".format(nome, cognome, last_session))

rows = cursor.fetchall()
#for i in cursor:
print(rows[3])

cursor.close()
cnx.close()


'''
il cursore è struttirato similarmente al readline del c# quando lo si usa nel while
non ha memoria e ci si può interagire solo in ciclo
almeno per il momento abbimao trovato solo sto modo
'''
