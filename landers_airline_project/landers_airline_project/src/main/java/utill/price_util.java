package utill;

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
}
