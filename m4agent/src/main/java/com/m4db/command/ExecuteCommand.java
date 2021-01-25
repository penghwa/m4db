/*  
**  M4DB ( Manager Monitor Multiple Machine & DataBase )
**  Copyright (C) 2010-2020 M4DB
**/ 

package com.m4db.command;

import com.m4db.message.StreamGobbler;
import com.m4db.agent.M4dbAgent;
import com.m4db.message.CommandMessage;
import com.m4db.message.ResultMessage;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.lang.StringUtils;
import org.apache.mina.core.service.IoService;

/**
 *
* @author penghwa penghwa@msn.com
 */
class ExecuteCommand extends BaseCommand {

    public ExecuteCommand(IoService agent) {
        super(agent);
    }

    
     
    public void execute(CommandMessage message) {
         ResultMessage result = super.getResult();
       String script = message.getScript();
        if (StringUtils.isEmpty(script)) {
            result.setRetCode(ResultMessage.ERROR);
            result.setResult("命令脚本为空");
            return ;
        }
        try {
            Process process = Runtime.getRuntime().exec(script);
            StreamGobbler out = new StreamGobbler(process.getInputStream());
            StreamGobbler err = new StreamGobbler(process.getErrorStream());
            out.start();
            err.start();
            int rc = process.waitFor();
            if ( rc == 0 ) {
                result.setRetCode(ResultMessage.OK);
                result.setResult(out.getOutput());
            }
            else {
                result.setRetCode(ResultMessage.ERROR);
                result.setResult(err.getOutput());                
            }
        } catch (Exception ex) {
            result.setRetCode(ResultMessage.ERROR);
            result.setResult(ex.getMessage());
        }
    }
    
}
