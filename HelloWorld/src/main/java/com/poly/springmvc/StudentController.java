package com.poly.springmvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StudentController {

    @RequestMapping("/student/form")
    public String showForm() {
        return "student/form";
    }

    @RequestMapping("/student/save")
    public String saveForm(HttpServletRequest request) {

        String name = request.getParameter("name");
        String mark = request.getParameter("mark");
        String major = request.getParameter("major");

        request.setAttribute("name", name);
        request.setAttribute("mark", mark);
        request.setAttribute("major", major);

        return "student/success";
    }
}
