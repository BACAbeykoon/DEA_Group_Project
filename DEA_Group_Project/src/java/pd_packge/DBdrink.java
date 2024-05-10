/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pd_packge;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBdrink {
    private static final String URL = "jdbc:mysql://localhost:3306/ime";
    private static final String USERNAME = "Admin";
    private static final String PASSWORD = "";

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USERNAME, PASSWORD);
    }
}
