/*  
**  M4DB ( Manager Monitor Multiple Machine & DataBase )
**  Copyright (C) 2010-2020 M4DB
**/ 

package com.m4db.service;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import com.m4db.clientvo.*;
import java.util.Date;
import java.util.List;

/**
 *
* @author penghwa penghwa@msn.com
 */
public interface ClientService {
    
    public List<M4ClientOutputResultVO> getOutputResultList(String user) ;
    
    public M4ResultOutputDetailVO getObjectResultDetail(String hostname, String objectname);

    public M4ResultOutputDetailVO getObjectResultDetailHis(String hostname, String objectname, long execute);

    /**
     * 查询历史的监控结果
     * @param hostname
     * @param objectname
     * @param start
     * @param end
     * @param isWarn = true 只查询异常
     * @param includeSame 包含同类型其他监控源的相同监控对象
     * @return 
     */
    public List<M4ClientOutputresult> getObjectResultHistoryList(String hostname, String objectname, Date start, Date end, boolean isWarn, boolean includeSame)  throws Exception ;

    
    /**
     * 查询预警处理的列表
     * @param hostname
     * @param objectname
     * @param start
     * @param end
     * @param dealer
     * @return 
     */
    public List<M4warndealVO> getWarndealList(String hostname, String objectname, Date start, Date end, String dealer, boolean isRunning) throws Exception;
    
    /**
     * 获取监控对象的项目明细
     * @param hostname
     * @param objectname
     * @param start
     * @param end
     * @return 
     */
    public List<M4ClientOutputitem> getItemResultHistoryList(String hostname, String objectname, Date start, Date end, boolean includeSame)  throws Exception;

    //对于明显项过多的查询，再次添加时间段、项目名称过滤
    public List<M4ClientOutputitem> getItemResultHistoryListByFilter(String hostname, String objectname, Date start, Date end,  String  timeFilter,  String  itemFilter)  throws Exception;
    public List<M4ClientOutputResultVO> getHostOutputResultList(String hostname);
    
    public List<M4ClientOutputResultVO> getHostipOutputResultList(String hostip);
    
    public List<M4ResultOutputListVO> getHostResultHistoryList(String hostname, Date start, Date end) ;

    public List<M4ResultOutputListVO> getHostipResultHistoryList(String hostip, Date start, Date end) ;
    
    /**
     * 获取指定host的信息
     * @param hostname
     * @param catname
     * @return 
     */
    public List<M4ClientKeyValue> getHostinfo(String hostname, String catname) throws Exception;
    
    public List<M4ClientKeyValue> getObjectinfo(String hostname, String objectname) throws Exception;
    /**
     * 所有的监控源
     * @return 
     */
    public List<String> getHostlist(String username) ;
    
    /**
     * 监控源定义的监控对象
     * @param hostname
     * @return 
     */
    public List<String> getHostsObjectList(String hostname) ;
    
    
    /**
     * 监控对象的项目
     * @param hostname
     * @param objectname
     * @return 
     */
    public List<String> getHostobjectItemList(String hostname, String objectname);
    
    /**
     * 保存拓扑图信息
     * @param nodes
     * @param lines
     * @param topname 
     */
    public void saveTop(List<M4topnodevo> nodes, List<M4toplinevo> lines, String topname) throws Exception  ;
    
    /**
     * 获取拓扑信息
     * @param topname
     * @return 
     */
    public M4TopInfoVO getTopInfo(String topname) throws Exception;
    
    /**
     * 异常情况的处理
     * @param dw
     * @param flag 0 - 开始处理 1 -结束
     * @param scope 范围
     * @throws Exception 
     */
    public void dealwithWarn(M4warndealVO dw, int flag, int scope) throws Exception;
    
    public M4userinfoVO validLogin(String username, String pwd) throws Exception;
    
    public M4userinfoVO updateUserPwd(String username, String pwd, String newpwd) throws Exception;
    
    /**
     * 得到当前结果明细
     * @param isAll 是否包含全部 = false只输出异常
     * @return 
     */
    public List<M4ClientOutputresult> getAllResultDetail(boolean isAll) ;
    
    /**
     * 保存机房/机柜基本信息
     * @param gname 名称
     * @param gtype 类型 0 - 机房 1 - 机柜
     * @param pgname  机柜对应的机房名称
     */
    public String saveNewRoom(String gname, int gtype, String pgname) throws Exception ;
    
    /***
     * 获取所有图片定义信息，构建树
     * @return
     * @throws Exception 
     * gtype 0 - 获取机房 1 - 获取机柜 -1 获取全部
     */
    public List<M4graphVO> getAllGraph(int gtype, String username) throws Exception;
    
    /***
     * 保存机房/机柜内容
     * @param g
     * @param ogname
     * @throws Exception 
     */
    public void saveGraphContent(M4graphVO g, List<M4anchorVO> anchors, String ogname) throws Exception;
    
    //删除机房/机柜
    public void deleteNamedGraph(String gname) throws Exception;
    
    //获取机房信息
    public M4graphVO getNamedGraphInfo(String gname) throws Exception;
    
    //获取机房包含的机柜
    public List<String> getCupsInRoom(String gname) throws Exception;
    
    //保存图片的原始尺寸
    public void saveGraphSize(String gname, String bgwidth, String bgheight, String showzoom) ;
    
    //获取机器的扩展属性
    public List<M4ClientKeyValue> getHostProps(String hostname, boolean nodefault) ;
    
    public List<String> getAllTopName(String username) ;
    
    public void deleteNamedTop(String topname) throws Exception;
    
    public void saveNewTop(String topname) throws Exception ;
    
    /***
     * 获取配置有性能监控的机器列表
     * @param username
     * @return 
     */
    public List<String> getMonitorHostlist(String username) ;
    
    //获取性能监控的机器的历史数据
    public List<M4ClientOutputitem> getMonitorHostHistoryList(String hostname) throws Exception;
    
    public List<M4ClientOutputitem> getMonitorHostRunList(String hostname) throws Exception;
    
    //获取性能监控机器定义的信息
    public List<M4ClientKeyValue> getMonitorHostProps(String hostname) throws Exception;
}
