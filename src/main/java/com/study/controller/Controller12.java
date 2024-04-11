package com.study.controller;

import com.study.domain.MyBean121;
import com.study.domain.MyBean122;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("main12")
public class Controller12 {
    @RequestMapping("sub1")
    public void method1(Model model) {
        model.addAttribute("age", 15);
        // /main12/sub1.jsp
//        model.addAttribute("products", List.of());
        model.addAttribute("products", List.of("바나나", "사과", "포도"));

        model.addAttribute("member",
                Map.of("country", "korea",
                        "age", 30));

//        model.addAttribute("member",
//                Map.of("country", "korea",
//                        "age", 15));
//
//        model.addAttribute("member",
//                Map.of("country", "us",
//                        "age", 30));
//
//        model.addAttribute("member",
//                Map.of("country", "us",
//                        "age", 15));
        // /main12/sub1.jsp
    }

    @RequestMapping("sub2")
    public void method2(Model model) {
//        model.addAttribute("age", 3); //어린이용 콘텐츠
//        model.addAttribute("age", 23); //
        model.addAttribute("age", 13); //청소년용 콘텐츠
//        model.addAttribute("age", 33);

    }

    @RequestMapping("sub3")
    public void method3(Model model) {
        model.addAttribute("dan", 9);
    }

    @RequestMapping("sub4")
    public void method4(Model model) {
        model.addAttribute("myList", List.of("java", "css", "react"));
        model.addAttribute("foods", List.of("돈까스", "제육", "국밥", "짬뽕"));

        model.addAttribute("myMap", Map.of("son", "london", "lee", "paris", "kim", "munch"));

        model.addAttribute("cars", Map.of("tesla", "USA", "kia", "korea", "volvo", "sweden"));

        model.addAttribute("myList2", List.of("1", "2", "3"));
        model.addAttribute("myMap2", Map.of(1, "당첨", 2, "꽝", 3, "꽝꽝"));
    }

    @RequestMapping("sub5")
    public void method5(Model model) {
        model.addAttribute("myList", List.of("java", "css", "react"));
        model.addAttribute("myList1", List.of("기술들", "java", "css", "react"));
    }

    @RequestMapping("sub6")
    public void method6(Model model) {
        MyBean121 e1 = new MyBean121("모하비", "kia", "korea", 3000);
        MyBean121 e2 = new MyBean121("ModelX", "tesla", "USA", 4000);
        MyBean121 e3 = new MyBean121("CX123", "Volvo", "SWeden", 3500);
        MyBean121 e4 = new MyBean121("kk", "dd", "japan", 3200);

        model.addAttribute("cars", List.of(e1, e2, e3, e4));
    }

    @RequestMapping("sub7")
    public void method7(Model model) {
        MyBean122 e1 = new MyBean122("김가강", "전사", "인간", List.of("용사", "영웅"), 123);
        MyBean122 e2 = new MyBean122("굵휍듯", "마법사", "엘프", List.of("새내기"), 12);
        MyBean122 e3 = new MyBean122("강낭콩볶음", "도적", "난쟁이", List.of("ㅇㅇ"), 87);
        MyBean122 e4 = new MyBean122("간장게장", "사제", "오크", List.of("ㅇㅇ"), 79);
        model.addAttribute("playerList", List.of(e1, e2, e3, e4));
    }
}

