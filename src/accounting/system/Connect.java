/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package accounting.system;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author nayan
 */
public class Connect {
   static Connection con;
    public static Connection getconn()
    {
        try{
          Class.forName("org.postgresql.Driver");
          con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/Inventory", "postgres","Nayan@2331");
           
        }catch(Exception tt)
        {
            System.out.println(tt);
        }
        return con;
    }

    static Connection getConn() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
