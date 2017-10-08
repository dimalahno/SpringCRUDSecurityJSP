package spring_mvc_example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import spring_mvc_example.model.User;
import spring_mvc_example.service.UserService;

import java.util.List;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ModelAndView list(){
        ModelAndView model = new ModelAndView("admin/listAdmin");
        List<User> list = userService.getAllUser();
        model.addObject("list", list);
        return model;
    }

    @RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
    public ModelAndView update(@PathVariable("id") int id){
        ModelAndView model = new ModelAndView("admin/listAdmin");
        User user = userService.getUserById(id);
        model.addObject("user", user);
        return model;
    }

    @RequestMapping(value = "/update/{id}", method = RequestMethod.POST)
    public ModelAndView update(@PathVariable("id") int id, @ModelAttribute("user") User user){
        userService.updateUserById(id, user);
        return new ModelAndView("redirect:/admin/list");
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id){
        userService.deleteUserById(id);
        return new ModelAndView("redirect:/admin/list");
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public ModelAndView update(){
        ModelAndView model = new ModelAndView("admin/addForm");
        User user = new User();
        model.addObject("user", user);
        return model;
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(@ModelAttribute("user") User user){
        userService.updateUser(user);
        return new ModelAndView("redirect:/admin/list");
    }
}
