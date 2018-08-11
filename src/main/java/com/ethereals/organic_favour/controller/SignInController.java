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

    @RequestMapping(value="/signin_req", method = RequestMethod.POST)
    public String signin_request(Model m1, LoginModel users, HttpSession session)
    {
        session.setAttribute("email", users.getEmail());
        System.out.println(users.getEmail() + " " + users.getPassword());
        if(usersDAO.checkEmail(users.getEmail())!= null)
        {
            if(usersDAO.checkPassword(users.getEmail(),users.getPassword())!= null)
            {
                String result = usersDAO.signinConfigure(users.getEmail(),users.getPassword());
                if(result == null)
                {
                    session.setAttribute("msg", "not_act");
                    return "redirect:signin";
                }
                else {
                    session.setAttribute("id",result);
                    return "redirect:dashboard";
                }
            }
            else {
                System.out.println("else win tal");
                session.setAttribute("msg", "psw_error");
                return "redirect:signin";
            }
        }
        else {
            session.setAttribute("msg", "user_not_found");
            return "redirect:signin";
        }
    }


}
