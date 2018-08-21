package com.ethereals.organic_favour.ftp;

import com.ethereals.organic_favour.dao.UsersDAO;
import com.ethereals.organic_favour.file.ProfileImage;

import javax.servlet.http.HttpSession;
import java.io.ByteArrayInputStream;
import java.nio.charset.Charset;
import java.security.SecureRandom;
import java.util.Random;
import java.util.UUID;

public class uploadPhoto {
    private ProfileImage pfImg = new ProfileImage();
    private UsersDAO usersDAO = new UsersDAO();

    static final String AB = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
    static SecureRandom rnd = new SecureRandom();






    public String upload(String cov_val, String photo, String id){
        String fmtCheck = cov_val.split(",")[0];
        String base64Image = cov_val.split(",")[1];
        String extension = "jpg";
        String imgName;
        switch (fmtCheck) {
            case "data:image/jpeg;base64":
                extension = "jpeg";
                break;
            case "data:image/png;base64":
                extension = "png";
                break;
            case "data:image/jpg;base64":
                extension = "jpg";
                break;
        }


        //String validCharacters = $('0', '9').join() + $('A', 'Z').join();

        byte[] imageBytes = javax.xml.bind.DatatypeConverter.parseBase64Binary(base64Image);
        ByteArrayInputStream imageStream = new ByteArrayInputStream(imageBytes);

       /* byte[] array = new byte[30]; // length is bounded by 7
        new Random().nextBytes(array);*/
       // String generatedString = new String(array, Charset.forName("UTF-8"));
        imgName = randomString(24) +  ".png";

  //  imgName = "Nameishere";
        if(pfImg.uploadProfile(imgName, imageStream, photo)) {
            return usersDAO.postProfile(id, imgName);
        } else {
            return "Failed";
        }


        //
    }
    public String uploadCover(String cov_val, String photo, String id){
        String fmtCheck = cov_val.split(",")[0];
        String base64Image = cov_val.split(",")[1];
        String extension = "jpg";
        String imgName;
        switch (fmtCheck) {
            case "data:image/jpeg;base64":
                extension = "jpeg";
                break;
            case "data:image/png;base64":
                extension = "png";
                break;
            case "data:image/jpg;base64":
                extension = "jpg";
                break;
        }


        //String validCharacters = $('0', '9').join() + $('A', 'Z').join();

        byte[] imageBytes = javax.xml.bind.DatatypeConverter.parseBase64Binary(base64Image);
        ByteArrayInputStream imageStream = new ByteArrayInputStream(imageBytes);

        byte[] array = new byte[30]; // length is bounded by 7
        new Random().nextBytes(array);
        // String generatedString = new String(array, Charset.forName("UTF-8"));
        imgName = randomString(24) +  ".png";
        //  imgName = "Nameishere";
        if(pfImg.uploadProfile(imgName, imageStream, photo)) {
            //return "true";
            return usersDAO.postCover(id, imgName, photo);
        } else {
            return "Failed";
        }


        //
    }

/*    public String uploadTwoPhoto(String[] twoPhoto, String profile,String cover, String id){


        String base64ImageProfile = twoPhoto[0].split(",")[1];
        String base64ImageCover = twoPhoto[1].split(",")[1];

        String imgNameProfile,imgNameCover;



        //String validCharacters = $('0', '9').join() + $('A', 'Z').join();

        byte[] imageBytesProfile = javax.xml.bind.DatatypeConverter.parseBase64Binary(base64ImageProfile);
        byte[] imageBytesCover= javax.xml.bind.DatatypeConverter.parseBase64Binary(base64ImageCover);
        ByteArrayInputStream imageStreamProfile = new ByteArrayInputStream(imageBytesProfile);
        ByteArrayInputStream imageStreamCover= new ByteArrayInputStream(imageBytesCover);

       *//* byte[] array = new byte[30]; // length is bounded by 7
        new Random().nextBytes(array);*//*
        // String generatedString = new String(array, Charset.forName("UTF-8"));
        imgNameProfile = randomString(24) +  ".png";
        imgNameCover = randomString(24) +  ".png";

        //  imgName = "Nameishere";
        if(        (pfImg.uploadProfile(imgNameProfile, imageStreamProfile,profile)) &&  (pfImg.uploadProfile(imgNameCover, imageStreamCover,cover))){
                    System.out.print("MAN TAL KWA");

           // return usersDAO.postProfile(id, imgName);
            return usersDAO.postTwoPhotos(id,twoPhoto);
        } else {

            return "Failed";
        }


        //
    }*/



    String randomString( int len ){
        StringBuilder sb = new StringBuilder( len );
        for( int i = 0; i < len; i++ )
            sb.append( AB.charAt( rnd.nextInt(AB.length()) ) );
        return sb.toString();
    }


}
