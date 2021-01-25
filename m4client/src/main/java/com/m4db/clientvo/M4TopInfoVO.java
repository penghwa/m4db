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
public class M4TopInfoVO implements java.io.Serializable {
    private String topname;
    private List<M4toplinevo> lines;

    public List<M4toplinevo> getLines() {
        return lines;
    }

    public void setLines(List<M4toplinevo> lines) {
        this.lines = lines;
    }

    public List<M4topnodevo> getNodes() {
        return nodes;
    }

    public void setNodes(List<M4topnodevo> nodes) {
        this.nodes = nodes;
    }

    public String getTopname() {
        return topname;
    }

    public void setTopname(String topname) {
        this.topname = topname;
    }
    private List<M4topnodevo> nodes;
}
