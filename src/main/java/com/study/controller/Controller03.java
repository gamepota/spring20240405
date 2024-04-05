package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("main3")
public class Controller03 {


    @RequestMapping("sub1")
    public void method1() {
        System.out.println("1");
    }

    @RequestMapping("sub2")
    public void method2() {
        System.out.println("2");
    }

    @RequestMapping(value = "sub3", params = "name")
    public void method3() {
        System.out.println("3");
    }

    @RequestMapping(value = "sub3", params = {"name", "age"})
    public void method4() {
        System.out.println("4");
    }

    // /main3/sub3?address&city
    @RequestMapping(value = "sub3", params = {"address", "city"})
    public void method5() {
        System.out.println("5");
    }

    // /main3/sub3?country&city
    // /main3/sub3?city&country
    // /main3/sub3?city=seoul&country=korea
    @RequestMapping(value = "sub3", params = {"country", "city"})
    public void method6() {
        System.out.println("6");
    }

}
