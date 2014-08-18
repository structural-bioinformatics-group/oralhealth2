

try:
    import MySQLdb
except ImportError:
    print "MYSQLdb not found"
    sys.exit(1)

    
# try to connect to mysql database  
def connect_to_database():
  try:
    mydb = MySQLdb.connect(host="localhost", user="root", db="openmrs", passwd="homology")
    return mydb
  except MySQLdb.Error, e:
    logger.critical("Error in connecting %d: %s" % (e.args[0], e.args[1]))
    sys.exit(1)



def insert_into_db(mydb):
	
	cursor = mydb.cursor()
	
	#print "hallo"
	
	
	#query = "insert into test values (1, 'John', 'Doe')"
	query = "select * from test"
	cursor.execute(query)
	res = cursor.fetchall()
	
	for entry in res:
	  print entry[0]
	
	#mydb.commit()



if __name__ == "__main__":
	mydb = connect_to_database()
	insert_into_db(mydb)
	
	
