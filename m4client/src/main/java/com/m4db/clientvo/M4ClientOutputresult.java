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
public class M4ClientOutputresult  implements java.io.Serializable {

    private String hostname;
    private String objectname;
    private Timestamp executetime;
    private String originaloutput;
    private String evalutionresult;
    private Integer resultcode;
    private Integer elapsedtime;
    private String catname;
    private Timestamp recenttime;
    private Integer recentresult;

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
