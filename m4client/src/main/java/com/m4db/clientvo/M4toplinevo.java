/*  
**  M4DB ( Manager Monitor Multiple Machine & DataBase )
**  Copyright (C) 2010-2020 M4DB
**/ 

package com.m4db.clientvo;

/**
 *
* @author penghwa penghwa@msn.com
 */
public class M4toplinevo implements java.io.Serializable {
    private String linename;
    private String startuuid;
    private String enduuid;
    private String status;

    public String getEnduuid() {
        return enduuid;
    }

    public void setEnduuid(String enduuid) {
        this.enduuid = enduuid;
    }

    public String getLinename() {
        return linename;
    }

    public void setLinename(String linename) {
        this.linename = linename;
    }

    public String getStartuuid() {
        return startuuid;
    }

    public void setStartuuid(String startuuid) {
        this.startuuid = startuuid;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
    
}
