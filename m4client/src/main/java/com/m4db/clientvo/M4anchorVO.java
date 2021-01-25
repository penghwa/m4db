/*  
**  M4DB ( Manager Monitor Multiple Machine & DataBase )
**  Copyright (C) 2010-2020 M4DB
**/ 

package com.m4db.clientvo;

import java.util.List;

/**
 * 机房定义的锚点是机柜（
 * 机构定义的锚点关联机器
* @author penghwa penghwa@msn.com
 */
public class M4anchorVO implements java.io.Serializable {
    private String auid ;
    private String gname;
    private String aname ;
    private String adesc;
    private String locinfo ;
    private String cgname;
    
    private List<String> hosts;

    public String getAdesc() {
        return adesc;
    }

    public void setAdesc(String adesc) {
        this.adesc = adesc;
    }

    public String getAname() {
        return aname;
    }

    public void setAname(String aname) {
        this.aname = aname;
    }

    public String getAuid() {
        return auid;
    }

    public void setAuid(String auid) {
        this.auid = auid;
    }

    public String getCgname() {
        return cgname;
    }

    public void setCgname(String cgname) {
        this.cgname = cgname;
    }

    public String getGname() {
        return gname;
    }

    public void setGname(String gname) {
        this.gname = gname;
    }

    public List<String> getHosts() {
        return hosts;
    }

    public void setHosts(List<String> hosts) {
        this.hosts = hosts;
    }

    public String getLocinfo() {
        return locinfo;
    }

    public void setLocinfo(String locinfo) {
        this.locinfo = locinfo;
    }
}
