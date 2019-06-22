package food.xwiggy.service;

import food.xwiggy.dao.UserDao;
import food.xwiggy.model.Login;
import food.xwiggy.model.User;
import org.springframework.beans.factory.annotation.Autowired;

public class UserServiceImpl implements UserService {

    @Autowired
    public UserDao userDao;

    public void register(User user) {
        userDao.register(user);
    }

    public User validateUser(Login login) {
        return userDao.validateUser(login);
    }

}
