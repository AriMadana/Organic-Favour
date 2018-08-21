package com.ethereals.organic_favour.ftp;

import org.apache.commons.net.ftp.FTPClient;
import org.springframework.web.multipart.MultipartFile;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.SocketException;
import java.net.URL;
import java.net.URLConnection;

public class FTPService {
    private FTPClient ftpClient = null;
    private FileOutputStream foStream = null;
    private String FTP_URL = "ftp://%s:%s@%s/%s;type=i";
    private String FTP_ADDRESS = "ftp.mmhighschool.ml";
    private String LOGIN = "ethereals@mmhighschool.ml";
    private String PSW = "ethereals";
    private String FTP_DIRECTORY_PF = "/profile";
    private String FTP_DIRECTORY_CV = "/cover";
    private String FTP_DIRECTORY_FM = "/farm";
    private String FTP_DIRECTORY_PO = "/post";

    public void readImage(String fileName, String type) {
        FTP_URL = String.format(FTP_URL, LOGIN, PSW, FTP_ADDRESS, FTP_DIRECTORY_PF);
        try {
            URL url = new URL(FTP_URL);
            URLConnection conn = url.openConnection();
            InputStream inputStream = conn.getInputStream();
            if (ftpClient.login(LOGIN, PSW)) {
                ftpClient.enterLocalPassiveMode();
                if (type == "profile"){
                    ftpClient.changeWorkingDirectory(FTP_DIRECTORY_PF);
                } else if (type == "cover") {
                    ftpClient.changeWorkingDirectory(FTP_DIRECTORY_CV);
                } else if (type == "farm") {
                    ftpClient.changeWorkingDirectory(FTP_DIRECTORY_FM);
                } else if (type == "post") {
                    ftpClient.changeWorkingDirectory(FTP_DIRECTORY_PO);
                }
                ftpClient.retrieveFile("pop.jpg", foStream);
                //boolean result = ftpClient.storeFile(multipartFile.getOriginalFilename(), multipartFile.getInputStream());

                ftpClient.logout();
                ftpClient.disconnect();
            } else {
            }
            System.out.println("Success");

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e);
        }
//        System.out.println(fileName + type);
//        ftpClient = null;
//        try {
//            ftpClient.connect(FTP_ADDRESS);
//            if (ftpClient.login(LOGIN, PSW)) {
//                ftpClient.enterLocalPassiveMode();
//                if (type == "profile"){
//                    ftpClient.changeWorkingDirectory(FTP_DIRECTORY_PF);
//                } else if (type == "cover") {
//                    ftpClient.changeWorkingDirectory(FTP_DIRECTORY_CV);
//                } else if (type == "farm") {
//                    ftpClient.changeWorkingDirectory(FTP_DIRECTORY_FM);
//                } else if (type == "post") {
//                    ftpClient.changeWorkingDirectory(FTP_DIRECTORY_PO);
//                }
////                ftpClient.retrieveFile("pop.jpg", foStream);
//                ftpClient.logout();
//                ftpClient.disconnect();
//                System.out.println("finished");
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//            System.out.println(e);
//        }
    }

    public void deleteImage(String fileName) {

    }

    public boolean uploadFile(String pj_type, MultipartFile multipartFile) {
        ftpClient = null;
        try {
            ftpClient.connect(FTP_ADDRESS);
            if (ftpClient.login(LOGIN, PSW)) {
                ftpClient.enterLocalPassiveMode();
                if (pj_type == "profile"){
                    ftpClient.changeWorkingDirectory(FTP_DIRECTORY_PF);
                } else if (pj_type == "cover") {
                    ftpClient.changeWorkingDirectory(FTP_DIRECTORY_CV);
                } else if (pj_type == "farm") {
                    ftpClient.changeWorkingDirectory(FTP_DIRECTORY_FM);
                } else if (pj_type == "post") {
                    ftpClient.changeWorkingDirectory(FTP_DIRECTORY_PO);
                }

                boolean result = ftpClient.storeFile(multipartFile.getOriginalFilename(), multipartFile.getInputStream());

                ftpClient.logout();
                ftpClient.disconnect();
                if (result) {
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }

        } catch (Exception e) {
            return false;
        }
//        FTPClient con = null;
//
//        try {
//            con = new FTPClient();
//            con.connect(FTP_ADDRESS);
//
//            if (con.login(LOGIN, PSW)) {
//                con.enterLocalPassiveMode(); // important!
//                con.setFileType(FTP.BINARY_FILE_TYPE);
//                con.changeWorkingDirectory(FTP_DIRECTORY);
//                boolean result = con.storeFile(file.getOriginalFilename(), file.getInputStream());
//                con.logout();
//                con.disconnect();
//                redirectAttributes.addFlashAttribute("message",
//                        "You successfully uploaded " + file.getOriginalFilename() + "!");
//            }
//        } catch (Exception e) {
//            redirectAttributes.addFlashAttribute("message",
//                    "Could not upload " + file.getOriginalFilename() + "!");
//        }
    }

}
