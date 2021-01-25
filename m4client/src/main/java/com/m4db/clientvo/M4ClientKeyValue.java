/*  
**  M4DB ( Manager Monitor Multiple Machine & DataBase )
**  Copyright (C) 2010-2020 M4DB
**/ 

package com.m4db.clientvo;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * key-value,用于到客户端数据的传输
* @author penghwa penghwa@msn.com
 */
public class M4ClientKeyValue implements java.io.Serializable {
    private String key;
    private String value;
    private String type;

    public M4ClientKeyValue(String key, String value) {
        this.key = key;
        this.value = value;
        this.type = "string";
    }
    
    public M4ClientKeyValue(String key, Object value, String type) {
        this.key = key;
        this.type = type;
        if ( ("date".equalsIgnoreCase(type) || "timestamp".equalsIgnoreCase(type)) &&
                (value instanceof Date || value instanceof Timestamp) ) {
           SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
           String s = df.format(value); 
           this.value = s;
        }
        else
            this.value = String.valueOf(value);
    }
    
    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }
    
}
