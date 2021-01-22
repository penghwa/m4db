/*  
**  M4DB ( Manager Monitor Multiple Machine & DataBase )
**  Copyright (C) 2010-2020 M4DB
**/ 

package com.m4db.agent;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.lang.StringUtils;

/**
 *
* @author penghwa penghwa@msn.com
 */
public class AgentServer {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        try {
            if ( args != null && args.length == 1 && args[0].startsWith("--h") )
            {
                printUsage();
                return ;
            }
            
            String logpath = null ;
            String scriptpath = null;
            int port = 0;
            int interval = 0;
            String config = null ;
            for ( String arg : args ) {
                if ( arg.startsWith("--config=") )
                    config = arg.replace("--config=", "");
                else if ( arg.startsWith("--logpath") )
                    logpath = arg.replace("--logpath=", "");
                else if ( arg.startsWith("--scriptpath") )
                    scriptpath = arg.replace("--scriptpath=", "");
                else if ( arg.startsWith("--port=") ) {
                    try {
                        port = Integer.valueOf(arg.replace("--port=", ""));
                        if ( port < 100 )
                            throw new Exception();
                    }catch (Exception e) {
                        System.err.println("port must be number(>100)");
                        return ;
                    }
                }
                else if ( arg.startsWith("--interval=") ) {
                    try {
                        interval = Integer.valueOf(arg.replace("--interval=", ""));
                        if ( interval < 2 )
                            throw new Exception();
                    }catch (Exception e) {
                        System.err.println("interval must be number(>2)");
                        return ;
                    }
                }      
            }
            LoadAgentConfig loadconfig = new LoadAgentConfig(config);
            loadconfig.load();
            boolean updated = false;
            if ( port > 100 ) {
                AgentConfigBean.newInstance().setPort(port);
                updated = true;
            }
            if ( interval > 2 ) {
                AgentConfigBean.newInstance().setInterval(interval);
                updated = true;
            }
            if ( StringUtils.isNotEmpty(logpath) ) {
                AgentConfigBean.newInstance().setLogPath(logpath); 
                updated = true;
            }
            if ( StringUtils.isNotEmpty(scriptpath) ) {
                AgentConfigBean.newInstance().setScriptPath(scriptpath);
                updated = true;
            }
            if ( updated )
                loadconfig.write();
            
            final M4dbAgent agent = new M4dbAgent(AgentConfigBean.newInstance().getPort());
            agent.start();
            
            Runtime.getRuntime().addShutdownHook(new Thread() {
                @Override  
            public void run() {
                    try {
                        agent.close();
                    } catch (Exception ex) {
                        Logger.getLogger(AgentServer.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
            });
        } catch (Exception ex) {
            Logger.getLogger(AgentServer.class.getName()).log(Level.SEVERE, null, ex);
            ex.printStackTrace();
        }
    }
    
    public static void printUsage() {
       System.out.println("AgentServer agent server usage:");
       System.out.println("--port=port --interval=interval --logpath=path --config=file");
       System.out.println("port: listener port");
       System.out.println("logpath: path of logs file");
       System.out.println("config: m4agent.xml file");
    }
}
