
package Programdata;

import java.sql.SQLException;
import java.sql.Connection;
import java.sql.DriverManager;

public class JavaConnect2SQL {

    private static Connection con;

    public static Connection getCon() throws SQLException {
        if (con == null) {
            try {
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                System.out.println("Class Driver ditemukan");
                try {
                    String url = "jdbc:sqlserver://AGUNG\\DBSS061:1433;databaseName=Projek";
                    String user = "admin";
                    String password = "admin123";
                    con = DriverManager.getConnection(url, user, password);
                    System.out.println("sukses");
                } catch (SQLException e) {
                    System.out.println("Error " + e);
                    System.exit(0);
                }
            } catch (ClassNotFoundException cnfe) {
                System.out.println("Error " + cnfe);
                System.exit(0);
            }
        }
        return con;
    }
}