package com.manasseh.spring_jee;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {

    @RequestMapping("/homepage")
    public ModelAndView homePage() {
        return new ModelAndView("index");
    }
    @RequestMapping("/")
    public ModelAndView indexPage() {
        return new ModelAndView("index");
    }
}
