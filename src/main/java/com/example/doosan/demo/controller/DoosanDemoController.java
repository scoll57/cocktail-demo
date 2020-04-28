package com.example.doosan.demo.controller;

import com.example.doosan.demo.service.DoosanDemoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "/view")
public class DoosanDemoController {

    @Autowired
    private DoosanDemoService doosanDemoService;

    @GetMapping("/hello")
    public String hello(Model model, @RequestParam(value="name", required=false, defaultValue="World") String name) {
        model.addAttribute("name", name);
        return "hello";
    }

    @GetMapping("/health")
    public String health(Model model) {
        SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy-MM-dd HH:mm:ss");

        Date time = new Date();

        String time1 = format1.format(time);

        model.addAttribute("health", "서버 현재 시간은 : "+ time1 + " 입니다.");
        return "health";
    }


    @GetMapping("/demo")
    public String demo1(Model model) {
        List<Map<String, Object>> codes = doosanDemoService.getCodes();
        model.addAttribute("codes", codes);
        return "demo";
    }

    @GetMapping("/demo2")
    public String demo2(Model model) {
        List<Map<String, Object>> codes = doosanDemoService.getCodes2();
        model.addAttribute("codes", codes);
        return "demo2";
    }

}