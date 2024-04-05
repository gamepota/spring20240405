package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/main2")
public class Controller02 {

    @RequestMapping("/sub1")
    public void sub1() {
        System.out.println("Controller02.sub1");
    }

    @RequestMapping("/sub2")
    public void sub2() {
        System.out.println("예아");
    }

    @RequestMapping("/sub3")
    public void sub3() {

        System.out.println("예야");
    }

}
