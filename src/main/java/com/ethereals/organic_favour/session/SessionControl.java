package com.ethereals.organic_favour.session;
import com.ethereals.organic_favour.dao.UsersDAO;
import com.ethereals.organic_favour.model.UsersModel;

public class SessionControl {
    UsersDAO usersDAO = new UsersDAO();
    public String checkUserAct(UsersModel users) {
        return usersDAO.chkAndTakId(users);
    }

    public Object checkUserExi(UsersModel users) {
        return usersDAO.chkExiAndTakId(users);
    }
}
