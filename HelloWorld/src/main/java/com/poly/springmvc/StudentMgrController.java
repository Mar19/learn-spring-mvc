package com.poly.springmvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/student-mgr")
public class StudentMgrController {

    @RequestMapping()
    public String index(ModelMap model) {
        model.addAttribute("message", "Bạn gọi index()");
        return "student-mgr";
    }

    @RequestMapping(params = "btnInsert")
    public String insert(ModelMap model, @RequestParam("name") String name, @RequestParam("mark") Double mark,
            @RequestParam("major") String major) {

        model.addAttribute("message", "Bạn gọi insert()");
        model.addAttribute("name", name);
        model.addAttribute("mark", mark);
        model.addAttribute("major", major);

        return "student/success";
    }

    @RequestMapping(params = "btnUpdate")
    public String update(ModelMap model, Student student) {

        model.addAttribute("message", "Bạn gọi update()");
        model.addAttribute("student", student);

        return "student/success2";
    }

    @RequestMapping(params = "btnDelete")
    public String delete(ModelMap model) {
        model.addAttribute("message", "Bạn gọi delete()");
        return "student-mgr";
    }

    @RequestMapping(params = "btnReset")
    public String reset(ModelMap model) {
        model.addAttribute("message", "Bạn gọi nhập lại()");
        return "student-mgr";
    }

    @RequestMapping(params = "lnkEdit")
    public String edit(ModelMap model) {
        model.addAttribute("message", "Bạn gọi edit()");
        return "student-mgr";
    }

}
