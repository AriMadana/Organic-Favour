//package com.ethereals.organic_favour.controller;
//
//import com.ethereals.organic_favour.dao.UsersDAO;
//import com.ethereals.organic_favour.mail.EmailService;
//import com.ethereals.organic_favour.model.ResetModel;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import javax.servlet.http.HttpSession;
//import java.util.Random;
//
//@Controller
//public class ResetPasswordController {
//    UsersDAO usersDAO = new UsersDAO();
//    private EmailService email_service = new EmailService();
//    @RequestMapping(value="/res_password",method = RequestMethod.POST)
//    public String configurePassword(Model m1, ResetModel model, HttpSession session)
//    {
//        String email = model.getEmail();
//        String password = model.getPassword();
//        System.out.print("the new passowrd is "+ password);
//        String id = usersDAO.setIdFEmail(email);
//        if(usersDAO.checkEmail(email)!=null) {
//            session.setAttribute("email_address",email);
//            session.setAttribute("user_password",password);
//
//            String subject = "Your OTP";
//            int max = 999999;
//            int min = 1;
//            int range = max-min;
//            Random random1 = new Random();
//            int randomnumber = random1.nextInt((max-min)+1)+min;
//            final String OTP = randomnumber+"";
//            new java.util.Timer().schedule(
//                    new java.util.TimerTask() {
//                        @Override
//                        public void run() {
//                            usersDAO.deleteOTP(email, OTP);
//                            // your code here
//                        }
//                    },
//                    12000
//            );
//            email_service.sendMail(email, subject, OTP);
//            Boolean result = usersDAO.updateUserOTP(id,OTP,password);
//            if(result)
//            {
//                return "redirect:configure_otp_reset";
//            }
//            else{
//                return "redirect:reset_psw";
//            }
//        }
//        else
//        {
//            return "redirect:reset_psw";
//        }
//    }
//    @RequestMapping(value = "/verify_otp_reset", method = RequestMethod.POST)
//    public String verifyOtpReset(@RequestParam("one_time_pass")String oneTimePass, HttpSession session) {
//
//        String email = (String)session.getAttribute("email_address");
//
//        String state = usersDAO.configOTP(email, oneTimePass);
//
//        System.out.println("User state"+state);
//        System.out.println("User data"+email +oneTimePass+"data");
//
//        System.out.println("our result is" + state);
//
//
//        if (state == null) {
//            return "redirect:configure_otp_reset";
//        } else {
//            if(usersDAO.confgOTP_Act(state, session)) {
//                return "redirect:signin";
//            } else {
//                return "redirect:error";
//            }
//        }
//
//    }
//    @RequestMapping(value = "/resend_otp_reset")
//    public String resendOtpReset(HttpSession session) {
//        String to = (String)session.getAttribute("email_address");
//        String subject = "Your OTP";
//        int max = 999999;
//        int min = 1;
//        int range = max-min;
//        Random random1 = new Random();
//        int randomnumber = random1.nextInt((max-min)+1)+min;
//        final String OTP = randomnumber+"";
//        new java.util.Timer().schedule(
//                new java.util.TimerTask() {
//                    @Override
//                    public void run() {
//                        usersDAO.deleteOTP(to, OTP);
//                        // your code here
//                    }
//                },
//                60000
//        );
//        email_service.sendMail(to, subject, OTP);
//        Boolean result = usersDAO.resendOTP(to, OTP);
//        if(result) {
//            return "redirect:configure_otp";
//        } else if (!result){
//            return "redirect:home";
//        } else {
//            return "redirect:error";
//        }
//    }
//}
