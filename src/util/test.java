package util;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;

public class test {
    public static void main(String[] args) {
        MD5 md5=new MD5();
        String pwd="";
        try {
            pwd=md5.EncoderByMd5("admin");
            System.out.println(pwd);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        DateUtil dateUtil=new DateUtil();
        int id = dateUtil.getId();
        System.out.println(id);
    }
}
