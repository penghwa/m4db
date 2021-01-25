/*  
**  M4DB ( Manager Monitor Multiple Machine & DataBase )
**  Copyright (C) 2010-2020 M4DB
**/ 

package com.m4db.message;

/**
 *
* @author penghwa penghwa@msn.com
 */
public class EOFMessage implements java.io.Serializable{
    private String eof;

    public String getEof() {
        return eof;
    }

    public void setEof(String eof) {
        this.eof = eof;
    }
    public EOFMessage() {
        eof = "<EOF_COMMAND>";
    }
}
