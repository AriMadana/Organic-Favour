package com.ethereals.organic_favour.controller;

import com.ethereals.organic_favour.dao.UsersDAO;
import com.ethereals.organic_favour.db.DBFactory;
import com.ethereals.organic_favour.model.LoginModel;
import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.security.auth.spi.LoginModule;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class SignInController {
    private UsersDAO usersDAO = new UsersDAO();

    @RequestMapping(value = "/signin")
    public ModelAndView signin() {
        ModelAndView modelAndView = new ModelAndView("sign-in-illustration");
        return modelAndView;
    }
    /*@RequestMapping(value= "/loginreq",method = RequestMethod.POST)
    public String signup_req(Model m1, loginModel users, HttpSession session) {
        String result = usersDAO.signinConf(users.getUsername(), users.getPassword());
        if (result == "0") {
            return "redirect:signup";
        } else {
            session.setAttribute("id", result);
            return "redirect:dashboard";
        }

    }*/
    @RequestMapping(value="/signin_req", method = RequestMethod.POST)
    public String signin_request(Model m1, LoginModel users, HttpSession session)
    {
        System.out.println(users.getEmail() + " " + users.getPassword());
        if(usersDAO.checkEmail(users.getEmail())!= null)
        {
            if(usersDAO.checkPassword(users.getEmail(),users.getPassword())!= null)
            {
                String result = usersDAO.signinConfigure(users.getEmail(),users.getPassword());
                if(result == null)
                {
                    return "redirect:signin?msg=false";
                }
                else
                {
                    session.setAttribute("id",result);
                    return "redirect:dashboard";
                }
            }
            else
            {
                return "redirect:signin?msg=psw_error";
            }
        }
        else{
            return "redirect:signin";
        }
    }


}
