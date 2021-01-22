/*  
**  M4DB ( Manager Monitor Multiple Machine & DataBase )
**  Copyright (C) 2010-2020 M4DB
**/ 

package com.m4db.command;

import com.m4db.agent.M4dbAgent;
import com.m4db.message.ResultMessage;
import org.apache.mina.core.service.IoService;

/**
 *
* @author penghwa penghwa@msn.com
 */
public abstract class BaseCommand implements IM4Command {
    private IoService agent;
    private ResultMessage result;
    
     
    public ResultMessage getResult() {
        return result;
    }
     
    public IoService getAgent() {
        return agent;
    }

     
    public void setAgent(IoService agent) {
        this.agent = agent;
    }
    
    public BaseCommand(IoService agent) {
        this.agent = agent;
        this.result = new ResultMessage();
    }
}
