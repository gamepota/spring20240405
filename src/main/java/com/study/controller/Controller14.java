package com.study.controller;

import com.study.domain.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("main14")
public class Controller14 {

    @RequestMapping("sub1")
    public void sub1(Model model) {
        MyBean141 o1 = new MyBean141("신촌", "한국", 33, "흥민");
        MyBean142 o2 = new MyBean142();
        o2.setName("강인");
        o2.setId("19");
        o2.setAge(22);

        model.addAttribute("player1", o1);
        model.addAttribute("player2", o2);


    }

    @RequestMapping("sub2")
    public void sub2(Model model) {
        MyBean142 o1 = new MyBean142();
        o1.setName("김민재");
        MyBean142 o2 = new MyBean142();
        o2.setName("이이이");
        // attribute 명은 클래스명을 lowerCamalCase로 변경후 결정
        // myBean142
        // 가독성이 별로라 잘 안씀
        model.addAttribute(o1);
        model.addAttribute(List.of(o1, o2));
    }

    @RequestMapping("sub3")
    public void sub3(@ModelAttribute("player1") MyBean142 o1) {
        o1.setName("오타니");

    }

    @RequestMapping("sub4")
    public String sub4(@ModelAttribute MyBean142 o1) {
        o1.setName("김민재");

        return "/main14/sub3";
    }

    @RequestMapping("sub5")
    public String sub5(MyBean142 o1) {

        o1.setName("유재석");

        return "/main14/sub3";
    }

    @RequestMapping("sub6")
    public String sub6(MyBean142 o1) {
        o1.setName("카리나");
        return "/main14/sub6";
    }

    @RequestMapping("sub7")
    public String sub7(MyBean143 o1) {
        o1.setAddress("신촌");
        return "/main14/sub6";
    }

    @RequestMapping("sub8")
    public void sub8(MyBean144 o1) {
        System.out.println(o1);

    }

    @RequestMapping("sub9")
    public void sub9(String name,
                     Integer age,
                     String address,
                     Model model) {
        MyBean145 o1 = new MyBean145();
        o1.setName(name);
        o1.setAddress(address);
        o1.setAge(age);

        model.addAttribute("myBean145", o1);
    }

    // /main14/sub10?name=강인&address=파리&age=33
    @RequestMapping("sub10")
    public String sub10(MyBean145 o1) {
        return "/main14/sub9";
    }

//    @RequestMapping("sub11")
//    public void sub11(String city,
//                      String country,
//                      Integer price,
//                      Model model
//    ) {
//        MyBean146 o1 = new MyBean146();
//        o1.setCity(city);
//        o1.setCountry(country);
//        o1.setPrice(price);
//
//        model.addAttribute("myBean146", o1);
//    }

    @RequestMapping("sub11")
    public void sub11(MyBean146 o1) {
    }

    // /main14/sub12?car=tesla&price=2000&model=k5&country=us
    @RequestMapping("sub12")
    public void sub12(
            Integer price, // @RequestParam
            String car, // @RequestParam
            MyBean147 o1, // @ModelAttribute
            MyBean146 o2 // @ModelAttribute
    ) {
        System.out.println("price = " + price);
        System.out.println("car = " + car);
        System.out.println(o1);
        System.out.println(o2);
    }

}