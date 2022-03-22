package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConn {
    
    private String driver = "com.mysql.jdbc.Driver";
    private String host = "jdbc:mysql://localhost:3306/";
    
    public Connection getConnection(String database, String userMysql, String passMysql) {
        Connection conn = null;
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(host + database, userMysql, passMysql);
            
        } catch(ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }
    
}
