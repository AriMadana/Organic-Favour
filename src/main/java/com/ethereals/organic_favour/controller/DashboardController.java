package com.ethereals.organic_favour.controller;

import com.ethereals.organic_favour.dao.UsersDAO;
import com.ethereals.organic_favour.db.DBFactory;
import com.ethereals.organic_favour.model.UsersModel;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
public class DashboardController {
    DBFactory dbFactory = new DBFactory();
    UsersDAO usersDAO = new UsersDAO();

    @RequestMapping(value = "/update_profile",method = RequestMethod.GET)
    public String[] selectProfile(Model m1, UsersModel users, HttpSession session)
    {
        String id = (String)session.getAttribute("id");
        String condition = "id = '" + id + "'";
        String[] result = usersDAO.selectProfile(condition);
        System.out.println(result[0]);
        return result;
    }
}

