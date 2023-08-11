import java.sql.*;
import java.util.Scanner;


public class OracleConnection {
    public static void main(String[] args) {
        String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:XE"; // DB information
        String username = "system";
        String password = "oracle";


        Scanner scanner = new Scanner(System.in);

        System.out.print("ID: ");
        String id = scanner.nextLine();

        System.out.print("Region Code: ");
        String regionCode = scanner.nextLine();

        System.out.print("Address: ");
        String address = scanner.nextLine();

        System.out.print("Name: ");
        String name = scanner.nextLine();

        try {Oracle JDBC driver (ver. 21.5.0.0.0, JDBC4.3)
            Class.forName("oracle.jdbc.OracleDriver"); // Driver Load
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        try (Connection connection = DriverManager.getConnection(jdbcUrl, username, password)) { // Connect
            if (connection != null) {
                System.out.println("Connection Success");
                String sql = "INSERT INTO ANIMAL_HOSPITAL (ID, REGION_CODE, ADDRESS, NAME) " +
                        "VALUES (?, ?, ?, ?)"; // Insert Query

                try (PreparedStatement statement = connection.prepareStatement(sql)) {
                    statement.setString(1, id);
                    statement.setString(2, regionCode);
                    statement.setString(3, address);
                    statement.setString(4, name);

                    int rowsAffected = statement.executeUpdate(); // Data Insert
                    if (rowsAffected > 0) {
                        System.out.println("Data Insert Success");
                    } else {
                        System.out.println("Data Insert Fail");
                    }
                }
            }
        } catch (SQLException e) {
            System.out.println("Connection Fail");
            e.printStackTrace();
        }
    }
}
