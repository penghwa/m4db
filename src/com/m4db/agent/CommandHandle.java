/*  
**  M4DB ( Manager Monitor Multiple Machine & DataBase )
**  Copyright (C) 2010-2020 M4DB
**/ 

package com.m4db.agent;

import com.m4db.command.CheckAuth;
import com.m4db.command.CommandFactory;
import com.m4db.message.CommandMessage;
import com.m4db.message.CommandType;
import com.m4db.message.ResultMessage;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.nio.BufferUnderflowException;
import java.nio.channels.ClosedChannelException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.mina.core.service.IoHandlerAdapter;
import org.apache.mina.core.session.IdleStatus;
import org.apache.mina.core.session.IoSession;
 

/**
 *
* @author penghwa penghwa@msn.com
 */
public class CommandHandle extends IoHandlerAdapter {
    
    @Override
    public void sessionIdle(IoSession session, IdleStatus status) {
        session.close(true);
    }
    
    @Override
    public void messageReceived(IoSession session, Object message) {
        InetSocketAddress remote = (InetSocketAddress) session.getRemoteAddress();
        CommandMessage cmd = (CommandMessage) message;
        
        if ( cmd.getCommand() == CommandType.QUIT )
        {
            session.close(true);
            return;
        }
        boolean isauth = CheckAuth.isRegistryClient(remote.getAddress().getHostAddress(), AgentConfigBean.newInstance().getRegistryClient());
        if ( cmd.getCommand() != CommandType.REGISTRY && ! isauth ) {
           ResultMessage ret = new ResultMessage();
           ret.setRetCode(ResultMessage.ERROR);
           ret.setResult("未注册的客户端");
           session.write(ret);
           Logger.getLogger(CommandHandle.class.getName()).log(Level.INFO, String.format("unregistry client:%s", remote.getAddress().getHostAddress()));
           session.close(true);
           return ;
        }
        if ( cmd != null ) {
             Logger.getLogger(CommandHandle.class.getName()).log(Level.INFO, 
                     String.format("receive command[%s - %s] from %s:%d", cmd.getCommand(), 
                     cmd.getObjectName(), remote.getAddress().getHostAddress(), remote.getPort()));
           //TODO
           if ( cmd.getCommand() == CommandType.REGISTRY  ) {
               cmd.getArguments().put("client", remote.getAddress().getHostAddress());
           }
            ResultMessage ret = CommandFactory.execute(cmd, session.getService());
            session.write(ret);
        }
    }    
    
     @Override
    public void exceptionCaught(IoSession session, Throwable cause) throws Exception {
        cause.printStackTrace();
        session.close(true);
    }
}
