package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController 
{
    @Autowired
    private AdminService adminService;

    // Admin Home Page
    @GetMapping("adminhome")
    public ModelAndView adminhome()
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("adminhome");

        long count = adminService.empcount();
        mv.addObject("count", count);

        return mv;
    }

    // Admin Login Page
    @GetMapping("adminlogin")
    public ModelAndView adminlogin()
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("adminlogin");
        return mv;
    }

    // Admin Login Validation
    @PostMapping("checkadminlogin")
    public ModelAndView checkadminlogin(HttpServletRequest request)
    {
        ModelAndView mv = new ModelAndView();

        // Get the username and password from the form
        String auname = request.getParameter("auname");
        String apwd = request.getParameter("apwd");

        // Check login credentials
        Admin admin = adminService.checkadminlogin(auname, apwd);

        if (admin != null) {
            // Login successful, redirect to the admin dashboard (adminnavbar)
            mv.setViewName("adminnavbar");
            mv.addObject("adminname", admin.getUsername()); // Pass admin's username for display
            mv.addObject("message", "Login Successful"); // Add success message
        } else {
            // Login failed, stay on the login page with error message
            mv.setViewName("adminlogin");
            mv.addObject("message", "Login Failed. Please check your credentials.");
        }
        return mv;
    }

    // Admin Logout Page
    @GetMapping("adminlogout")
    public ModelAndView adminlogout()
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("adminlogout");
        return mv;
    }

    // View All Employees (for admin)
    @GetMapping("viewallemps")
    public ModelAndView viewallemps() 
    {
        ModelAndView mv = new ModelAndView();
        List<Employee> emplist = adminService.ViewAllEmployees();
        mv.setViewName("viewallemps");
        mv.addObject("emplist", emplist);
        return mv;
    }

    // Delete Employee (Admin)
    @GetMapping("deleteemp")
    public ModelAndView deleteemp() 
    {
        ModelAndView mv = new ModelAndView();
        List<Employee> emplist = adminService.ViewAllEmployees();
        mv.setViewName("deleteemp");
        mv.addObject("emplist", emplist);
        return mv;
    }

    // Process Delete Employee
    @GetMapping("delete")
    public String delete(@RequestParam("id") int eid) 
    {
        adminService.deleteemp(eid);
        return "redirect:/deleteemp"; // Redirect to deleteemp page after deletion
    }

    // Signup Page for Admin
    @GetMapping("asignup")
    public ModelAndView asignup()
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("asignup");
        return mv;
    }

    // Admin Navbar (after login)
    @GetMapping("viewall")
    public ModelAndView navbar()
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("adminnavbar");
        return mv;
    }

    // Process Admin Signup
    @PostMapping("processsignup")
    public ModelAndView processSignup(HttpServletRequest request)
    {
        ModelAndView mv = new ModelAndView();

        String auname = request.getParameter("auname");
        String apwd = request.getParameter("apwd");

        // Create a new Admin object and save it
        Admin admin = new Admin();
        admin.setUsername(auname);
        admin.setPassword(apwd);

        adminService.saveAdmin(admin); // Save admin to the database

        mv.setViewName("adminlogin"); // Redirect to login page after successful signup
        mv.addObject("message", "Signup Successful. Please login.");

        return mv;
    }
}
