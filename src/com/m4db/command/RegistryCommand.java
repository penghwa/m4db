/*  
**  M4DB ( Manager Monitor Multiple Machine & DataBase )
**  Copyright (C) 2010-2020 M4DB
**/ 

package com.m4db.command;

import com.m4db.agent.AgentConfigBean;
import com.m4db.agent.CommandHandle;
import com.m4db.agent.LoadAgentConfig;
import com.m4db.agent.M4dbAgent;
import com.m4db.agent.util.SecurityUtil;
import com.m4db.message.CommandMessage;
import com.m4db.message.ResultMessage;
import java.net.InetSocketAddress;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.mina.core.service.IoService;

/**
 *
* @author penghwa penghwa@msn.com
 */
class RegistryCommand extends BaseCommand  {

    public RegistryCommand(IoService agent) {
        super(agent);
    }

     
    public void execute(CommandMessage message) {
        ResultMessage result = super.getResult();
        AgentConfigBean config = AgentConfigBean.newInstance();
        try {
            String client = message.getArguments().get("client");
            String key = message.getArguments().get("key");
            Logger.getLogger(RegistryCommand.class.getName()).log(Level.INFO, "client:"+client+",key="+key);
            ArrayList list = config.getRegistryClient();
            if ( list != null && list.contains(client) ) {
                result.setRetCode(ResultMessage.OK);
                result.setResult("已经注册过");
                return ;
            }
            String dekey = SecurityUtil.decrypt(key);
            if ( client.equals(dekey) ) 
                throw new Exception("注册编码不正确");
            
            config.getRegistryClient().add(client);
            LoadAgentConfig load = new LoadAgentConfig(null);
            load.write();
            result.setResult("注册成功:"+client);
         } catch (Exception ex) {
            result.setRetCode(ResultMessage.ERROR);
            result.setResult(ex.getMessage());
            Logger.getLogger(RegistryCommand.class.getName()).log(Level.INFO, ex.getMessage());
        }
       
    }
    
}
