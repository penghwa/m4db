/*  
**  M4DB ( Manager Monitor Multiple Machine & DataBase )
**  Copyright (C) 2010-2020 M4DB
**/ 

package com.m4db.command;

import com.m4db.agent.AgentConfigBean;
import com.m4db.agent.CommandHandle;
import com.m4db.agent.M4dbAgent;
import com.m4db.agent.ObjectVisit;
import com.m4db.agent.util.Utils;
import com.m4db.message.CommandMessage;
import com.m4db.message.ResultMessage;
import java.io.File;
import java.io.FileReader;
import java.io.LineNumberReader;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.mina.core.service.IoService;

/**
 *
* @author penghwa penghwa@msn.com
 */
public class GetCommand extends BaseCommand {

    GetCommand(IoService agent) {
        super(agent);
    }

     
    public void execute(CommandMessage message) {
        ResultMessage result = super.getResult();
        AgentConfigBean config = AgentConfigBean.newInstance();
        try {
            ObjectVisit visit = config.getObjectVisit().get(message.getObjectName());
            String filename;
            if (visit == null) {
                filename = message.getObjectName();
                visit = new ObjectVisit();
                visit.setObjectName(message.getObjectName());
            } else {
                filename = visit.getFileName();
            }
            visit.setFileName(filename);
            filename = config.getLogPath() + File.separator + filename;
            File file = new File(filename);
            if (!file.exists()) {
                throw new Exception(String.format("监控结果文件[%s]不存在", filename));
            }

            visit.setLastModified(Utils.getDate(file.lastModified()));
            Logger.getLogger(GetCommand.class.getName()).log(Level.INFO, String.format("[object:%s] last visit:%s, [file:%s] last modified:%s",
                    visit.getObjectName(), Utils.formatDate(visit.getLastVisit()),
                    filename, Utils.formatDate(visit.getLastModified())));
            visit.setLastVisit(Utils.now());
            visit.setObjectName(message.getObjectName());
            config.getObjectVisit().put(visit.getObjectName(), visit);

            LineNumberReader reader = new LineNumberReader(new FileReader(file));
            StringBuilder sb = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null) {
                sb.append(line).append("\n");
            }
            result.setResult(sb.toString());
            result.setRunDate(visit.getLastModified());
            reader.close();
        } catch (Exception ex) {
            result.setRetCode(ResultMessage.ERROR);
            result.setResult(ex.getMessage());
        }
    }
}
