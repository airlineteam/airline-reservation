package utill;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class date_util {

    // 날짜와 시간을 사용자가 보기 쉽게 출력하는 함수
    // 202401181622 -> 2024년 01월 18일 16시 22분
    public static String toDates(String mdate) {
        // 날짜형식
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 HH시 mm분");

        String s = mdate.substring(0, 4) + "-" // yyyy
                + mdate.substring(4, 6) + "-" // MM
                + mdate.substring(6, 8) + " " // dd
                + mdate.substring(8, 10) + ":" // HH
                + mdate.substring(10, 12) + ":00"; // mm:ss

        Timestamp d = Timestamp.valueOf(s);
        return sdf.format(d);
    }
}
