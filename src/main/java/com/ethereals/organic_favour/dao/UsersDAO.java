package com.ethereals.organic_favour.dao;


import com.ethereals.organic_favour.db.DBFactory;
import com.ethereals.organic_favour.db.Usr;
import com.ethereals.organic_favour.model.UsersModel;

public class UsersDAO {
    private DBFactory dbFactory;

    private final String[] columns1 = new String[] {Usr.usrId, Usr.email, Usr.password};
    private final String[] init_reg = new String[] {Usr.email, Usr.password, Usr.active, Usr.otp};
    private final String[] del_otp = new String[] {Usr.otp};
    private final String[] conf_act = new String[] {Usr.active};
    private final String[] re_otp = new String[] {Usr.otp};

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

    public boolean confgOTP_Act(String state) {
        Object[] data = new Object[] {"eth_act"};
        String condition = "usr_id = " + state;
        return dbFactory.update(Usr.table, conf_act, data, condition);
        // TODO Auto-generated method stub

    }

    public Boolean resendOTP(String to, String otp) {
        Object[] data = new Object[] {otp};
        String condition = "email = '" + to + "'";
        return dbFactory.update(Usr.table, re_otp, data, condition);
    }

    public String signinConfigure(String email, String password) {
        String condition = "email = '" + email + "' and password = '" + password + "'";
        return dbFactory.select(Usr.table, "usr_id", condition);
    }
    public String checkEmail(String email)
    {
        String condition = "email = '"+email+"'";
        return dbFactory.select(Usr.table,"usr_id",condition);
    }
    public String checkPassword(String email,String password)
    {
        String condition = "email = '" + email + "' and password = '" + password + "'";
        return dbFactory.select(Usr.table,"usr_id",condition);
    }
}

