package food.xwiggy.dao;

import food.xwiggy.model.Food;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class FoodDaoImpl {

    public static List<Food> getFoodList() throws ClassNotFoundException, SQLException{

        String url = "jdbc:mysql://localhost:3306/myusers?useSSL=false";
        String userName = "root";
        String password = "abcd1234";
        ArrayList<Food> food = new ArrayList<>();

        Class.forName("com.mysql.jdbc.Driver");
        Connection con =DriverManager.getConnection(url,userName,password);
        Statement statement =con.createStatement();

        ResultSet rs = statement.executeQuery("select * from foodcart");

        while(rs.next()) {
            String id = rs.getString(1);
            String item = rs.getString(2);
            int price = rs.getInt(3);
            int quantity=rs.getInt(4);
            Food f = new Food(id,item,price,quantity);
            food.add(f);
        }

        return food;
    }
}
