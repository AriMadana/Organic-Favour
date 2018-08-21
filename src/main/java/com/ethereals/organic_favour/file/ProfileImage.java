package com.ethereals.organic_favour.file;

import com.ethereals.organic_favour.dao.UsersDAO;
import org.apache.commons.net.ftp.FTP;
import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.util.Base64;
import org.apache.tomcat.util.http.fileupload.IOUtils;

import javax.servlet.http.HttpSession;
import java.io.*;

public class ProfileImage {
    private FTPClient con = new FTPClient();
    private String FTP_ADDRESS = "ftp.mmhighschool.ml";
    private String LOGIN = "ethereals@mmhighschool.ml";
    private String PSW = "ethereals";
    private String FTP_DIRECTORY_PF = "/profile";
    private String FTP_DIRECTORY_CV = "/cover";
 private    UsersDAO usersDAO = new UsersDAO();
    public String retrieveProfile(String prof_name, String type) {

        ByteArrayOutputStream image = new ByteArrayOutputStream();
        try {
            con.connect(FTP_ADDRESS);

            if (con.login(LOGIN, PSW)) {
                con.enterLocalPassiveMode(); // important!
                con.setFileType(FTP.BINARY_FILE_TYPE);
                if(type == "cover") {
                    con.changeWorkingDirectory(FTP_DIRECTORY_CV);

                    //ftp://ethereals@mmhighschool.ml@ftp.mmhighschool.ml/cover/cv_pop.png
                } else if (type == "profile") {
                    con.changeWorkingDirectory(FTP_DIRECTORY_PF);
                }
//                boolean result = con.storeFile(prof_name, file.getInputStream());
                con.retrieveFile(prof_name, image);

                String base64 = new String(Base64.encodeBase64(image.toByteArray()));
                //byte[] imageBytes = javax.xml.bind.DatatypeConverter.parseBase64Binary(base64Image);
                //ByteArrayInputStream imageStream = new ByteArrayInputStream(imageBytes);
                con.logout();
                con.disconnect();
                //System.out.println("start-->" + base64 + "<--end");
                return base64;

            }


        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e);
            return "Error";
        }
        return "Error";
    }


    public boolean uploadProfile(String prof_name, ByteArrayInputStream image, String info) {
        try {
            con.connect(FTP_ADDRESS);

            if (con.login(LOGIN, PSW)) {
               // String user_id = (String)session.getAttribute("id");
                con.enterLocalPassiveMode(); // important!
                con.setFileType(FTP.BINARY_FILE_TYPE);
                if(info == "cover") {
                    con.changeWorkingDirectory(FTP_DIRECTORY_CV);
                   // System.out.println(prof_name+ "pyae sone phyo");
                    //System.out.println(prof_name);


                } else if (info == "profile") {
                    con.changeWorkingDirectory(FTP_DIRECTORY_PF);
                }

//                boolean result = con.storeFile(prof_name, file.getInputStream());
                con.storeFile(prof_name, image);
                con.logout();
                con.disconnect();
            }
            return true;
        } catch (Exception e) {
            return false;
        }
    }


}
