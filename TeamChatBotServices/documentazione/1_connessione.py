#https://dev.mysql.com/doc/connector-python/en/connector-python-example-connecting.html
from mysql.connector import (connection)
cnx = connection.MySQLConnection(user='root', password='', host='127.0.0.1', database='chatbot_services')
cnx.close()
