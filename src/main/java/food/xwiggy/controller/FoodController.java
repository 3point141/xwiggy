package food.xwiggy.controller;

import food.xwiggy.dao.FoodDaoImpl;
import food.xwiggy.model.Food;
import food.xwiggy.model.Quantity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
        modelAndView.addObject("billing",new Quantity());
        return modelAndView;
    }

    @RequestMapping(value = "/billingDetails",method = RequestMethod.POST)
    public ModelAndView postQuantity(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("billing") Quantity quantity){
        Quantity quantity1 = quantity;
        ModelAndView modelAndView = new ModelAndView("billing");
        return modelAndView;
    }

    @RequestMapping(value = "/billing", method = RequestMethod.GET)
    public ModelAndView getQuantity(Model model){
        ModelAndView modelAndView = new ModelAndView("billing");
        model.addAttribute("billing", new Quantity());
        return modelAndView;
    }
}
