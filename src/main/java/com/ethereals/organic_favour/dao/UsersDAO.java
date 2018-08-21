package com.ethereals.organic_favour.dao;


import com.ethereals.organic_favour.db.DBFactory;
import com.ethereals.organic_favour.db.Usr;
import com.ethereals.organic_favour.model.UsersModel;

import javax.servlet.http.HttpSession;

public class UsersDAO {
    private DBFactory dbFactory;

    private final String[] columns1 = new String[] {Usr.usrId, Usr.email, Usr.password};
    private final String[] init_reg = new String[] {Usr.email, Usr.password, Usr.active, Usr.otp};
    private final String[] del_otp = new String[] {Usr.otp};
    private final String[] conf_act = new String[] {Usr.active};

    private final String[] re_otp = new String[] {Usr.otp};
    private final String[] user_profile = new String[] {Usr.profile};
    private final String[] user_cover = new String[] {Usr.cover};
    private final String[] user_profile_cover = new String[] {Usr.profile,Usr.cover};

    private final String[] user_data = new String[] {Usr.first_name,Usr.last_name,Usr.email,Usr.ph_no,Usr.birth,Usr.profile,Usr.cover};

    public UsersDAO() {
        dbFactory = new DBFactory();
    }

    public boolean createUser(UsersModel users, String OTP) {
        Object[] data = new Object[] {users.getEmail(), users.getPassword(), "not_act", OTP};
        return dbFactory.insert(Usr.table, init_reg, data);
    }

    public boolean deleteOTP(String email, String OTP_S) {
        Object[] data = new Object[] {0};
        int OTP = Integer.parseInt(OTP_S);
        String condition = "email = '" + email + "' and otp = " + OTP;
        return dbFactory.update(Usr.table, del_otp, data, condition);
    }

    public String configOTP(String email, String OTP) {
        String condition = "email = '" + email + "' and otp = " + OTP;
        String result = dbFactory.select(Usr.table, "usr_id", condition);
        return result;

    }
    public String postProfileCover(String id, String [] photo) {
        String condition = "usr_id = '" + id +"'" ;
        String result = dbFactory.select(Usr.table, "usr_id", condition);
        return result;

    }
    public String postProfile(String id, String pfName) {
        Object [] data = new Object[]{pfName};
        String condition = "usr_id = '" + id +"'" ;
        Boolean boo =  dbFactory.update(Usr.table,user_profile,data,condition);
       // String result = dbFactory.select(Usr.table, "usr_id", condition);
        System.out.println("boolee is"+ boo + pfName + "is pfname" + data[0] ) ;
        if(boo) {
            return pfName;
        } else {
            return "Failed";
        }

    }
    public String postCover(String id, String pName, String photo) {
        if(photo == "cover") {
            Object [] data = new Object[]{pName};
            String condition = "usr_id = '" + id +"'" ;
            Boolean boo =  dbFactory.update(Usr.table,user_cover,data,condition);
            // String result = dbFactory.select(Usr.table, "usr_id", condition);
            System.out.println("boolee is"+ boo + pName + "is cvname --> " + data[0] ) ;
            if(boo) {
                return pName;
            } else {
                return "Failed";
            }
        } else if(photo == "profile") {
            Object [] data = new Object[]{pName};
            String condition = "usr_id = '" + id +"'" ;
            Boolean boo =  dbFactory.update(Usr.table,user_profile,data,condition);
            // String result = dbFactory.select(Usr.table, "usr_id", condition);
            System.out.println("boolee is"+ boo + pName + "is pfname --> " + data[0] ) ;
            if(boo) {
                return pName;
            } else {
                return "Failed";
            }
        }
        return "Failed";

    }
 /*   public String postTwoPhotos(String id, String [] ProfileCover) {
        Object [] data = new Object[]{ProfileCover[0],ProfileCover[1]};
        String condition = "usr_id = '" + id +"'" ;
        Boolean boo =  dbFactory.update(Usr.table,user_profile_cover,data,condition);
        // String result = dbFactory.select(Usr.table, "usr_id", condition);
        System.out.println("boolee is"+ boo + ProfileCover[0] + "is pfname" + data[0] ) ;
        if(boo) {
            return ProfileCover[0] + " " + ProfileCover[1];
        } else {
            return "Failed";
        }

    }*/


    public boolean confgOTP_Act(String state, HttpSession session) {
        Object[] data = new Object[] {"eth_act"};
        String condition = "usr_id = " + state;
        String msg = (String)session.getAttribute("msg");

        if(msg == "not_act") {
            session.setAttribute("msg",null);
        }
        return dbFactory.update(Usr.table, conf_act, data, condition);

        // TODO Auto-generated method stub

    }

    public Boolean resendOTP(String to, String otp) {
        Object[] data = new Object[] {otp};
        String condition = "email = '" + to + "'";
        return dbFactory.update(Usr.table, re_otp, data, condition);
    }
    public String setIdFEmail(String to) {
        String condition = "email = '" + to + "'";
        String result = dbFactory.select(Usr.table, "usr_id", condition);
        return result;
    }

    public String chkAndTakId(UsersModel users) {
        String email = users.getEmail();
        String condition = "email = '" + email + "' and active = '" + "eth_act" + "'";
        return dbFactory.select(Usr.table, "usr_id", condition);
    }

    public Object chkExiAndTakId(UsersModel users) {
        String email = users.getEmail();
        String condition = "email = '" + email + "' and active = '" + "not_act" + "'";
        return dbFactory.select(Usr.table, "usr_id", condition);
    }

    public String signinConfigure(String email, String password) {
        String condition = "email = '" + email + "' and password = '" + password + "' and active = '" + "eth_act" + "'";
        return dbFactory.select(Usr.table, "usr_id", condition);
    }
    public String checkEmail(String email)
    {
        String condition = "email = '"+email+"'";
        return dbFactory.select(Usr.table,"usr_id",condition);
    }
    public String selectPf(String id)
    {
        String condition = "usr_id = '"+id+"'";
        return dbFactory.select(Usr.table, "profile", condition);
    }
    public String selectCv(String id)
    {
        String condition = "usr_id = '"+id+"'";
        return dbFactory.select(Usr.table, "cover", condition);
    }
    public String checkPassword(String email,String password)
    {
        String condition = "email = '" + email + "' and password = '" + password + "'";
        return dbFactory.select(Usr.table,"usr_id",condition);
    }
    public String[] selectProfile(String id)
    {
        String condition = "usr_id = '" + id + "'";
        return dbFactory.selectObject(Usr.table,user_data,condition);
    }
}

