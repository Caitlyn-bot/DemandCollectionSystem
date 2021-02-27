package util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

public class DateUtil {
    private static SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
    public static int getId(){
        Random random = new Random();
        Date date = new Date();
        int resu = Integer.parseInt(sdf.format(System.currentTimeMillis()).toString()+(random.nextInt(10)+10));
        return resu;
    }

}
