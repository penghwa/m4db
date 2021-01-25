/*  
**  M4DB ( Manager Monitor Multiple Machine & DataBase )
**  Copyright (C) 2010-2020 M4DB
**/ 

package com.m4db.message;

import java.util.HashMap;
import java.util.Map;

/**
 *
* @author penghwa penghwa@msn.com
 */
public class CommandMessage implements java.io.Serializable {
    private CommandType command;   //命令类型
    private String script;    //脚本
    private String agentServer;

    public String getAgentServer() {
        return agentServer;
    }

    public void setAgentServer(String agentServer) {
        this.agentServer = agentServer;
    }
    private String objectName;
    private String catName;
    private Map<String, String> arguments;   //参数

    public Map<String, String> getArguments() {
        if ( arguments == null )
            arguments = new HashMap<String, String>();
        return arguments;
    }

    public void setArguments(Map<String, String> arguments) {
        this.arguments = arguments;
    }

    public String getCatName() {
        return catName;
    }

    public void setCatName(String catname) {
        this.catName = catname;
    }

    public CommandType getCommand() {
        return command;
    }

    public void setCommand(CommandType command) {
        this.command = command;
    }

    public String getObjectName() {
        return objectName;
    }

    public void setObjectName(String objectname) {
        this.objectName = objectname;
    }

    public String getScript() {
        return script;
    }

    public void setScript(String script) {
        this.script = script;
    }
    
    @Override
    public String toString() {
       return String.format("type=%s, script=%s", command.toString(), script);
    }
}
