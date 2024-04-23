package com.study.controller;

import com.study.domain.MyBean254Customer;
import com.study.domain.MyBean258Employee;
import com.study.mapper.Mapper02;
import com.study.mapper.Mapper03;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequiredArgsConstructor
@RequestMapping("main32")
public class Controller32 {

    private final Mapper03 mapper;
    private final Mapper02 mapper02;

    @RequestMapping("sub1")
    public void method1() {
        int rowCount = mapper.deleteOneCustomer();
        System.out.println(rowCount + "명 고객 삭제됨");
    }

    // /main32/sub2?cid=5
    @RequestMapping("sub2")
    public void method2(Integer cid) {
        int rowCount = mapper.deleteOneCustomerById(cid);
        System.out.println(rowCount + "명 고객 삭제됨");
    }

    @RequestMapping("sub3")
    public void method3(Integer eid) {
        int rowCount = mapper.deleteoneEmployeesById(eid);
        System.out.println(rowCount + "명 사원 해고");
    }

    // name=흥민&contactName=캡틴&city=런던&country=한국&address=토트넘
    // /main32/sub4?name=흥민&contactName=캡틴&city=런던&country=한국&address=토트넘
    @GetMapping("sub4")
    public void method4(MyBean254Customer customer) {
        mapper.insertCustomer(customer);
    }

    // todo : 직원 입력 코드 작성해보기

    @GetMapping("sub5")
    public void method5() {
    }

    @PostMapping("sub5")
    public String method5(MyBean258Employee employee, RedirectAttributes rttr) {
        int rows = mapper.insertEmployee(employee);
        if (rows > 0) {
            rttr.addFlashAttribute("message", rows + " 명 직원이 입력 되었습니다.");
        } else {
            rttr.addFlashAttribute("message", "입력에 실패 했습니다.");
        }
        return "redirect:/main32/sub5";
    }

    @GetMapping("sub6")
    public void method6(@RequestParam(value = "id", required = false) Integer eid, Model model) {
        if (eid != null) {
            MyBean258Employee e = mapper02.selectOneEmployee2(eid);
            model.addAttribute("employee", e);
        }
    }

    @PostMapping("sub6/update")
    public String method6(MyBean258Employee employee, RedirectAttributes rttr) {
        int i = mapper.updateEmployee(employee);

        if (i > 0) {
            rttr.addFlashAttribute("message", i + "명 직원 정보 수정");
        } else {
            rttr.addFlashAttribute("message", "입력 실패");
        }
        rttr.addAttribute("employee", employee.getId());
        return "redirect:/main32/sub6";
    }

    @GetMapping("sub7")
    public void method7(@RequestParam(value = "id", required = false) Integer cid, Model model) {
        if (cid != null) {
            MyBean254Customer c = mapper02.selectOneCustomer4(cid);
            model.addAttribute("customer", c);
        }
    }

    @PostMapping("sub7/update")
    public String method7(MyBean254Customer customer, RedirectAttributes rttr) {
        int i = mapper.updateCustomer(customer);
        if (i > 0) {
            rttr.addFlashAttribute("message", i + " 번 고객 정보 수정");
        } else {
            rttr.addFlashAttribute("message", "실패");
        }

        rttr.addAttribute("customer", customer.getId());

        return "redirect:/main32/sub7";
    }

}