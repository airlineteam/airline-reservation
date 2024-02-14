package utill;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;



import javax.xml.crypto.Data;

import com.google.protobuf.Timestamp;

public class date_util {

    
    public static String tooDates(String mdate) {
    	String s = mdate.substring(8, 10) + ":"
    			 + mdate.substring(10,12);
    	
    	return s;
    }
    
    public static String travel_time(String ddate, String adate) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmm");

        try {
            Date date1 = sdf.parse(ddate);
            Date date2 = sdf.parse(adate);

            long diff = date2.getTime() - date1.getTime();

            long diffHours = diff / (60 * 60 * 1000);
            long diffMinutes = (diff / (60 * 1000)) % 60;

            // Format the result
            String result = "";
            if (diffHours > 0) {
                result += diffHours + "시간 ";
            }
            if (diffMinutes > 0) {
                result += diffMinutes + "분";
            }

            return result.trim(); // Remove trailing space if any
        } catch (ParseException e) {
            e.printStackTrace();
            return ""; // Handle the exception appropriately
        }
    }
    
    public static String toDates(String mdate) {
	   
    	String y = mdate.substring(0,4);
    	String m = mdate.substring(4,6);
    	String d = mdate.substring(6,8);
    	
    	String ymd = y + "년 " + m +"월 " + d + "일";
    			
    	return ymd;
	}


}
