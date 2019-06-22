package food.xwiggy.dao;

import food.xwiggy.model.Login;
import food.xwiggy.model.User;

public interface UserDao {

    void register(User user);

    User validateUser(Login login);
}
