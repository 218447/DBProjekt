package database.controller;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {

    @RequestMapping(value= "/*", method = RequestMethod.GET)
    public String anyPage() {
        return "redirect:login";
    }

    @RequestMapping(value="/loginPage", method = RequestMethod.GET)
    public String loginPage() {
        return "login";
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String registerPage () {
        return "register";
    }

    @RequestMapping(value = "/registering", method = RequestMethod.POST)
    public String registeringPage(@RequestParam("username") String username, @RequestParam ("password") String password) {
        //next page depends on the role (user/admin/dataGuy)
        return "blablabla";
    }

    @RequestMapping(value="/forecast", method = RequestMethod.GET)
    public String forecastPage () {
        return "forecast";
    }

    @RequestMapping(value="/administration", method = RequestMethod.GET)
    public String adminPage () {
        return "admin";
    }

    @RequestMapping(value = "/submit", method = RequestMethod.GET)
    public String submittingPage () {
        return "submit";
    }
}