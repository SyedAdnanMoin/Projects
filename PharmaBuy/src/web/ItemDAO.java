package web;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ItemDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/COVIDprjct?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "password";

    //private static final String INSERT_USERS_SQL = "INSERT INTO users" + "  (name,password,phone,email) VALUES " +
       // " (?, ?, ?,?);";

   // private String SELECT_USER_BY_ID = "select name,password from users where name =? and password=?";
    //private static final String SELECT_ALL_USERS = "select * from users";
    //private static final String DELETE_USERS_SQL = "delete from users where id = ?;";
    //private static final String UPDATE_USERS_SQL = "update users set password= ? where name = ?";

    public ItemDAO() {}

    public  Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
            return connection;
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return connection;
    }
}