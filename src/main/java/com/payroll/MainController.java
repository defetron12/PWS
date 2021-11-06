package com.payroll;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.payroll.Model.EmployeeDetailsAdmin;

@Controller
public class MainController {
    @RequestMapping("/")
    public String home() {
        return "index";
    }

    @RequestMapping("/adminLogin")
    public String adminLogin() {
        return "AdminLogin";

    }

    @RequestMapping("/empHomepage")
    public String employeehomepage() {
        return "EmployeeHome";

    }


}
