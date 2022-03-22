package database;

import config.DBConn;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.User;

public class UserDAO {
    Connection connection;
    
    public UserDAO() {
        DBConn conn = new DBConn();
        conn.getConnection("homebanking", "root", "root");
    }
    
    public User getUser(int id) throws SQLException {
        PreparedStatement preparedSt;
        ResultSet resultSt;
        User user = null;
        
        preparedSt = connection.prepareStatement("SELECT * FROM users WHERE id = ?");
        preparedSt.setInt(1, id);
        resultSt = preparedSt.executeQuery();
        
        if(resultSt.next()) {
            String username = resultSt.getString("username");
            String password = resultSt.getString("password");
            String name = resultSt.getString("name");
            String lastName = resultSt.getString("last_name");
            String email = resultSt.getString("email");
            
            user = new User(username, password, name, lastName, email);
        }
        
        return user;
        
    }
    
    public boolean login(String username, String password) throws SQLException {
        PreparedStatement ps;
        ResultSet rs;

//        ERROR AL EJECUTAR user.jsp
//        java.lang.NullPointerException: Cannot invoke "java.sql.Connection.prepareStatement(String)" because "this.connection" is null
        
        ps = connection.prepareStatement("SELECT username, password FROM users WHERE username = ? AND password = ?");
        ps.setString(1, username);
        ps.setString(2, password);
        
        rs = ps.executeQuery();
        
        return rs.next();
    }
    
}
