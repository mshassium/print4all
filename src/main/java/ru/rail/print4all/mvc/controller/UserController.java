package ru.rail.print4all.mvc.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import ru.rail.print4all.mvc.model.OrganisationsEntity;
import ru.rail.print4all.mvc.model.PointEntity;
import ru.rail.print4all.mvc.model.ServiceEntity;
import ru.rail.print4all.services.OrganisationActions;
import ru.rail.print4all.services.PointActions;
import ru.rail.print4all.services.ServiceActions;
import ru.rail.print4all.services.UserActions;

import java.util.List;

@Controller
public class UserController {

    Logger log = LoggerFactory.getLogger(this.getClass().getName());

    @Autowired
    UserActions userActions;


    @Autowired
    OrganisationActions organisationActions;

    @Autowired
    ServiceActions serviceActions;

    @Autowired
    PointActions pointActions;

    @RequestMapping("/")
    public String indexPage(Model model) {
        model.addAttribute("username", "1");
        return "index";
    }


    @RequestMapping("/addNewPoint")
    public String addNewPoint(Model model){
        List<OrganisationsEntity> allOrganisations = organisationActions.getAllOrganisations();
        List<ServiceEntity> allServices = serviceActions.getAllServices();
        model.addAttribute("nameOrganisation",allOrganisations);
        model.addAttribute("services",allServices);
        return "add_new_point";
    }

    @RequestMapping("/getPrice")
    public String getPrice(Model model){
        return "get_price";
    }

    @RequestMapping(value = "getAllMapData", method = RequestMethod.GET,produces = MediaType.APPLICATION_JSON_VALUE,headers="Accept=application/json, text/javascript")
    public @ResponseBody List<PointEntity> getAllMapData(Model model){
        List<PointEntity> allCoordinates = pointActions.getAllCoordinates();
        return allCoordinates;
    }

    @RequestMapping(value = "/sendTestData", method = RequestMethod.GET)
    public String sendTestData(@RequestParam("id") int id,
                               @RequestParam("config") int config,
                               @RequestParam("patch") String patch,
                               @RequestParam("countPage") int countPage,
                               @RequestParam("payCheck") boolean payCHeck) {
        return "index";
    }

}
