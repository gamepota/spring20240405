package com.study.controller;

import com.study.domain.MyBean09_1;
import com.study.domain.MyBean09_2;
import com.study.domain.MyBean09_3;
import com.study.domain.MyBean09_4;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("main9")
public class Controller09 {
    @RequestMapping("sub1")
    public void sub1(Model model) {
        MyBean09_1 myBean091 = new MyBean09_1();
        model.addAttribute("person", myBean091);
    }

    @RequestMapping("sub2")
    public void sub2(Model model) {
        MyBean09_2 obj = new MyBean09_2();
        obj.setAge(20);
        obj.setName("흥민");

        model.addAttribute("person", obj);

        MyBean09_2 obj2 = new MyBean09_2();
        obj2.setAge(20);
        obj2.setName("차범근");

        model.addAttribute("person2", obj2);


    }

    @RequestMapping("sub3")
    public void sub3(Model model) {
        MyBean09_3 obj1 = new MyBean09_3();
        obj1.setAge(20);
        obj1.setCity("서울");
        obj1.setAddress("신촌");

        MyBean09_3 obj2 = new MyBean09_3();
        obj2.setAge(23);
        obj2.setCity("부산");
        obj2.setAddress("강알리");

        model.addAttribute("memeber1", obj1);
        model.addAttribute("memeber2", obj2);
    }

    @RequestMapping("sub4")
    public void sub4(Model model) {
        MyBean09_4 obj1 = new MyBean09_4();
        obj1.setModelNum("k5");
        obj1.setPrice(5000);
        obj1.setName("kia");
        obj1.setWeight(2400.50);
        obj1.setUsed(true);

        model.addAttribute("car", obj1);
    }
}

