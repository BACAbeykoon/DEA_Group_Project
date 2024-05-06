package newpackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

class Register {
Statement st;

    

    void insertRegister(String name, String email, String password, String mobile) throws SQLException {
        connectToDB();
        String query = "INSERT INTO user VALUES('"+name+"','"+email+"','"+password+"','"+mobile+"')";
    try {
        st.executeUpdate(query);
    } catch (SQLException ex) {
        Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
    }
       
        
        
    }

     void connectToDB() throws SQLException {
        String driver = "com.mysql.cj.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/authendication" ;
        try {
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url, "root", "");
            st=con.createStatement();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
