/*  
**  M4DB ( Manager Monitor Multiple Machine & DataBase )
**  Copyright (C) 2010-2020 M4DB
**/ 

package com.m4db.clientvo;

import java.util.List;

/**
 *
* @author penghwa penghwa@msn.com
 */
public class M4topnodevo implements java.io.Serializable {
    private List<String> hosts;
    private List<M4ClientOutputResultVO> items;
    private String nodename;
    private String uuid;
    private String locinfo;
    private String cmnts;
    private String nodetype;
    private String topname;

    public String getTopname() {
        return topname;
    }

    public void setTopname(String topname) {
        this.topname = topname;
    }
    
    public String getNodetype() {
        return nodetype;
    }

    public void setNodetype(String nodetype) {
        this.nodetype = nodetype;
    }
    
    public String getCmnts() {
        return cmnts;
    }

    public void setCmnts(String cmnts) {
        this.cmnts = cmnts;
    }

    public List<String> getHosts() {
        return hosts;
    }

    public void setHosts(List<String> hosts) {
        this.hosts = hosts;
    }

    public List<M4ClientOutputResultVO> getItems() {
        return items;
    }

    public void setItems(List<M4ClientOutputResultVO> items) {
        this.items = items;
    }

    public String getLocinfo() {
        return locinfo;
    }

    public void setLocinfo(String locinfo) {
        this.locinfo = locinfo;
    }

    public String getNodename() {
        return nodename;
    }

    public void setNodename(String nodename) {
        this.nodename = nodename;
    }

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }
    
}
