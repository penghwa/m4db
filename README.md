# M4DB
**M**anage **M**onitor **M**ultiple **M**achine &amp; **D**ata**B**ase

是一款统一的**自动化运维及监控集成平台**。适合有一定运维技术基础的人使用，能满足个性化监控需求；

自动化运维功能上，和常用的ansible, puppet等比较：
不仅能处理主机，也适用于数据库等其他监控种类，完全图形化操作，无代理，并发操作，执行过程可见、可控，多窗口的输出结果。。。

监控功能上，和常见的zabbix , prometheus等比较：简单易用，体量小；方便、灵活的监控定义，不需要二次开发，能完成很多个性需求；监控定义实时在线测试；
详细的监控结果输出，能快速定位问题；</br>支持业务拓扑、机房视图，表格等多种展现形式，及历史数据分析；</br>
支持多个采集端；采集线程超时处理，自动修复等。。。

之前的web端使用Flex/ActionScript3编写，打算用js改写。顺带进行重构，添加新功能，为最后开源做准备。征求运维同仁的意见：改进建议，需要哪些功能等！！！
欢迎交流：Wx: mystery-m4  Emial: m4dbapp@163.com

功能简介,详见： https://penghwa.github.io/m4db/m4db_intro.html

M4DB（多主机/数据库管理与监控)Manage Monitor Multiple Machine & DB

.Manage –管理

通过统一的客户端工具执行脚本、语句进行日常管理维护。

.Monitor –监控

按需定义监控对象，定时获取监控结果，评估对象状态，进行展示及告警提示。

.Multiple –批量

在多个主机、数据库间执行命令，展现、比较输出结果。

.Machine & Database –主机、数据库等

管理对象主要是主机、数据库，兼顾应用服务、网络设备等（统称为监控主体）。
提供了ssh, telnet, jdbc, jmx, snmp,http, socket, ipmi，代理，以及二次开发其他种类的协议，等多种方式连接监控主体，也可以接收snmp trap, syslog等, 进行监控管理



