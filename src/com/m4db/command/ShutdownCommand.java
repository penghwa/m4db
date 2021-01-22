/*  
**  M4DB ( Manager Monitor Multiple Machine & DataBase )
**  Copyright (C) 2010-2020 M4DB
**/ 

package com.m4db.command;

import com.m4db.agent.M4dbAgent;
import com.m4db.message.CommandMessage;
import com.m4db.message.ResultMessage;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.mina.core.service.IoService;

/**
 *
* @author penghwa penghwa@msn.com
 */
class ShutdownCommand extends BaseCommand {

    public ShutdownCommand(IoService agent) {
        super(agent);
    }

    
    public void execute(CommandMessage message) {
        try {
            super.getAgent().dispose(true);
        } catch (Exception ex) {
            Logger.getLogger(ShutdownCommand.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    
}
