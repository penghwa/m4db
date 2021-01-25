/*  
**  M4DB ( Manager Monitor Multiple Machine & DataBase )
**  Copyright (C) 2010-2020 M4DB
**/ 

package com.m4db.clientvo;

import java.util.Date;

/**
 *
* @author penghwa penghwa@msn.com
 */
public class M4ClientOutputitem extends M4ClientOutputresult  implements java.io.Serializable  {

    
    private String itemname;

    public String getItemname() {
        return itemname;
    }

    public void setItemname(String itemname) {
        this.itemname = itemname;
    }
        
}
