package food.xwiggy.controller;

import food.xwiggy.model.Login;
import food.xwiggy.model.User;
import food.xwiggy.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class LoginController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView mav = new ModelAndView("login");
        mav.addObject("login", new Login());

        return mav;
    }

    @RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
    public ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse response,
                                     @ModelAttribute("login") Login login) {
        ModelAndView mav = null;

        User user = userService.validateUser(login);

        if (null != user) {
            mav = new ModelAndView("welcome");
            mav.addObject("firstname", user.getFirstname());
            mav.addObject("lastname",user.getLastname());
            mav.addObject("mobile",user.getPhone());
            mav.addObject("email",user.getEmail());
            FoodController foodController = new FoodController();
        } else {
            mav = new ModelAndView("login");
            mav.addObject("message", "Username or Password is wrong!!");
        }

        return mav;
    }

}
