/*  
**  M4DB ( Manager Monitor Multiple Machine & DataBase )
**  Copyright (C) 2010-2020 M4DB
**/ 

package com.m4db.command;

import com.m4db.agent.M4dbAgent;
import com.m4db.message.CommandMessage;
import com.m4db.message.ResultMessage;
import org.apache.mina.core.service.IoService;

/**
 * 根据命令消息执行命令，返回结果
* @author penghwa penghwa@msn.com
 */
public interface IM4Command {
    IoService getAgent();
    void setAgent(IoService agent);
    
    ResultMessage getResult();
    void execute(CommandMessage message);
}
