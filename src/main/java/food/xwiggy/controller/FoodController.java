package food.xwiggy.controller;

import food.xwiggy.dao.FoodDaoImpl;
import food.xwiggy.model.Food;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import java.sql.SQLException;
import java.util.List;


@Controller
public class FoodController {

    @RequestMapping(value = "/menu",method = RequestMethod.GET)
    public ModelAndView getMenu(Model model) {
        ModelAndView modelAndView = new ModelAndView("menu");
        List<Food> foodItems = null;
        try {
            foodItems = FoodDaoImpl.getFoodList();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        model.addAttribute("foodItems", foodItems);
        modelAndView.addObject("menu", new Food());
        return modelAndView;
    }
}
