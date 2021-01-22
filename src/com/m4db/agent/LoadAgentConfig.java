/*  
**  M4DB ( Manager Monitor Multiple Machine & DataBase )
**  Copyright (C) 2010-2020 M4DB
**/ 

package com.m4db.agent;

import com.m4db.agent.util.Utils;
import java.io.*;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;

import org.apache.commons.lang.StringUtils;
import org.dom4j.Attribute;
import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;

/**
 *
* @author penghwa penghwa@msn.com
 */
public class LoadAgentConfig {

    public static String CONFIG_FILE = "/m4agent.xml";
    private String scriptPath = "/script";
    
    private String configfile;

    public LoadAgentConfig(String configfile) {
        this.configfile = configfile;
    }

    public void load() {
        String fpath = getAppDir();
        if (StringUtils.isEmpty(configfile)) {
            configfile = CONFIG_FILE;
            fpath = fpath + configfile;
        }
        else
            fpath = configfile;
        
        AgentConfigBean.newInstance().setConfigFile(fpath);
        InputStream stream = null;
        SAXReader saxReader = new SAXReader();
        try {

            try {
               Logger.getLogger(LoadAgentConfig.class.getName()).log(Level.INFO, "begin load config from:" + fpath); 
                stream = new FileInputStream(fpath);
            } catch (Exception e) {
                stream = null;
            }
            if (stream != null) {
                Document doc = saxReader.read(stream);
                Element element = doc.getRootElement();
                Element v = element.element("agent");
                configAgent(v);
                if ( StringUtils.isEmpty(AgentConfigBean.newInstance().getScriptPath()) )
                    AgentConfigBean.newInstance().setScriptPath(fpath + scriptPath);
                configObjects(element.element("objects"));
                configClients(element.element("clients"));
                Logger.getLogger(LoadAgentConfig.class.getName()).log(Level.INFO, 
                        String.format("load config: logpath=%s, port=%d", AgentConfigBean.newInstance().getLogPath(),
                        AgentConfigBean.newInstance().getPort()));
            } else {
                File f = new File(fpath);
                if (!f.exists()) {
                    File fp = new File(f.getParent());
                    fp.mkdirs();
                }
                throw new Exception("config file not exists:"+fpath);
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            try {
                if (stream != null) {
                    stream.close();
                }
            } catch (IOException ex) {
                Logger.getLogger(LoadAgentConfig.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public void registryClient(String ip) throws Exception {
        ArrayList<String> list = AgentConfigBean.newInstance().getRegistryClient();
        if (list == null) {
            AgentConfigBean.newInstance().setRegistryClient(new ArrayList<String>());
        }

        if (!AgentConfigBean.newInstance().getRegistryClient().contains(ip)) {
            AgentConfigBean.newInstance().getRegistryClient().add(ip);
        }
        write();
    }

    public void updateAgent(String logpath, String scriptpath, int port, int interval) throws Exception {
         AgentConfigBean.newInstance().setLogPath(logpath);
         AgentConfigBean.newInstance().setScriptPath(scriptpath);
         AgentConfigBean.newInstance().setPort(port);
         AgentConfigBean.newInstance().setInterval(interval);
         write();
    }

    public void updateObject(ObjectVisit visit) {
        
    }

    public void write() throws Exception {
        OutputFormat format = OutputFormat.createPrettyPrint();
        format.setEncoding("UTF-8");

        InputStream stream = null;
        SAXReader saxReader = new SAXReader();
        Document doc = null;
        Element root = null;
        String fpath = AgentConfigBean.newInstance().getConfigFile();
        try {
            try {
                stream = new FileInputStream(fpath);
                 Logger.getLogger(LoadAgentConfig.class.getName()).log(Level.INFO, "begin write config to:" + fpath); 
            } catch (Exception e) {
                stream = null;
            }
            if (stream == null) {
                doc = DocumentHelper.createDocument();
                root = doc.addElement("config");
            } else {
                doc = saxReader.read(stream);
                root = doc.getRootElement();
            }
            Element m = root.element("agent");

            if (m == null) {
                m = root.addElement("agent");
            }

            m = configXML(m);

            Element objects = root.element("objects");
            if (objects == null) {
                objects = root.addElement("objects");
            }
            objects.clearContent();
            Map<String, ObjectVisit> visits = AgentConfigBean.newInstance().getObjectVisit();
            if (visits != null) {
                Iterator iter = visits.keySet().iterator();
                while (iter.hasNext()) {
                    Object h = iter.next();
                    ObjectVisit obj = (ObjectVisit) visits.get(h);
                    Element ev = objects.addElement("object");
                    ev = setAttrValue(ev, "name", obj.getObjectName());
                    ev = setAttrValue(ev, "filename", obj.getFileName());
                    ev = setAttrValue(ev, "lastvisit", Utils.formatDate(obj.getLastVisit()));
                    ev = setAttrValue(ev, "lastmodified", Utils.formatDate(obj.getLastModified()));
                }
            }

            Element clients = root.element("clients");
            if (clients == null) {
                clients = root.addElement("clients");
            }
            clients.clearContent();
            ArrayList<String> list = AgentConfigBean.newInstance().getRegistryClient();
            if (list != null) {
                for (String ip : list) {
                    Element ev = clients.addElement("client");
                    ev = setAttrValue(ev, "ip", ip);
                }
            }

            if (stream != null) {
                stream.close();
            }

            XMLWriter writer = new XMLWriter(new FileWriter(fpath), format);
            writer.write(doc);
            writer.close();

        } catch (Exception ex) {
            ex.printStackTrace();
            throw ex;
        } finally {
            try {
                if (stream != null) {
                    stream.close();
                }
            } catch (IOException ex) {
                Logger.getLogger(LoadAgentConfig.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    private Element configXML(Element m) {
        m = setAttrValue(m, "logpath", AgentConfigBean.newInstance().getLogPath());
        m = setAttrValue(m, "scriptpath", AgentConfigBean.newInstance().getScriptPath());
        m = setAttrValue(m, "port", String.valueOf(AgentConfigBean.newInstance().getPort()));
        m = setAttrValue(m, "interval", String.valueOf(AgentConfigBean.newInstance().getInterval()));
        return m;
    }

    private Element setAttrValue(Element e, String attrName, String value) {
        Attribute attr = e.attribute(attrName);
        if (attr == null) {
            e.addAttribute(attrName, value);
        } else {
            attr.setValue(value);
        }
        return e;
    }

    private void configObjects(Element v) {
        if (v == null  ) {
            return;
        }
        List list = v.elements("object");
        Iterator iter = list.iterator();
        while (iter.hasNext()) {
            Element e = (Element) iter.next();
            ObjectVisit visit = new ObjectVisit();
            visit.setObjectName(e.attributeValue("name"));
            visit.setFileName(e.attributeValue("filename"));
            visit.setLastModified(Utils.toDate(e.attributeValue("lastmodified")));
            visit.setLastVisit(Utils.toDate(e.attributeValue("lastvisit")));

            Map<String, ObjectVisit> vs = AgentConfigBean.newInstance().getObjectVisit();
            if (vs == null) {
                AgentConfigBean.newInstance().setObjectVisit(new HashMap<String, ObjectVisit>());
            }

            AgentConfigBean.newInstance().getObjectVisit().put(visit.getObjectName(), visit);
        }
    }

    private void configClients(Element v) {
        if (v == null ) {
            return;
        }
        List l = v.elements("client");
        Iterator iter = l.iterator();
        while (iter.hasNext()) {
            Element e = (Element) iter.next();
            String ip = e.attributeValue("ip");

            ArrayList<String> list = AgentConfigBean.newInstance().getRegistryClient();
            if (list == null) {
                AgentConfigBean.newInstance().setRegistryClient(new ArrayList<String>());
            }

            if (!AgentConfigBean.newInstance().getRegistryClient().contains(ip)) {
                AgentConfigBean.newInstance().getRegistryClient().add(ip);
            }
        }
    }

    private void configAgent(Element v) {
        AgentConfigBean.newInstance().setLogPath(v.attributeValue("logpath"));
        AgentConfigBean.newInstance().setScriptPath(v.attributeValue("scriptpath"));
        AgentConfigBean.newInstance().setPort(Integer.valueOf(v.attributeValue("port")));
        AgentConfigBean.newInstance().setInterval(Integer.valueOf(v.attributeValue("interval")));
    }

    public static String getAppDir() {
        String path = "";
        path = LoadAgentConfig.class.getProtectionDomain().getCodeSource().getLocation().getFile();
        if (path.endsWith("build/classes/")) {
            path = path.substring(0, path.length() - 14);
        } else if (path.endsWith("m4agent.jar")) {
            path = path.substring(0, path.length() - 12);
        }
        return path;
    }
}
