/*  
**  M4DB ( Manager Monitor Multiple Machine & DataBase )
**  Copyright (C) 2010-2020 M4DB
**/ 

package com.m4db.agent;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/**
 * 代理配置的参数
* @author penghwa penghwa@msn.com
 */
public class AgentConfigBean {
    private String configFile;
    
    private String logPath;   //文件存放位置
    private static Map<String, ObjectVisit> objectVisit;  //对象访问列表
    private String scriptPath;  //脚本文件位置
    private int interval;       //脚本执行间隔时间minutes
    private int port;           //服务器的端口
    private static ArrayList<String> registryClient;   //注册过的客户端(ip)

    public String getConfigFile() {
        return configFile;
    }

    public void setConfigFile(String configFile) {
        this.configFile = configFile;
    }

    public ArrayList<String> getRegistryClient() {
        if ( registryClient == null )
            registryClient = new ArrayList<String>();
        return registryClient;
    }

    public void setRegistryClient(ArrayList<String> registryClient) {
        this.registryClient = registryClient;
    }
    
    private static AgentConfigBean _config;
    public static AgentConfigBean newInstance() {
        if ( _config == null )
            _config = new AgentConfigBean();
        return _config;
    }
    
    public int getInterval() {
        return interval;
    }

    public void setInterval(int interval) {
        this.interval = interval;
    }

    public String getLogPath() {
        return logPath;
    }

    public void setLogPath(String logPath) {
        this.logPath = logPath;
    }

    public Map<String, ObjectVisit> getObjectVisit() {
        if ( objectVisit == null )
            objectVisit = new HashMap<String, ObjectVisit>();
        return objectVisit;
    }

    public void setObjectVisit(Map<String, ObjectVisit> objectVisit) {
        this.objectVisit = objectVisit;
    }

    public int getPort() {
        if ( port <= 100 )
            return M4dbAgent.DEFAULT_PORT;
        return port;
    }

    public void setPort(int port) {
        this.port = port;
    }

    public String getScriptPath() {
        return scriptPath;
    }

    public void setScriptPath(String scriptPath) {
        this.scriptPath = scriptPath;
    }
    
    
}
