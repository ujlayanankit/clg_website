package userData;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;


public class passGen
{
	protected String userPass(String user_Email, String fullName)
	{
		String encemail = getMD5(user_Email);
		String encname = getMD5(fullName);
		String temp = getMD5(encname+encemail);
		String password = "";
		for(int i=0; i<temp.length(); i++)
		{
			if(i%4==0)
			{
				password += temp.charAt(i); 
			}
		}
		//Encryption code n logic will here. 
		return password;
	}
	public static String getMD5(String input) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] messageDigest = md.digest(input.getBytes());
            BigInteger number = new BigInteger(1, messageDigest);
            String hashtext = number.toString(16);
            // Now we need to zero pad it if you actually want the full 32 chars.
            while (hashtext.length() < 32) {
                hashtext = "0" + hashtext;
            }
            return hashtext;
        }
        catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }
}
