/*  
**  M4DB ( Manager Monitor Multiple Machine & DataBase )
**  Copyright (C) 2010-2020 M4DB
**/ 

package com.m4db.clientvo;

import java.sql.Timestamp;
import java.util.Date;

/**
 *
* @author penghwa penghwa@msn.com
 */
public class M4warndealVO  implements java.io.Serializable{
    private String hostname;
    private String objectname;
    private int status;
    private Timestamp executetime;
    private String dealer;
    private String remarks;
    private Date expecttime;
    private int removewarn;
    private String enkey;
    private int withminutes;
    private String dealresult ;
    private Date actualtime;
    private String snatcher ;
    private int resultcode;
    private String catname;
    private int suspendflag;

    public int getSuspendflag() {
        return suspendflag;
    }

    public void setSuspendflag(int suspendflag) {
        this.suspendflag = suspendflag;
    }
    
    public String getCatname() {
        return catname;
    }

    public void setCatname(String catname) {
        this.catname = catname;
    }

    public int getResultcode() {
        return resultcode;
    }

    public void setResultcode(int resultcode) {
        this.resultcode = resultcode;
    }
    
    public Date getActualtime() {
        return actualtime;
    }

    public void setActualtime(Date actualtime) {
        this.actualtime = actualtime;
    }

    public String getDealresult() {
        return dealresult;
    }

    public void setDealresult(String dealresult) {
        this.dealresult = dealresult;
    }

    public String getSnatcher() {
        return snatcher;
    }

    public void setSnatcher(String snatcher) {
        this.snatcher = snatcher;
    }
    
    public String getDealer() {
        return dealer;
    }

    public void setDealer(String dealer) {
        this.dealer = dealer;
    }

    public String getEnkey() {
        return enkey;
    }

    public void setEnkey(String enkey) {
        this.enkey = enkey;
    }

    public Timestamp getExecutetime() {
        return executetime;
    }

    public void setExecutetime(Timestamp executetime) {
        this.executetime = executetime;
    }

    public Date getExpecttime() {
        return expecttime;
    }

    public void setExpecttime(Date expecttime) {
        this.expecttime = expecttime;
    }

    public String getHostname() {
        return hostname;
    }

    public void setHostname(String hostname) {
        this.hostname = hostname;
    }

    public String getObjectname() {
        return objectname;
    }

    public void setObjectname(String objectname) {
        this.objectname = objectname;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public int getRemovewarn() {
        return removewarn;
    }

    public void setRemovewarn(int removewarn) {
        this.removewarn = removewarn;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getWithminutes() {
        return withminutes;
    }

    public void setWithminutes(int withminutes) {
        this.withminutes = withminutes;
    }
    
}
