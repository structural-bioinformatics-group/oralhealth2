package org.openmrs.module.oralhealth2;

import java.sql.*;

public class MySQLConnection { 
    
    public static void main(String[] args) { 
 
    	 // Diese Eintraege werden zum 
        // Verbindungsaufbau benoetigt. 
        final String hostname = "localhost"; 
        final String port = "3306"; 
        final String dbname = "openmrs"; 
        final String user = "root"; 
        final String password = "homology"; 
	
        Connection conn = null; 
    	
        try { 
        	System.out.println("* Treiber laden"); 
      	    Class.forName("org.gjt.mm.mysql.Driver").newInstance(); 
      	    System.out.println(Class.forName("org.gjt.mm.mysql.Driver")); 
      	    System.out.println(Class.forName("org.gjt.mm.mysql.Driver").newInstance()); 
        } 
        catch (Exception e) { 
            System.err.println("Unable to load driver."); 
            e.printStackTrace(); 
        } 
        
        try { 
    	    System.out.println("* Verbindung aufbauen"); 
    	    String url = "jdbc:mysql://"+hostname+":"+port+"/"+dbname; 
    	    conn = DriverManager.getConnection(url, user, password); 
    	    
    	    
    	    System.out.println("* Statement beginnen");     	        	    
            Statement stmt = conn.createStatement(); 
            
            System.out.println("*Tabelle erstellen");
            String sqlCommand1 = "CREATE TABLE IF NOT EXISTS test (userID INT, FirstName VARCHAR(255), LastName VARCHAR(255))";
            int rows = stmt.executeUpdate(sqlCommand1);
            
            System.out.println("* Statement beginnen"); 
            Statement stmt2 = conn.createStatement(); 

            System.out.println("* Einfuegen"); 
            String sqlCommand2 = "INSERT INTO test " + "VALUES(7,'bli','shfjhhgsgf');"; 
            stmt2.executeUpdate(sqlCommand2); 

            System.out.println("* Statement beenden"); 
            stmt2.close(); 

            System.out.println("* Abfrage beginnen"); 
            String sqlCommand = "SELECT * FROM test"; 
            // "SELECT Name, StOrt, Gehalt FROM personal WHERE Gehalt>50000"; 
            ResultSet rs = stmt.executeQuery(sqlCommand); 
	    
            System.out.println("* Ergebnisse anzeigen"); 
            while (rs.next()) { 
            	int ID = rs.getInt(1); 
            	String firstname = rs.getString("FirstName"); 
            	String lastname = rs.getString("LastName"); 
            	System.out.println( ID+" "+firstname+" "+lastname ); 
            } 

            System.out.println("* Statement beenden"); 
            stmt.close();   
    	    
    	    System.out.println("* Datenbank-Verbindung beenden"); 
    	    conn.close(); 
        } 
        catch (SQLException sqle) { 
        	System.out.println("SQLException: " + sqle.getMessage()); 
            System.out.println("SQLState: " + sqle.getSQLState()); 
            System.out.println("VendorError: " + sqle.getErrorCode()); 
            sqle.printStackTrace(); 
        } 
	
     } // ende: public static void main() 
    
} // ende: public class SimpleQuery 