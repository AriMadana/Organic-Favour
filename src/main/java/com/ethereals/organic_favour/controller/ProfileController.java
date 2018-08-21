package com.ethereals.organic_favour.controller;

import com.ethereals.organic_favour.dao.UsersDAO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
public class ProfileController {
    private UsersDAO usersDAO = new UsersDAO();

    @RequestMapping(value = "/get_user_data")
    public @ResponseBody
    String[] getUserData(HttpSession session)
    {
        String id = (String)session.getAttribute("id");
        return usersDAO.selectProfile(id);
    }

    @RequestMapping(value="/update_profile_data")
    public @ResponseBody void updateProfileData (@RequestParam("first_name")String first_name,
                                                 @RequestParam("last_name")String last_name,
                                                 @RequestParam("ph_no")String phone,
                                                 @RequestParam("birth")String birth,
                                                 HttpSession session){

        Object[] data = new Object[] {
                first_name, last_name, phone, birth
        };
        //usersDAO.updateData((String)session.getAttribute("id"), data);
    }
}
