package com.trantor.batchmate.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

public class EncryptionUtility 
{
	private static String salt;
	private static String securePassword;
	
	public static String encrypt(String password)
	{
		try
		{
			salt = getSalt();
			securePassword = get_SHA_1_SecurePassword(password, salt);
		}
		catch(NoSuchAlgorithmException e)
		{
			e.printStackTrace();
		}
		
		return securePassword;
	}
	
	private static String get_SHA_1_SecurePassword(String passwordToHash, String salt)
	{
		String generatedPassword = null;
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-1");
			md.update(salt.getBytes());
			byte[] bytes = md.digest(passwordToHash.getBytes());
			
			StringBuilder sb = new StringBuilder();
			for(int i=0; i< bytes.length ;i++)
			{
				sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
			}
			generatedPassword = sb.toString();
		} 
		catch (NoSuchAlgorithmException e) 
		{
			e.printStackTrace();
		}
		return generatedPassword;
	}
	
	//Add salt
		private static String getSalt() throws NoSuchAlgorithmException
		{
			SecureRandom sr = SecureRandom.getInstance("SHA1PRNG");
			byte[] salt = new byte[16];
			sr.nextBytes(salt);
			return salt.toString();
		}

}
