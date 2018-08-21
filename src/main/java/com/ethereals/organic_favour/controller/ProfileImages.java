package com.ethereals.organic_favour.controller;

import com.ethereals.organic_favour.dao.UsersDAO;
import com.ethereals.organic_favour.file.ProfileImage;
import com.ethereals.organic_favour.ftp.uploadPhoto;
import com.ethereals.organic_favour.model.HostingForm;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpSession;

@Controller
public class ProfileImages {
    UsersDAO userDAO = new UsersDAO();
    com.ethereals.organic_favour.ftp.uploadPhoto uploadPhoto = new uploadPhoto();

    private ProfileImage pfImg = new ProfileImage();
    private String result = "";

    @RequestMapping(value = "/prof_get")
    public @ResponseBody
    String getProfile(HttpSession session) {
        String id = (String)session.getAttribute("id");
        String pfName = userDAO.selectPf(id);
        ProfileImage pfImage = new ProfileImage();
        return pfImage.retrieveProfile(pfName, "profile");
    }
    @RequestMapping(value="/cv_get")
    public @ResponseBody
    String getCV(HttpSession session) {
        String id = (String)session.getAttribute("id");
        String cvName = userDAO.selectCv(id);
        ProfileImage cvImage = new ProfileImage();
        return cvImage.retrieveProfile(cvName, "cover");

    }
/*    @RequestMapping(value = "/prof_cov_upload", method = RequestMethod.POST)
    public @ResponseBody
    String uploadCover(@RequestParam("prof_val") String prof_val, @RequestParam("cov_val") String cov_val, HttpSession session) {
        String id = (String)session.getAttribute("id");
        String result1= uploadPhoto.upload(prof_val,"profile", id);
        String result2= uploadPhoto.upload(cov_val,"cover", id);

        String [] twoPhoto ={prof_val,cov_val};

        uploadPhoto.uploadTwoPhoto(twoPhoto, "profile","cover",id);
        return result1+result2;
    }*/

    @RequestMapping(
            value = "/test_dropzone",
            method = RequestMethod.POST
    )
    public void uploadFile(MultipartHttpServletRequest request) {
//        FTPClient client = new FTPClient();
//        try {
//            Iterator<String> itr = request.getFileNames();
//
//            while (itr.hasNext()) {
//                String uploadedFile = itr.next();
//                MultipartFile file = request.getFile(uploadedFile);
// //               String mimeType = file.getContentType();
//                String filename = file.getOriginalFilename();
// //               byte[] bytes = file.getBytes();
//                System.out.println(filename);



//                System.out.println(filename);
//                try {
//                    client.connect("ftp.mmhighschool.ml");
//                    client.login("ethereals@mmhighschool.ml", "ethereals");
//                    client.enterLocalPassiveMode();
//                    client.storeFile(filename, file.getInputStream());
//                    //
//                    // Create an InputStream of the file to be uploaded
//                    //
//                    //String filename = "Touch.png";
//                    //fis = new FileInputStream(filePath);
//                    //fis = (FileInputStream) file.getInputStream();
//                    //
//                    // Store file to server
//                    //
//                    //client.storeFile(filename, fis);
//                    client.logout();
//                } catch (Exception e) {
//                    e.printStackTrace();
//                    System.out.println(e);
//                }
//            }
//        }
//        catch (Exception e) {
//            return new ResponseEntity<>("{}", HttpStatus.INTERNAL_SERVER_ERROR);
//        }
//
//        return new ResponseEntity<>("{}", HttpStatus.OK);
    }

    @RequestMapping(value = "/cove_upload", method = RequestMethod.POST)
    public @ResponseBody
    void uploadCover(@RequestParam("picture")String picture) {
        System.out.println(picture);

//        FTPClient client = new FTPClient();
//        FileInputStream fis = null;
//
//        try {
//            client.connect("ftp.mmhighschool.ml");
//            client.login("ethereals@mmhighschool.ml", "ethereals");
//
//            //
//            // Create an InputStream of the file to be uploaded
//            //
//            String filename = "Touch.png";
//            fis = new FileInputStream(filePath);
//
//            //
//            // Store file to server
//            //
//            client.storeFile(filename, fis);
//            client.logout();
//        } catch (IOException e) {
//            e.printStackTrace();
//        } finally {
//            try {
//                if (fis != null) {
//                    fis.close();
//                }
//                client.disconnect();
//            } catch (IOException e) {
//                e.printStackTrace();
//            }
//        }
        //Blob b = (Blob) cov_val;
//        System.out.println("FUCKING -> " + cov_val);
        //String id = (String)session.getAttribute("id");
        //String res = uploadPhoto.uploadCover(data, "cover", "56");
        //String user_id  = (String)session.getAttribute("id");
//        if(picture == null) {
//            System.out.println("False Null");
//            //return "False Null";
//        } else {
//            System.out.println("True Null");
//            //return "True Blob";
//        }
    }

    @RequestMapping(value = "/profile_upload",method = RequestMethod.POST)
    public @ResponseBody String uploadProfile(@RequestParam("prof_val")String prof_val, HttpSession session) {
        String id = (String)session.getAttribute("id");
        String result = uploadPhoto.upload(prof_val, "profile",id);
      //  String user_id  = (String)session.getAttribute("id");
       // String [] photo = {prof_val.toString()}

        return result;
    }

    @RequestMapping(value = "/custom_ajax",method = RequestMethod.GET)
    public @ResponseBody void customAjax(@RequestParam("cvDropZoneInput") MultipartFile picture) {
        //  String user_id  = (String)session.getAttribute("id");
        // String [] photo = {prof_val.toString()}
        if(picture == null) {
            System.out.println("False Null");
            //return "False Null";
        } else {
            System.out.println("True Null");
            //return "True Blob";
        }

    }

    @RequestMapping(value = "upload_profile_img", method = RequestMethod.POST)
    public @ResponseBody void updateHosting(@RequestBody HostingForm hostingForm, HttpSession session) {
        //...
        String id = (String)session.getAttribute("id");
        uploadPhoto uphoto = new uploadPhoto();
        if(hostingForm.getImagePfUrl() != null) {
            System.out.println("pf par");
            uphoto.uploadCover(hostingForm.getImagePfUrl(),"profile", id);
        }
        if(hostingForm.getImageCvUrl() != null) {
            System.out.println("cv par");
            uphoto.uploadCover(hostingForm.getImageCvUrl(),"cover", id);
        }


    }


}
