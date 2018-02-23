package com.learningjava.rest.spring.front.controller;


import com.learningjava.rest.spring.core.ReadDB;
import com.learningjava.rest.spring.core.Restaurant;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

/**
 * REST controller that maps the API on the specified route: /rest/api/v1
 */
@RestController
@RequestMapping(path = "/rest/api/v1")
public class ApiRestController {

    private static final String template = "Hello, %s!";
    private final AtomicLong counter = new AtomicLong();


    @RequestMapping(path = "/restaurants",method = RequestMethod.GET)
    public List<Restaurant> list() {
        ReadDB readDB = new ReadDB();
        List<Restaurant> arrData = readDB.readRestaurant();
        return arrData;
    }

}
