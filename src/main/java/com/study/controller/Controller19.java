package com.study.controller;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("main19")
public class Controller19 {
    @RequestMapping("sub1")
    public void sub1(HttpSession session) {
        System.out.println("Controller19.sub1");
    }

    @RequestMapping("sub2")
    public void sub2(HttpSession session) {
        session.setAttribute("attr", "value");
        System.out.println("Controller19.sub2");
    }

    @RequestMapping("sub3")
    public void sub3(HttpSession session) {
        Object attr = session.getAttribute("attr");
        System.out.println("session = " + session);
    }

    @RequestMapping("sub4")
    public void sub4(String name, HttpSession session) {
        session.setAttribute("name", name);
    }

    @RequestMapping("sub5")
    public void sub5(HttpSession session) {
        Object name = session.getAttribute("name");
        System.out.println("name = " + name);
    }

    @RequestMapping("sub6")
    public void sub6(HttpServletResponse response) {
        Cookie cookie = new Cookie("cookie_name", "cookie_value");
        response.addCookie(cookie);

    }

    @RequestMapping("sub7")
    public void sub7(HttpServletResponse response) {
        Cookie cookie = new Cookie("cookie2", "cookie_value2");
        cookie.setHttpOnly(true); // javascript에서  볼 수 없게 함
        cookie.setPath("/"); // 정의 된 경로와 그 하위 경로에서 쿠키를 가지고 오도록 함
        response.addCookie(cookie);

    }

    @RequestMapping("sub8")
    public void sub8(HttpServletResponse response) {
        Cookie cookie = new Cookie("cookie3", "cookie_value3");
        cookie.setHttpOnly(true);
        cookie.setPath("/");
        // cookie 지속 시간 결정(초단위)
        cookie.setMaxAge(60);
        response.addCookie(cookie);
    }

    @RequestMapping("sub9")
    public void sub9(HttpServletResponse response) {
        Cookie cookie = new Cookie("cookie4", "cookie_value4");
        cookie.setHttpOnly(true);
        cookie.setPath("/");
        cookie.setMaxAge(60);
        response.addCookie(cookie);
    }

    @RequestMapping("sub10")
    public void sub10(HttpServletRequest request, HttpServletResponse response) {
        // cookie-name4 지우기
        // 1.요청에서 쿠키 얻기
        Cookie[] cookies = request.getCookies();
        Cookie cookie = null;
        if (cookies != null) {
            for (Cookie c : cookies) {
                if (c.getName().equals("cookie-name4")) {
                    cookie = c;
                }
            }
        }
        if (cookie != null) {
            // 2.쿠키의 지속시간 0으로 세팅
            cookie.setPath("/");
            cookie.setMaxAge(0);
            // 3.쿠키를 응답에 추가
            response.addCookie(cookie);
        }
    }

}
