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
public class M4ResultOutputDetailVO  implements java.io.Serializable {

    M4ClientOutputresult result;
    List<M4ClientOutputitem> resultItems;

    public M4ResultOutputDetailVO() {
        
    }
    
    public M4ResultOutputDetailVO(M4ClientOutputresult result) {
        this.result = result;
    }
    
    public M4ResultOutputDetailVO(M4ClientOutputresult result,  List<M4ClientOutputitem> items) {
        this.result = result;
        this.resultItems = items;
    }
    
    public M4ClientOutputresult getResult() {
        return result;
    }

    public void setResult(M4ClientOutputresult result) {
        this.result = result;
    }

    public List<M4ClientOutputitem> getResultItems() {
        return resultItems;
    }

    public void setResultItems(List<M4ClientOutputitem> resultItems) {
        this.resultItems = resultItems;
    }
}
