package utill;

import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.Locale;

public class price_util {

	public static String price_numA(String price) {
		
		int pricenum = Integer.parseInt(price);
		pricenum = pricenum*3;
		String price_t = Integer.toString(pricenum);
		
		return price_t;
	}
	
	public static String price_numB(String price) {
		
		int pricenum = Integer.parseInt(price);
		pricenum = pricenum*2;
		String price_t = Integer.toString(pricenum);
		
		return price_t;
	}
	
	public static String price_dot(String price) {
		 try {
		        // Parse the input string as a number
		        double amount = Double.parseDouble(price);
		        
		        // Use NumberFormat to format the number with commas
		        DecimalFormat formatter = (DecimalFormat) NumberFormat.getInstance(Locale.US);
		        formatter.applyPattern("#,###");
		        
		        return formatter.format(amount);
		    } catch (NumberFormatException e) {
		        // Handle the case where the input is not a valid number
		        e.printStackTrace();
		        return "Invalid Input";
		    }
	}
}
