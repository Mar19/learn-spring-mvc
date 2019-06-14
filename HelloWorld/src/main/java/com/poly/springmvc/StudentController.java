package com.poly.springmvc;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/student/")
public class StudentController {

    @GetMapping(value = "index")
    public String index(ModelMap model) {

        Student student = new Student("Tuan", 9.5, "SER");
        model.addAttribute("student", student);

        return "student2";
    }

    @ModelAttribute("majors")
    public Map<String, String> getMajors() {
        Map<String, String> majors = new HashMap<String, String>();
        majors.put("APP", "Ứng dụng phần mềm");
        majors.put("WEB", "Thiết kế trang web");
        return majors;
    }

    @ModelAttribute("majors2")
    public List<Major> getMajors2() {
        List<Major> majors = new ArrayList<Major>();
        majors.add(new Major("APP", "Ứng dụng phần mềm"));
        majors.add(new Major("WEB", "Thiết kế trang web"));
        majors.add(new Major("SER", "Bảo mật"));
        return majors;
    }
}
