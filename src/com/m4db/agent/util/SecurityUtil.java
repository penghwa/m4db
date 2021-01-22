/*  
**  M4DB ( Manager Monitor Multiple Machine & DataBase )
**  Copyright (C) 2010-2020 M4DB
**/ 

package com.m4db.agent.util;

import com.m4db.clientvo.Hex;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

/**
 *
* @author penghwa penghwa@msn.com
 */
public class SecurityUtil {
    
    public static String getResitryKey(String val) {
        return encrypt(val);
    }
    
    public static byte[] MKEY = new byte[] {  17,19,32,36, 56,68,79,81   } ;
    
    public static String encrypt( String password  )  {
        
                if ( password.startsWith("DES{") && password.endsWith("}") )
                    return password;
                try {
		Cipher cipher = Cipher.getInstance( "DES" ) ;

		SecretKeySpec key = new SecretKeySpec(  MKEY , "DES" ) ;
		
		cipher.init( Cipher.ENCRYPT_MODE , key );
		
		byte[] bts = cipher.doFinal( password.getBytes( "ISO-8859-1") ) ;
		
		return  "DES{"+Hex.asHex( bts ).substring( "0x".length() )+"}" ; 
                }
                catch ( Exception e ) {
                    return password;
                }
	}
	
	public static String decrypt( String password   )  {
            String str = password;
            
             if ( password.startsWith("DES{") && password.endsWith("}") )
                  str = password.substring(4, password.length()-1);
             else
                 return password;
             try {
		Cipher cipher = Cipher.getInstance( "DES" ) ;
		
		SecretKeySpec key = new SecretKeySpec(  MKEY , "DES" ) ;
		
		cipher.init( Cipher.DECRYPT_MODE , key );
		
		byte[] bts = str.getBytes( "ISO-8859-1" ) ;
		
		bts = Hex.fromHexString( bts , bts.length ) ;
		
		bts = cipher.doFinal( bts ) ;
             
		return new String( bts , "ISO-8859-1") ;
             } catch ( Exception e ) {
                 e.printStackTrace();
                 return password;
             }
	}

}
