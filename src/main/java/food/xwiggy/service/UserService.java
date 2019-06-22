package food.xwiggy.service;

import food.xwiggy.model.Login;
import food.xwiggy.model.User;

public interface UserService {

    void register(User user);

    User validateUser(Login login);
}
