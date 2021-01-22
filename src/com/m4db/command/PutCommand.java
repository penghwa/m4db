/*  
**  M4DB ( Manager Monitor Multiple Machine & DataBase )
**  Copyright (C) 2010-2020 M4DB
**/ 

package com.m4db.command;

import com.m4db.agent.AgentConfigBean;
import com.m4db.agent.M4dbAgent;
import com.m4db.message.CommandMessage;
import com.m4db.message.ResultMessage;
import java.io.File;
import java.io.FilePermission;
import java.io.FileWriter;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.lang.StringUtils;
import org.apache.mina.core.service.IoService;

/**
 *
* @author penghwa penghwa@msn.com
 */
class PutCommand extends BaseCommand {

    public PutCommand(IoService agent) {
        super(agent);
    }

   
    public void execute(CommandMessage message) {
        ResultMessage result = super.getResult();
        String path = message.getArguments().get("path");
        String filename = message.getArguments().get("filename");
        String contents = message.getScript();
        if ( StringUtils.isEmpty(filename) ) {
            result.setRetCode(ResultMessage.ERROR);
            result.setResult("文件名为空");
            return;
        }
        if ( filename.contains("/") )
            filename = filename; 
        else if ( StringUtils.isNotEmpty(path) )
            filename = path + "/" + filename;
        else if (StringUtils.isNotEmpty(AgentConfigBean.newInstance().getScriptPath()) )
            filename = AgentConfigBean.newInstance().getScriptPath() + "/" + filename;
        
        File file = new File(filename);
/*        file.setWritable(true);
        file.setExecutable(true);
        file.setReadable(true);*/
        try {
            FileWriter wr = new FileWriter(file);
            wr.write(contents);
            wr.close();
            result.setRetCode(ResultMessage.OK);
            result.setResult("写文件到"+filename);  
            FilePermission filep = new FilePermission(filename, "read,write,execute");
        } catch (Exception ex) {
            result.setRetCode(ResultMessage.ERROR);
            result.setResult("写文件失败:"+ex.getMessage());
        }
    }
    
}
