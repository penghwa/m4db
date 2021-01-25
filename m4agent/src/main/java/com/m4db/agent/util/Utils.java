/*  
**  M4DB ( Manager Monitor Multiple Machine & DataBase )
**  Copyright (C) 2010-2020 M4DB
**/ 

package com.m4db.agent.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.lang.StringUtils;

/**
 *
* @author penghwa penghwa@msn.com
 */
public class Utils {
      public static Date now() {
        return Calendar.getInstance().getTime();
    }
    
    public static Date getDate(long time) {
        Calendar cal =  Calendar.getInstance();
        cal.setTimeInMillis(time);
        return cal.getTime();
    }
    
    public static String formatDate(Date date) {
        if ( date == null )
            return "--";
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String s = df.format(date);
        return s;
    }
    
    public static Date toDate(String str) {
        if ( StringUtils.isEmpty(str) )
            return null;
       SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        try {
            return df.parse(str);
        } catch (ParseException ex) {
            return null;
        }
    }
}
