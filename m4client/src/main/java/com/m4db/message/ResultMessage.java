/*  
**  M4DB ( Manager Monitor Multiple Machine & DataBase )
**  Copyright (C) 2010-2020 M4DB
**/ 

package com.m4db.message;

import java.util.Date;

/**
 *
* @author penghwa penghwa@msn.com
 */
public class ResultMessage implements java.io.Serializable {
    public static int ERROR = 1;
    public static int OK = 0;
    
    private String agentServer;    //服务器的名称
    private String objectName;
    private String catName;
    private CommandType commandType;
    private Object result;
    private int retCode;
    private Date runDate;

    public Date getRunDate() {
        return runDate;
    }

    public void setRunDate(Date runDate) {
        this.runDate = runDate;
    }
    
    public String getAgentServer() {
        return agentServer;
    }

    public void setAgentServer(String agentServer) {
        this.agentServer = agentServer;
    }

    public String getCatName() {
        return catName;
    }

    public void setCatName(String catName) {
        this.catName = catName;
    }

    public CommandType getCommandType() {
        return commandType;
    }

    public void setCommandType(CommandType commandType) {
        this.commandType = commandType;
    }

    public String getObjectName() {
        return objectName;
    }

    public void setObjectName(String objectName) {
        this.objectName = objectName;
    }

    public Object getResult() {
        return result;
    }

    public void setResult(Object result) {
        this.result = result;
    }

    public int getRetCode() {
        return retCode;
    }

    public void setRetCode(int retCode) {
        this.retCode = retCode;
    }
    
    @Override
    public String toString() {
       try {
        return String.format("result:%s, ret=%d", result.toString(), retCode) ;
       } catch ( Exception ex ) {
           return String.format("result exception:", ex.getMessage());
       }
    }
}
