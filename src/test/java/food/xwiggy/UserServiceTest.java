package food.xwiggy;

import food.xwiggy.dao.FoodDaoImpl;
import food.xwiggy.model.Food;
import food.xwiggy.model.Login;
import food.xwiggy.model.User;
import food.xwiggy.service.UserService;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.sql.SQLException;

import static org.junit.Assert.assertEquals;

@ContextConfiguration(locations = { "classpath:xwiggy/config/user-beans.xml" })
@RunWith(SpringJUnit4ClassRunner.class)
public class UserServiceTest {

    @Autowired
    UserService userService;

  @Before
  public void setUp() throws Exception {
  }

 @Test
  public void testValidateUser() {
    Login login = new Login();
    login.setUsername("amank");
    login.setPassword("abcd1234");

    User user = userService.validateUser(login);

    assertEquals("Aman", user.getFirstname());
    assertEquals("Kumar",user.getLastname());
    assertEquals("aman95kumar@gmail.com",user.getEmail());
    assertEquals("221b",user.getAddress());
    assertEquals(1234567890,user.getPhone());
  }

    @Test
    public void testProducts() throws SQLException, ClassNotFoundException {
      Food food = new Food();
      food.setId("abc");
      FoodDaoImpl foodDao = new FoodDaoImpl();
      Food food1=foodDao.validateFoodInfo(food.getId());
      assertEquals("coffee",food1.getItem());
      assertEquals(50,food1.getPrice());
      assertEquals(5,food1.getQuantity());
  }



}
