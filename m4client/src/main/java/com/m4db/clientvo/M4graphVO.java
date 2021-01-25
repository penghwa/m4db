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
public class M4graphVO  implements java.io.Serializable{
    private String gname ;
    private int gtype;
    private String pname;
    private String locinfo;
    private String bgwidth;
    private String bgheight;
    private String showzoom ;
    
    public static int GROOM = 0 ;
    public static int GCUP = 1 ;
    public static int GALL = -1 ;
    
    private List<M4anchorVO> anchors;

    public List<M4anchorVO> getAnchors() {
        return anchors;
    }

    public void setAnchors(List<M4anchorVO> anchors) {
        this.anchors = anchors;
    }
    
    public String getBgheight() {
        return bgheight;
    }

    public void setBgheight(String bgheight) {
        this.bgheight = bgheight;
    }

    public String getBgwidth() {
        return bgwidth;
    }

    public void setBgwidth(String bgwidth) {
        this.bgwidth = bgwidth;
    }

    public String getGname() {
        return gname;
    }

    public void setGname(String gname) {
        this.gname = gname;
    }

    public int getGtype() {
        return gtype;
    }

    public void setGtype(int gtype) {
        this.gtype = gtype;
    }

    public String getLocinfo() {
        return locinfo;
    }

    public void setLocinfo(String locinfo) {
        this.locinfo = locinfo;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getShowzoom() {
        return showzoom;
    }

    public void setShowzoom(String showzoom) {
        this.showzoom = showzoom;
    }
    
}
