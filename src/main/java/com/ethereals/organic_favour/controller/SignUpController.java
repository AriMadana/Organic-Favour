package com.ethereals.organic_favour.controller;

import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ethereals.organic_favour.dao.UsersDAO;
import com.ethereals.organic_favour.mail.EmailService;
import com.ethereals.organic_favour.model.UsersModel;

@Controller
public class SignUpController {
    private EmailService emailSV = new EmailService();
    private UsersDAO usersdao = new UsersDAO();
//	@RequestMapping("/")
//	public ModelAndView displayEmployees() {
//		List<Employee> employees = empDAO.readEmployees();
//
//		ModelAndView modelAndView = new ModelAndView("display_employees");
//		modelAndView.addObject("employees", employees);
//
//		return modelAndView;
//	}

    @RequestMapping(value = "/signup")
    public ModelAndView signup() {
        ModelAndView modelAndView = new ModelAndView("sign-up-illustration");
        return modelAndView;
    }

    @RequestMapping(value = "/verify_otp", method = RequestMethod.POST)
    public String verifyOTP(@RequestParam("one_time_pass")String oneTimePass, HttpSession session) {
        String email = (String)session.getAttribute("email");
        String state = usersdao.configOTP(email, oneTimePass);
        if (state == null) {
            return "redirect:configure_otp";
        } else {

            if(usersdao.confgOTP_Act(state)) {
                return "redirect:dashboard";
            } else {
                return "redirect:error";
            }
        }

    }
    @RequestMapping(value = "/signup_req", method=RequestMethod.POST)
    public String signup_req(Model m1, UsersModel users, HttpSession session) {
        final String to = users.getEmail();
        session.setAttribute("email", to);
        String subject = "Your OTP";
        int max = 999999;
        int min = 1;
        int range = max-min;
        Random random1 = new Random();
        int randomnumber = random1.nextInt((max-min)+1)+min;
        final String OTP = randomnumber+"";
        new java.util.Timer().schedule(
                new java.util.TimerTask() {
                    @Override
                    public void run() {
                        usersdao.deleteOTP(to, OTP);
                        // your code here
                    }
                },
                60000
        );
        emailSV.sendMail(to, subject, OTP);
        Boolean result = usersdao.createUser(users, OTP);
        if(result) {
            return "redirect:/configure_otp";
        } else if (!result){
            return "redirect:/home";
        } else {
            return "redirect:/error";
        }



//		System.out.println(result + " Dar");
//		if (result == true) {
//			return "redirect:/configure_otp/";
//		} else {
//			return "redirect:/home";
//		}
    }

    @RequestMapping("/configure_otp")
    public ModelAndView confOtp() {
        ModelAndView modelAndView = new ModelAndView("otp_configure");
        return modelAndView;
    }

    @RequestMapping(value = "/resend_otp")
    public String resendOtp(HttpSession session) {
        String to = (String)session.getAttribute("email");
        String subject = "Your OTP";
        int max = 999999;
        int min = 1;
        int range = max-min;
        Random random1 = new Random();
        int randomnumber = random1.nextInt((max-min)+1)+min;
        final String OTP = randomnumber+"";
        new java.util.Timer().schedule(
                new java.util.TimerTask() {
                    @Override
                    public void run() {
                        usersdao.deleteOTP(to, OTP);
                        // your code here
                    }
                },
                60000
        );
        emailSV.sendMail(to, subject, OTP);
        Boolean result = usersdao.resendOTP(to, OTP);
        if(result) {
            return "redirect:/configure_otp";
        } else if (!result){
            return "redirect:/home";
        } else {
            return "redirect:/error";
        }
    }

//    @RequestMapping("/error")
//    public ModelAndView error() {
//        ModelAndView modelAndView = new ModelAndView("error-illustration");
//        return modelAndView;
//    }

//	@RequestMapping("/{empid}")
//	public ModelAndView displayEmployee(@PathVariable("empid")Integer empId) {
//		Employee employee = empDAO.readEmployee(empId);
//
//		ModelAndView modelAndView = new ModelAndView("display_employee");
//		modelAndView.addObject("employee", employee);
//
//		return modelAndView;
//	}
//
//	@RequestMapping(value="/new", method=RequestMethod.GET)
//	public ModelAndView newEmployee() {
//		return new ModelAndView("new_employee", "employee", new Employee());
//	}
//
//	@RequestMapping(value="/new", method=RequestMethod.POST)
//	public String addNewEmployee(@Valid @ModelAttribute("employee")Employee employee,
//		      BindingResult result) {
//
//		empDAO.createEmployee(employee);
//
//		return "redirect:/employees/new";
//	}
//
//	@RequestMapping(value="/update/{empid}", method=RequestMethod.GET)
//	public ModelAndView updateEmployee(@PathVariable("empid")Integer empId) {
//		return new ModelAndView("update_employee", "employee", empDAO.readEmployee(empId));
//	}
//
//	@RequestMapping(value="/update", method=RequestMethod.POST)
//	public String doUpdateEmployee(@Valid @ModelAttribute("employee")Employee employee,
//		      BindingResult result) {
//
//		empDAO.updateEmployee(employee);
//
//		return "redirect:/employees/";
//	}
//
//	@RequestMapping(value="/delete/{empid}", method=RequestMethod.GET)
//	public String deleteEmployee(@PathVariable("empid")Integer empId) {
//
//		empDAO.deleteEmployee(empId);
//
//		return "redirect:/employees/";
//	}


}
