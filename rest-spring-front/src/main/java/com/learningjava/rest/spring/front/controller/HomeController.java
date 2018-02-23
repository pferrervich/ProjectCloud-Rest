package com.learningjava.rest.spring.front.controller;

import com.learningjava.rest.spring.core.ReadDB;
import com.learningjava.rest.spring.core.Restaurant;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMethod;


import java.util.ArrayList;
import java.util.List;

/**
 * Maps the startpage to ROOT "/"
 */

@Controller
public class HomeController {
    @RequestMapping("/")
    public String index(Model model) {
        ReadDB readDB = new ReadDB();
        List<Restaurant> restaurants = readDB.readRestaurant();
        model.addAttribute("restaurants", restaurants);
        return "index";
    }
}