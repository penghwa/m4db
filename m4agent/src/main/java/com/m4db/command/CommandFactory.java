/*  
**  M4DB ( Manager Monitor Multiple Machine & DataBase )
**  Copyright (C) 2010-2020 M4DB
**/ 

package com.m4db.command;

import com.m4db.agent.M4dbAgent;
import com.m4db.message.CommandMessage;
import com.m4db.message.CommandType;
import com.m4db.message.ResultMessage;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.mina.core.service.IoService;

/**
 *
* @author penghwa penghwa@msn.com
 */
public class CommandFactory {
    
    public static ResultMessage execute(CommandMessage message, IoService agent) {
        ResultMessage result = null;
        IM4Command command;
        if (message.getCommand() == CommandType.GET) {
            command = new GetCommand(agent);
        } else if (message.getCommand() == CommandType.PUT) {
            command = new PutCommand(agent);
        } else if (message.getCommand() == CommandType.EXECUTE) {
            command = new ExecuteCommand(agent);
        } else if (message.getCommand() == CommandType.REGISTRY) {
            command = new RegistryCommand(agent);
        } else if (message.getCommand() == CommandType.SHUTDOWN) {
            command = new ShutdownCommand(agent);
        } else {
            command = null;
        }
       
        if (command != null) {
            try {
                command.execute(message);
                result = command.getResult();
                result.setRetCode(ResultMessage.OK);
            }
            catch (Exception ex) {
                result = command.getResult();  
                result.setRetCode(ResultMessage.ERROR);
                result.setResult(ex.getMessage());
            }
        } else {
            result = new ResultMessage();
            result.setRetCode(ResultMessage.ERROR);
            result.setResult("未知的命令");
        }
        
        result.setCatName(message.getCatName());
        result.setAgentServer(message.getAgentServer());
        result.setObjectName(message.getObjectName());
        result.setCommandType(message.getCommand());
        
        return result;
    }
}
