package ru.rail.print4all.mvc.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ru.rail.print4all.mvc.model.User;
import ru.rail.print4all.services.UserActions;

@Controller
public class UserController {

    Logger log = LoggerFactory.getLogger(this.getClass().getName());

    @Autowired
    UserActions userActions;

    @RequestMapping("/")
    public String indexPage(Model model) {
        model.addAttribute("username", "1");
        return "index";
    }


    @RequestMapping("/addNewPoint")
    public String addNewPoint(Model model){
        return "add_new_point";
    }

    @RequestMapping("/login")
    public String login(Model model, @RequestParam("Email") String email, @RequestParam("Password") String password) {
        boolean check = userActions.checkExist(new User(email,password));
        if(check)
            model.addAttribute("username", email);
        else
            model.addAttribute("username", "Неверная связка Email/Пароль");
        return "index";
    }

    @RequestMapping("/register")
    public String login(Model model, @RequestParam("user") User user) {
        boolean check = userActions.checkExist(user);
        if(!check){
            userActions.createUser(user);
            model.addAttribute("username", user.getFirstName());
        }
        else
        {
            model.addAttribute("username","Данный пользователь существует");
        }
        return "index";
    }

}
