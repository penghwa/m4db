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
public class M4ResultOutputListVO  implements java.io.Serializable {
    private List<M4ClientOutputresult> output;
    private List<M4ClientOutputitem> items;

    public List<M4ClientOutputitem> getItems() {
        return items;
    }

    public void setItems(List<M4ClientOutputitem> items) {
        this.items = items;
    }

    public List<M4ClientOutputresult> getOutput() {
        return output;
    }

    public void setOutput(List<M4ClientOutputresult> output) {
        this.output = output;
    }
}
