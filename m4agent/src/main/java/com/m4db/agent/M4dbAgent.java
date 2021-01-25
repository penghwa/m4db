/*  
**  M4DB ( Manager Monitor Multiple Machine & DataBase )
**  Copyright (C) 2010-2020 M4DB
**/ 

package com.m4db.agent;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.UnknownHostException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.mina.core.service.IoHandlerAdapter;
import org.apache.mina.filter.codec.ProtocolCodecFilter;
import org.apache.mina.filter.codec.serialization.ObjectSerializationCodecFactory;
import org.apache.mina.filter.logging.LoggingFilter;
import org.apache.mina.transport.socket.nio.NioSocketAcceptor;
 

/**
 *
* @author penghwa penghwa@msn.com
 */
public class M4dbAgent extends Thread {
    public static int DEFAULT_PORT = 6780 ;
    private int port ;
    private IoHandlerAdapter handle;
    private int timeout;
    
    public M4dbAgent(int port) {
        if ( port > 0 )
            this.port = port ;
        else
           this.port = DEFAULT_PORT;
        create();
    }
    
    public M4dbAgent() {
        this(DEFAULT_PORT);
 //       this.setDaemon(true);
    }
    
    NioSocketAcceptor acceptor ;
    private void create() {
        try {
           acceptor = new NioSocketAcceptor();
           acceptor.getFilterChain().addLast("codec",
                    new ProtocolCodecFilter(
                            new ObjectSerializationCodecFactory()));
           acceptor.getFilterChain().addLast("logger", new LoggingFilter());
          
           handle = new CommandHandle();
           acceptor.setHandler(handle);
        } catch ( Exception ex) {
            Logger.getLogger(M4dbAgent.class.getName()).log(Level.SEVERE, null, ex);
        }  
    }
    
    
    @Override
    public void run()  {
        try {
            acceptor.bind(new InetSocketAddress(port));
        } catch (IOException ex) {
            Logger.getLogger(M4dbAgent.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void close() throws Exception {
        Logger.getLogger(M4dbAgent.class.getName()).log(Level.INFO, "agent exit...");
        acceptor.unbind();
      
       LoadAgentConfig loadconfig = new LoadAgentConfig(AgentConfigBean.newInstance().getConfigFile());
       loadconfig.write();
       Logger.getLogger(M4dbAgent.class.getName()).log(Level.INFO, "write config:" + AgentConfigBean.newInstance().getConfigFile());
    }
    
    @Override
    public void interrupt() {
        try {
            Logger.getLogger(M4dbAgent.class.getName()).log(Level.INFO, "agent interrupt!");
            close();
        } catch (Exception ex) {
            Logger.getLogger(M4dbAgent.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
