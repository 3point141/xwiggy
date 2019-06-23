package food.xwiggy.dao;

import food.xwiggy.model.Food;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class FoodDaoImpl {

    public static Statement getJDBCConnection() throws ClassNotFoundException, SQLException {
        String url = "jdbc:mysql://localhost:3306/myusers?useSSL=false";
        String userName = "root";
        String password = "abcd1234";


        Class.forName("com.mysql.jdbc.Driver");
        Connection con =DriverManager.getConnection(url,userName,password);
        Statement statement =con.createStatement();

        return statement;
    }

    public static void fillArrayListFood(ArrayList<Food> food, ResultSet rs) throws SQLException {
        while(rs.next()) {
            String id = rs.getString(1);
            String item = rs.getString(2);
            int price = rs.getInt(3);
            int quantity=rs.getInt(4);
            Food f = new Food(id,item,price,quantity);
            food.add(f);
        }
    }

    public static List<Food> getFoodList() throws ClassNotFoundException, SQLException{
        ArrayList<Food> food = new ArrayList<>();
        Statement statement = getJDBCConnection();
        ResultSet rs = statement.executeQuery("select * from foodcart");
        fillArrayListFood(food,rs);
        return food;
    }

    @Autowired
    JdbcTemplate jdbcTemplate;

    public Food validateFoodInfo(String productId) throws SQLException, ClassNotFoundException {
        ArrayList<Food> foods = new ArrayList<>();
        Statement statement = getJDBCConnection();
        ResultSet rs = statement.executeQuery("select * from foodcart where id='"+productId+"'");
        fillArrayListFood(foods,rs);

        return foods.size()>0?foods.get(0):null;
    }
}

class FoodMapper implements RowMapper<Food>{

    @Override
    public Food mapRow(ResultSet rs, int rowNum) throws SQLException {
        Food food = new Food();
        food.setId(rs.getString(1));
        food.setItem(rs.getString(2));
        food.setPrice(rs.getInt(3));
        food.setQuantity(rs.getInt(4));

        return food;
    }
}
