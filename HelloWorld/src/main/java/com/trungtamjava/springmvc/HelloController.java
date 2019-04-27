package com.trungtamjava.springmvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {

    @RequestMapping(value = "/hello")
    public String hello(ModelMap map) {
        map.addAttribute("abc", "Xin chào from model map");
        return "hello";
    }
    
    @RequestMapping(value = "/newFile")
    public String newFile(ModelMap map) {
        map.addAttribute("msg", "Đây là file mới");
        return "NewFile";
    }
}
