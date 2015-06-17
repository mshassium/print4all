package ru.rail.print4all.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

    Logger log = LoggerFactory.getLogger(this.getClass().getName());
    @RequestMapping("/")
    public String indexPage(){
        log.error("INDEX!!!!!");
        return "index";
    }

}
