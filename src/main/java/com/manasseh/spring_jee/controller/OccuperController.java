package com.manasseh.spring_jee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class OccuperController {
    @RequestMapping("/occuper")
    public ModelAndView occuperPage() {
        return new ModelAndView("occuper");
    }
}
