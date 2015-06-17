package ru.rail.print4all.mvc.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

    Logger log = LoggerFactory.getLogger(this.getClass().getName());

    @RequestMapping("/")
    public String indexPage(Model model) {
        return "index";
    }


    @RequestMapping("/login")
    public String login(Model model) {
        model.addAttribute("username", "Test Name");
        return "index";
    }

}
