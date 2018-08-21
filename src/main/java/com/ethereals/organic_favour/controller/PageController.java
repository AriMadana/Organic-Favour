package com.ethereals.organic_favour.controller;

import com.ethereals.organic_favour.file.ProfileImage;
import com.ethereals.organic_favour.ftp.FTPService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
//fully update by pst
@Controller
public class PageController {
    @RequestMapping("/")
    public String start(HttpSession session) {
        String id = (String)session.getAttribute("id");
        if(id == null) {
            return "redirect:home";
        } else {
            return "redirect:dashboard";
        }
    }
    @RequestMapping(value = "/home")
    public ModelAndView home() {

        ModelAndView modelAndView = new ModelAndView("home");

        return modelAndView;
    }
    @RequestMapping(value = "/dashboard")
    public ModelAndView dashboard() {

        ModelAndView modelAndView = new ModelAndView("dashboard");

        return modelAndView;
    }

    @RequestMapping(value = "/signup")
    public ModelAndView signup() {
        ModelAndView modelAndView = new ModelAndView("sign-up-illustration");
        return modelAndView;
    }

    @RequestMapping(value = "/configure_otp")
    public ModelAndView confOtp() {
        ModelAndView modelAndView = new ModelAndView("otp_configure");
        return modelAndView;
    }

    @RequestMapping(value = "/setting")
    public ModelAndView settingAcc() {
        ModelAndView modelAndView = new ModelAndView("setting");
        return modelAndView;
    }

    @RequestMapping(value = "/signin")
    public ModelAndView signIn() {
        ModelAndView modelAndView = new ModelAndView("sign-in-illustration");
        return modelAndView;
    }

    @RequestMapping(value = "/logout")
    public ModelAndView logOut() {
        ModelAndView modelAndView = new ModelAndView("logout");
        return modelAndView;
    }
    @RequestMapping(value="/reset_psw")
    public ModelAndView forgetPassword()
    {
        ModelAndView modelAndView = new ModelAndView("forget-psw");
        return modelAndView;
    }

    @RequestMapping(value = "/profile")
    public ModelAndView profile_setting()
    {
        ModelAndView modelAndView = new ModelAndView("profile");

        return modelAndView;
    }
    @RequestMapping(value = "/configure_otp_reset")
    public ModelAndView confOtpReset() {
        ModelAndView modelAndView = new ModelAndView("otp_configure_reset");
        return modelAndView;
    }

    @RequestMapping(value = "/dropzone")
    public ModelAndView dropZone() {
        ModelAndView modelAndView = new ModelAndView("dropzone");
        return modelAndView;
    }

    @RequestMapping(value = "/dashboard-2")
    public ModelAndView dashboard2() {
        ModelAndView modelAndView = new ModelAndView("dashboard-2");
        return modelAndView;
    }

    @RequestMapping(value = "/dashboard-3")
    public ModelAndView dashboard3() {
        ModelAndView modelAndView = new ModelAndView("dashboard-3");
        return modelAndView;
    }
}
