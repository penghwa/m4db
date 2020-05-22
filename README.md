# m4db
manage monitor multiple machine &amp; database

是一款统一的自动化运维及监控集成平台。适合有一定运维技术基础的人使用，能满足个性化监控需求；自动化运维功能上，和常用的ansible, puppet等比较：
不仅能处理主机，也适用于数据库等其他监控种类，完全图形化操作，无代理。。。

M4DB（多主机/数据库管理与监控)Manage Monitor Multiple Machine & DB

.Manage –管理

通过统一的客户端工具执行脚本、语句进行日常管理维护。

.Monitor –监控

按需定义监控对象，定时获取监控结果，评估对象状态，进行展示及告警提示。

.Multiple –批量

在多个主机、数据库间执行命令，展现、比较输出结果。

.Machine & Database –主机、数据库等

管理对象主要是主机、数据库，兼顾应用服务、网络设备等（统称为监控主体）。
提供了ssh, telnet, jdbc, jmx, snmp,http, socket, ipmi及代理等多种方式连接监控主体，进行监控管理

主要特点：

客户端工具 -- 不只是监控 

	提供的客户端工具能对主机、数据库、网络设备、应用服务器等进行执行命令、状态日志查询等功能。
        在一个统一的平台上完成基础的日常维护工作，便于集中管理维护。
灵活定制 -- 授人鱼，更授人以渔

	除预定义的监控对象外，可以灵活定义监控对象（如系统状态、业务数据、日志等）及其状态评估表达式。
        固化日常脚本/命令，方便在监控主体上执行。
批量功能 -- 更高效地工作

	能多并发、批量地在多个监控主体(主机、数据库等)上执行命令、脚本
详细输出 -- 有果有因

	监控输出结果包含命令执行过程的详尽信息，而不仅仅是状态结果，可以更清楚的了解状态、分析异常原因。
        保留历史数据供查询、导出、分析。可测量的监控结果可以通过曲线图方式反应变化情况，掌握性能/变化趋势。
预警干预

	对告警进行干预处理，及时反应工作状况。保留处理过程信息，给以后的故障处理提供帮助。
多种展现

	以看板、拓扑图、表格、机房视图等方式直观地展示监控结果，提供声音、动画、及时通讯等方式发送告警信息。
	可以定义自己关注的监控内容。

