/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package skripsi_ryan;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author USER
 */
public class KoneksiDB {
    Connection conn = null;
    public static Connection ConnectDb()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn =
                    DriverManager.getConnection("jdbc:mysql://localhost:3306/toko_roti","root","");
            return conn;
        }
        catch(ClassNotFoundException | SQLException e)
        {
        JOptionPane.showMessageDialog(null, e);
        return null;
        }
    }
}
