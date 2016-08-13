
import java.sql.*;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author zammel
 */
public class DBclass {
    public static void main(String[] args) throws SQLException {
        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;
        String user = "java";
        String pass = "java";

        try {
            myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bdd_sdzee", user, pass);
            myStmt = myConn.createStatement();
            myRs = myStmt.executeQuery("select * from utilisateur");
            while (myRs.next()) {
                System.out.println(myRs.getString("email"));

            }
        } catch (Exception exc) {
            exc.printStackTrace();
        } finally {
            if (myRs != null) {
                myRs.close();
            }
            if (myStmt != null) {
                myStmt.close();
            }
            if (myConn != null) {
                myConn.close();
            }
        }
    }
}
