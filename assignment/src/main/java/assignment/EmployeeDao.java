package assignment;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class EmployeeDao {

public int registerEmployee(Employee employee) throws ClassNotFoundException
{
String INSERT_USERS_SQL = "INSERT INTO employee "
+ "(Name,Email, contact, password) values "
+ "(?, ?, ?, ?);";

int result = 0;

Class.forName("com.mysql.jdbc.Driver");


try(
Connection connection = DriverManager.
getConnection("jdbc:mysql://localhost:3306/employees", "root", "Humhaina@92");

PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL);
)
{
preparedStatement.setString(1, employee.getFirstName());
preparedStatement.setString(2, employee.getEmail());
preparedStatement.setString(3, employee.getContact());
preparedStatement.setString(4, employee.getPassword());

System.out.println(preparedStatement);

result = preparedStatement.executeUpdate();

}
catch(SQLException e)
{
e.printStackTrace();
}
return result;
}
}