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
public class M4ClientOutputResultVO implements java.io.Serializable {
    private String hostip;

    public String getHostip() {
        return hostip;
    }

    public void setHostip(String hostip) {
        this.hostip = hostip;
    }
    private String hostname;
    private String objectname;
    private String catname;
    private Timestamp executetime;
    private Integer resultcode;
    private Integer elapsedtime;
    private String originaloutput;
    private String evalutionresult;
    private Date lastexecutetime;
    private String lastevalutionresult;
    private Integer lastresultcode;
    private String dealer;
    private String remarks;
    private Date expecttime;
    private int removewarn;
    private int flushinterval;
    private String spage;
    private int objecttype;
    private Timestamp recenttime;
    private Integer recentresult;
    private int hoststatus ;
    private int objstatus ;

    public int getHoststatus() {
        return hoststatus;
    }

    public void setHoststatus(int hoststatus) {
        this.hoststatus = hoststatus;
    }

    public int getObjstatus() {
        return objstatus;
    }

    public void setObjstatus(int objstatus) {
        this.objstatus = objstatus;
    }
    
    public Integer getRecentresult() {
        return recentresult;
    }

    public void setRecentresult(Integer recentresult) {
        this.recentresult = recentresult;
    }

    public Timestamp getRecenttime() {
        return recenttime;
    }

    public void setRecenttime(Timestamp recenttime) {
        this.recenttime = recenttime;
    }
    
    public int getObjecttype() {
        return objecttype;
    }

    public void setObjecttype(int objecttype) {
        this.objecttype = objecttype;
    }
    
    
    public String getSpage() {
        return spage;
    }

    public void setSpage(String spage) {
        this.spage = spage;
    }
    
    public int getFlushinterval() {
        return flushinterval;
    }

    public void setFlushinterval(int flushinterval) {
        this.flushinterval = flushinterval;
    }
    
    public int getRemovewarn() {
        return removewarn;
    }

    public void setRemovewarn(int removewarn) {
        this.removewarn = removewarn;
    }
    
    public Date getExpecttime() {
        return expecttime;
    }

    public void setExpecttime(Date expecttime) {
        this.expecttime = expecttime;
    }
    
    public String getDealer() {
        return dealer;
    }

    public void setDealer(String dealer) {
        this.dealer = dealer;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }
    
    public String getCatname() {
        return catname;
    }

    public void setCatname(String catname) {
        this.catname = catname;
    }

    public Integer getElapsedtime() {
        return elapsedtime;
    }

    public void setElapsedtime(Integer elapsedtime) {
        this.elapsedtime = elapsedtime;
    }

    public String getEvalutionresult() {
        return evalutionresult;
    }

    public void setEvalutionresult(String evalutionresult) {
        this.evalutionresult = evalutionresult;
    }

    public Timestamp getExecutetime() {
        return executetime;
    }

    public void setExecutetime(Timestamp executetime) {
        this.executetime = executetime;
    }

    public String getHostname() {
        return hostname;
    }

    public void setHostname(String hostname) {
        this.hostname = hostname;
    }

    public String getLastevalutionresult() {
        return lastevalutionresult;
    }

    public void setLastevalutionresult(String lastevalutionresult) {
        this.lastevalutionresult = lastevalutionresult;
    }

    public Date getLastexecutetime() {
        return lastexecutetime;
    }

    public void setLastexecutetime(Date lastexecutetime) {
        this.lastexecutetime = lastexecutetime;
    }

    public Integer getLastresultcode() {
        return lastresultcode;
    }

    public void setLastresultcode(Integer lastresultcode) {
        this.lastresultcode = lastresultcode;
    }

    public String getObjectname() {
        return objectname;
    }

    public void setObjectname(String objectname) {
        this.objectname = objectname;
    }

    public String getOriginaloutput() {
        return originaloutput;
    }

    public void setOriginaloutput(String originaloutput) {
        this.originaloutput = originaloutput;
    }

    public Integer getResultcode() {
        return resultcode;
    }

    public void setResultcode(Integer resultcode) {
        this.resultcode = resultcode;
    }
}
