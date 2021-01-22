 
set feedback off
set define off

prompt Loading M4CATEGORY...
insert into M4CATEGORY (CATNAME, FULLNAME, LOCALNAME)
values ('DB', 'DataBase', '数据库');
insert into M4CATEGORY (CATNAME, FULLNAME, LOCALNAME)
values ('NET', 'Network', '网络设备');
insert into M4CATEGORY (CATNAME, FULLNAME, LOCALNAME)
values ('OS', 'Machine OS', '主机');
insert into M4CATEGORY (CATNAME, FULLNAME, LOCALNAME)
values ('WEB', 'WEB APP', '应用服务');
commit;
prompt 4 records loaded
prompt Loading M4CATOBJECT...
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('AIX 5L', 'vmstat', null, '^avm', '99999', 1, null, 'OS', 2, 'vmstat 1 3', 5, 7, '( cpu空闲比 < 20 && cpu > 10 ) || 阻塞进程 > 10', '( cpu空闲比 < 10 && cpu > 20 ) || 阻塞进程 > 20', null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('AIX 5L', '换页空间', null, '2', '99999', 1, null, 'OS', 2, 'lsps -a', 5, 7, null, '使用率 > 80', '使用率 〈 50', null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('AIX 5L', '进程数', null, '1', '99999', 1, null, 'OS', 2, 'ps -ef', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('AIX 5L', '文件系统空间', '7', '2', '99999', 9, null, 'OS', 2, 'df -m', 5, 7, '可用大小M / 总大小M < 0.15', '可用大小M / 总大小M < 0.05', null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('AIX 5L', '系统负载', null, '1', '99999', 1, null, 'OS', 2, 'uptime', 5, 7, null, null, '负载 < 6', null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('AIX 5L', '系统日志', null, '1', '99999', 9, null, 'OS', 2, 'errpt -s `date +"%m%d0000%y"`', 30, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('AIX 6L', 'vmstat', null, '^avm', '99999', 1, null, 'OS', 2, 'vmstat 1 3', 5, 7, '( cpu空闲比 < 20 && cpu > 10 ) || 阻塞进程 > 10', '( cpu空闲比 < 10 && cpu > 20 ) || 阻塞进程 > 20', null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('AIX 6L', '换页空间', null, '2', '99999', 1, null, 'OS', 2, 'lsps -a', 5, 7, null, '使用率 > 80', '使用率 〈 50', null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('AIX 6L', '进程数', null, '1', '99999', 1, null, 'OS', 2, 'ps -ef', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('AIX 6L', '文件系统空间', '7', '2', '99999', 9, null, 'OS', 2, 'df -m', 5, 7, '可用大小M / 总大小M < 0.15', '可用大小M / 总大小M < 0.05', null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('AIX 6L', '系统负载', null, '1', '99999', 1, null, 'OS', 2, 'uptime', 5, 7, null, null, '负载 < 6', null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('AIX 6L', '系统日志', null, '1', '99999', 9, null, 'OS', 2, 'errpt -s `date +"%m%d0000%y"`', 30, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('AIX 7L', 'vmstat', null, '^avm', '99999', 1, null, 'OS', 2, 'vmstat 1 3', 5, 7, '( cpu空闲比 < 20 && cpu > 10 ) || 阻塞进程 > 10', '( cpu空闲比 < 10 && cpu > 20 ) || 阻塞进程 > 20', null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('AIX 7L', '换页空间', null, '2', '99999', 1, null, 'OS', 2, 'lsps -a', 5, 7, null, '使用率 > 80', '使用率 〈 50', null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('AIX 7L', '进程数', null, '1', '99999', 1, null, 'OS', 2, 'ps -ef', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('AIX 7L', '文件系统空间', '7', '2', '99999', 9, null, 'OS', 2, 'df -m', 5, 7, '可用大小M / 总大小M < 0.15', '可用大小M / 总大小M < 0.05', null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('AIX 7L', '系统负载', null, '1', '99999', 1, null, 'OS', 2, 'uptime', 5, 7, null, null, '负载 < 6', null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('AIX 7L', '系统日志', null, '1', '99999', 9, null, 'OS', 2, 'errpt -s `date +"%m%d0000%y"`', 30, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('cisco', 'cpu使用率', '1.2', '1', '99999', 9, null, 'NET', 12, '1.3.6.1.4.1.9.9.109.1.1.1', 5, 7, null, null, '比率 < 80', null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('cisco', '端口状态', '1.1', '1', '99999', 9, null, 'NET', 12, '1.3.6.1.2.1.2.2', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('cisco', '内存使用率', '1.2', '1', '99999', 9, null, 'NET', 12, '1.3.6.1.4.1.9.9.48.1.1', 5, 7, '使用 / ( 空闲 + 使用 ) > 0.8', null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('hp-ux', 'vmstat', null, '^avm', '99999', 1, null, 'OS', 2, 'vmstat 1 3', 5, 7, '( cpu空闲比 < 20 && cpu > 10 ) || 阻塞进程 > 10', '( cpu空闲比 < 10 && cpu > 20 ) || 阻塞进程 > 20', null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('hp-ux', '进程数', null, '1', '99999', 1, null, 'OS', 2, 'ps -ef', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('hp-ux', '文件系统空间', '7', '2', '99999', 9, null, 'OS', 2, 'df -m', 5, 7, '可用大小M / 总大小M < 0.15', '可用大小M / 总大小M < 0.05', null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('hp-ux', '系统负载', null, '1', '99999', 1, null, 'OS', 2, 'uptime', 5, 7, null, null, '负载 < 6', null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 10g', 'asm磁盘组空间', 'NAME', '1', '99999', 9, null, 'DB', 2, 'select name, TOTAL_MB, USABLE_FILE_MB, state from v$asm_diskgroup where VOTING_FILES!=''Y''', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 10g', 'dataguard归档情况', 'INST_ID', '1', '99999', 9, null, 'DB', 2, 'select a.inst_id,a.status, a.database_mode, a.recovery_mode, d.DESTINATION, d.TRANSMIT_MODE from gv$archive_dest_status a, gv$archive_dest d where a.INST_ID=d.INST_ID and a.DEST_ID=d.dest_id and d.target like ''STANDBY%'' ;', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 10g', 'TOP语句', 'SQL_ID', '1', '99999', 9, null, 'DB', 2, 'select * from (select sql_id, a.scnt, trunc(ecminute/scnt) ecminute, (select substr(sql_text,1,100) from gv$sql where sql_id=a.sql_id and rownum=1) sqltext from (select count(*) scnt,  sql_id,trunc(nvl(sum(sysdate-sql_exec_start)*1440,0)) ecminute from gv$session a where status=''ACTIVE'' and username is not null and sql_id is not null group by sql_id) a where ecminute/scnt > 1 order by ecminute desc, scnt desc ) where rownum <= 10  ', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 10g', '表空间使用率', 'tablespace_name', '1', '99999', 9, null, 'DB', 2, 'select b.tablespace_name, round(sum(a.bytes/1024/1024)) TOTAL,(select round(sum(bytes/1024/1024)) from dba_free_space where tablespace_name=b.tablespace_name) free from dba_data_files a, dba_tablespaces bwhere a.tablespace_name=b.tablespace_name and b.tablespace_name not like ''UNDO%'' and ( b.bigfile = ''NO'' or a.autoextensible=''NO'' ) group by b.tablespace_name', 5, 7, '空闲大小M / 总大小M < 0.15', '空闲大小M / 总大小M < 0.05', null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 10g', '长时间运行的事务', 'inst_id', '1', '99999', 9, null, 'DB', 2, 'elect a.inst_id, a.STATUS, b.sid, b.serial#, b.USERNAME, b.sql_id, b.event, a.start_time, a.used_ublk, b.program from gv$transaction a, gv$session b where a.start_date < (sysdate - 1/24/6) and a.SES_ADDR=b.SADDR and a.inst_id=b.inst_id', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 10g', '对象锁', 'inst_id', '1', '99999', 9, null, 'DB', 2, 'select a.inst_id, a.session_id, c.sql_id, b.object_name from gv$locked_object a, dba_objects b, gv$session c where a.object_id=b.object_id and a.INST_ID=c.INST_ID and a.SESSION_ID=c.sid order by a.inst_id, b.object_name', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 10g', '归档应用情况', 'NAME', '1', '99999', 9, null, 'DB', 2, 'select name, value from v$dataguard_stats where name like ''%lag''', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 10g', '会话数', 'inst_id', '1', '99999', 9, null, 'DB', 2, 'select inst_id, sum(case when type = ''USER'' then 1 else 0 end) uproc, sum(case when type =''BACKGROUND'' then 1 else 0 end) bproc from gv$session group by inst_id ', 5, 7, null, null, '( uproc + bproc ) < 200', null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 10g', '基本性能指标', null, '1', '99999', 1, null, 'DB', 2, 'select trunc((select avg(value) from gv$sysmetric where metric_id=2004)) phy_read, trunc((select avg(value) from gv$sysmetric where metric_id=2006)) phy_write, trunc((select avg(value) from gv$sysmetric where metric_id=2030)) logic_read, trunc((select avg(value) from gv$sysmetric where metric_id=2057)) cpu_busy,  trunc((select avg(value) from gv$sysmetric where metric_id=2135)) os_load, trunc((select avg(value) from gv$sysmetric where metric_id=2156)) inter_io, trunc((select avg(value) from gv$sysmetric where metric_id=2157)) temp_used from  dual', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 10g', '命中率', null, '1', '99999', 1, null, 'DB', 2, 'select trunc((select avg(value) from gv$sysmetric where metric_id=2000),2) buffer_hit, trunc((select avg(value) from gv$sysmetric where metric_id=2001),2) memory_sort, trunc((select avg(value) from gv$sysmetric where metric_id=2110),2) rowcache_hit, trunc((select avg(value) from gv$sysmetric where metric_id=2112),2) library_hit, trunc((select avg(value) from gv$sysmetric where metric_id=2115),2) pga_hit from  dual', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 10g', '事务数', 'inst_id', '1', '99999', 9, null, 'DB', 2, 'select inst_id, count(*) trans from gv$transaction group by inst_id', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 10g', '数据库状态', 'INSTANCE_NAME', '1', '99999', 9, null, 'DB', 2, 'select instance_name, version, status, startup_time, archiver, database_status from gv$instance', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 11g', 'asm磁盘组空间', 'NAME', '1', '99999', 9, null, 'DB', 2, 'select name, TOTAL_MB, USABLE_FILE_MB, state from v$asm_diskgroup where VOTING_FILES!=''Y''', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 11g', 'dataguard归档情况', 'INST_ID', '1', '99999', 9, null, 'DB', 2, 'select a.inst_id,a.status, a.database_mode, a.recovery_mode, d.DESTINATION, d.TRANSMIT_MODE from gv$archive_dest_status a, gv$archive_dest d where a.INST_ID=d.INST_ID and a.DEST_ID=d.dest_id and d.target like ''STANDBY%'' ;', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 11g', 'TOP语句', 'SQL_ID', '1', '99999', 9, null, 'DB', 2, 'select * from (select sql_id, a.scnt, trunc(ecminute/scnt) ecminute, (select substr(sql_text,1,100) from gv$sql where sql_id=a.sql_id and rownum=1) sqltext from (select count(*) scnt,  sql_id,trunc(nvl(sum(sysdate-sql_exec_start)*1440,0)) ecminute from gv$session a where status=''ACTIVE'' and username is not null and sql_id is not null group by sql_id) a where ecminute/scnt > 1 order by ecminute desc, scnt desc ) where rownum <= 10  ', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 11g', '表空间使用率', 'tablespace_name', '1', '99999', 9, null, 'DB', 2, 'select b.tablespace_name, round(sum(a.bytes/1024/1024)) TOTAL,(select round(sum(bytes/1024/1024)) from dba_free_space where tablespace_name=b.tablespace_name) freefrom dba_data_files a, dba_tablespaces bwhere a.tablespace_name=b.tablespace_name and b.tablespace_name not like ''UNDO%'' and ( b.bigfile = ''NO'' or a.autoextensible=''NO'' ) group by b.tablespace_name', 5, 7, '空闲大小M / 总大小M < 0.15', '空闲大小M / 总大小M < 0.05', null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 11g', '长时间运行的事务', 'inst_id', '1', '99999', 9, null, 'DB', 2, 'elect a.inst_id, a.STATUS, b.sid, b.serial#, b.USERNAME, b.sql_id, b.event, a.start_time, a.used_ublk, b.program from gv$transaction a, gv$session b where a.start_date < (sysdate - 1/24/6) and a.SES_ADDR=b.SADDR and a.inst_id=b.inst_id', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 11g', '对象锁', 'inst_id', '1', '99999', 9, null, 'DB', 2, 'select a.inst_id, a.session_id, c.sql_id, b.object_name from gv$locked_object a, dba_objects b, gv$session c where a.object_id=b.object_id and a.INST_ID=c.INST_ID and a.SESSION_ID=c.sid  order by a.inst_id, b.object_name', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 11g', '归档应用情况', 'NAME', '1', '99999', 9, null, 'DB', 2, 'select name, value from v$dataguard_stats where name like ''%lag''', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 11g', '会话数', 'inst_id', '1', '99999', 9, null, 'DB', 2, 'select inst_id, sum(case when type = ''USER'' then 1 else 0 end) uproc, sum(case when type =''BACKGROUND'' then 1 else 0 end) bproc from gv$session group by inst_id ', 5, 7, null, null, '( uproc + bproc ) < 200', null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 11g', '基本性能指标', null, '1', '99999', 1, null, 'DB', 2, 'select trunc((select avg(value) from gv$sysmetric where metric_id=2004)) phy_read, trunc((select avg(value) from gv$sysmetric where metric_id=2006)) phy_write, trunc((select avg(value) from gv$sysmetric where metric_id=2030)) logic_read, trunc((select avg(value) from gv$sysmetric where metric_id=2057)) cpu_busy,  trunc((select avg(value) from gv$sysmetric where metric_id=2135)) os_load, trunc((select avg(value) from gv$sysmetric where metric_id=2156)) inter_io, trunc((select avg(value) from gv$sysmetric where metric_id=2157)) temp_used from  dual', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 11g', '命中率', null, '1', '99999', 1, null, 'DB', 2, 'select trunc((select avg(value) from gv$sysmetric where metric_id=2000),2) buffer_hit, trunc((select avg(value) from gv$sysmetric where metric_id=2001),2) memory_sort, trunc((select avg(value) from gv$sysmetric where metric_id=2110),2) rowcache_hit, trunc((select avg(value) from gv$sysmetric where metric_id=2112),2) library_hit, trunc((select avg(value) from gv$sysmetric where metric_id=2115),2) pga_hit from  dual', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 11g', '事务数', 'inst_id', '1', '99999', 9, null, 'DB', 2, 'select inst_id, count(*) trans from gv$transaction group by inst_id', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 11g', '数据库状态', 'INSTANCE_NAME', '1', '99999', 9, null, 'DB', 2, 'select instance_name, version, status, startup_time, archiver, database_status from gv$instance', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 9i', 'asm磁盘组空间', 'NAME', '1', '99999', 9, null, 'DB', 2, 'select name, TOTAL_MB, USABLE_FILE_MB, state from v$asm_diskgroup where VOTING_FILES!=''Y''', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 9i', 'dataguard归档情况', 'INST_ID', '1', '99999', 9, null, 'DB', 2, 'select a.inst_id,a.status, a.database_mode, a.recovery_mode, d.DESTINATION, d.TRANSMIT_MODE from gv$archive_dest_status a, gv$archive_dest d where a.INST_ID=d.INST_ID and a.DEST_ID=d.dest_id and d.target like ''STANDBY%'' ;', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 9i', 'TOP语句', 'SQL_ID', '1', '99999', 9, null, 'DB', 2, 'select * from (select sql_id, a.scnt, trunc(ecminute/scnt) ecminute, (select substr(sql_text,1,100) from gv$sql where sql_id=a.sql_id and rownum=1) sqltext from (select count(*) scnt,  sql_id,trunc(nvl(sum(sysdate-sql_exec_start)*1440,0)) ecminute from gv$session a where status=''ACTIVE'' and username is not null and sql_id is not null group by sql_id) a where ecminute/scnt > 1 order by ecminute desc, scnt desc ) where rownum <= 10  ', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 9i', '表空间使用率', 'tablespace_name', '1', '99999', 9, null, 'DB', 2, 'select b.tablespace_name, round(sum(a.bytes/1024/1024)) TOTAL,(select round(sum(bytes/1024/1024)) from dba_free_space where tablespace_name=b.tablespace_name) freefrom dba_data_files a, dba_tablespaces bwhere a.tablespace_name=b.tablespace_name and b.tablespace_name not like ''UNDO%'' and ( b.bigfile = ''NO'' or a.autoextensible=''NO'' ) group by b.tablespace_name', 5, 7, '空闲大小M / 总大小M < 0.15', '空闲大小M / 总大小M < 0.05', null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 9i', '长时间运行的事务', 'inst_id', '1', '99999', 9, null, 'DB', 2, 'elect a.inst_id, a.STATUS, b.sid, b.serial#, b.USERNAME, b.sql_id, b.event, a.start_time, a.used_ublk, b.program from gv$transaction a, gv$session b where a.start_date < (sysdate - 1/24/6) and a.SES_ADDR=b.SADDR and a.inst_id=b.inst_id', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 9i', '对象锁', 'inst_id', '1', '99999', 9, null, 'DB', 2, 'select a.inst_id, a.session_id, c.sql_id, b.object_name from gv$locked_object a, dba_objects b, gv$session c where a.object_id=b.object_id and a.INST_ID=c.INST_ID and a.SESSION_ID=c.sid order by a.inst_id, b.object_name', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 9i', '归档应用情况', 'NAME', '1', '99999', 9, null, 'DB', 2, 'select name, value from v$dataguard_stats where name like ''%lag''', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 9i', '会话数', 'inst_id', '1', '99999', 9, null, 'DB', 2, 'select inst_id, sum(case when type = ''USER'' then 1 else 0 end) uproc, sum(case when type =''BACKGROUND'' then 1 else 0 end) bproc from gv$session group by inst_id ', 5, 7, null, null, '( uproc + bproc ) < 200', null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 9i', '基本性能指标', null, '1', '99999', 1, null, 'DB', 2, 'select trunc((select avg(value) from gv$sysmetric where metric_id=2004)) phy_read, trunc((select avg(value) from gv$sysmetric where metric_id=2006)) phy_write, trunc((select avg(value) from gv$sysmetric where metric_id=2030)) logic_read, trunc((select avg(value) from gv$sysmetric where metric_id=2057)) cpu_busy,  trunc((select avg(value) from gv$sysmetric where metric_id=2135)) os_load, trunc((select avg(value) from gv$sysmetric where metric_id=2156)) inter_io, trunc((select avg(value) from gv$sysmetric where metric_id=2157)) temp_used from  dual', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 9i', '命中率', null, '1', '99999', 1, null, 'DB', 2, 'select trunc((select avg(value) from gv$sysmetric where metric_id=2000),2) buffer_hit, trunc((select avg(value) from gv$sysmetric where metric_id=2001),2) memory_sort, trunc((select avg(value) from gv$sysmetric where metric_id=2110),2) rowcache_hit, trunc((select avg(value) from gv$sysmetric where metric_id=2112),2) library_hit, trunc((select avg(value) from gv$sysmetric where metric_id=2115),2) pga_hit from  dual', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 9i', '事务数', 'inst_id', '1', '99999', 9, null, 'DB', 2, 'select inst_id, count(*) trans from gv$transaction group by inst_id', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 9i', '数据库状态', 'INSTANCE_NAME', '1', '99999', 9, null, 'DB', 2, 'select instance_name, version, status, startup_time, archiver, database_status from gv$instance', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('RHEL 5', 'vmstat', null, '^swpd', '99999', 1, null, 'OS', 2, 'vmstat 1 3', 5, 7, '( cpu空闲比 < 20 && cpu > 10 ) || 阻塞进程 > 10', '( cpu空闲比 < 10 && cpu > 20 ) || 阻塞进程 > 20', null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('RHEL 5', '进程数', null, '1', '99999', 1, null, 'OS', 2, 'ps -ef', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('RHEL 5', '文件系统空间', '7', '2', '99999', 9, null, 'OS', 2, 'df -m', 5, 7, '可用大小M / 总大小M < 0.15', '可用大小M / 总大小M < 0.05', null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('RHEL 5', '系统负载', null, '1', '99999', 1, null, 'OS', 2, 'uptime', 5, 7, null, null, '负载 < 6', null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('solaris', 'vmstat', null, '^avm', '99999', 1, null, 'OS', 2, 'vmstat 1 3', 5, 7, '( cpu空闲比 < 20 && cpu > 10 ) || 阻塞进程 > 10', '( cpu空闲比 < 10 && cpu > 20 ) || 阻塞进程 > 20', null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('solaris', '进程数', null, '1', '99999', 1, null, 'OS', 2, 'ps -ef', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('solaris', '文件系统空间', '7', '2', '99999', 9, null, 'OS', 2, 'df -m', 5, 7, '可用大小M / 总大小M < 0.15', '可用大小M / 总大小M < 0.05', null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('solaris', '系统负载', null, '1', '99999', 1, null, 'OS', 2, 'uptime', 5, 7, null, null, '负载 < 6', null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('tomcat', '页面可访问', '1', '1', '99999', 1, null, 'WEB', 2, 'http://127.0.0.1:7001', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('weblogic', '堆内存', null, '1', '99999', 1, null, 'WEB', 12, 'java.lang:Location=AdminServer,type=Memory' || chr(10) || '{HeapMemoryUsage<max;used>}', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('weblogic', '连接池', 'Name', '1', '99999', 9, null, 'WEB', 12, 'com.bea:Location=AdminServer,Name=AdminServer,ServerRuntime=AdminServer,Type=JDBCServiceRuntime' || chr(10) || 'JDBCDataSourceRuntimeMBeans[].{NumAvailable,ActiveConnectionsCurrentCount,CurrCapacity}', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('weblogic', '虚拟机', 'Name', '1', '99999', 9, null, 'WEB', 12, 'com.bea:Location=AdminServer,Name=RuntimeService,Type=weblogic.management.mbeanservers.runtime.RuntimeServiceMBean' || chr(10) || 'ServerRuntime.JVMRuntime.{HeapFreePercent,HeapSizeCurrent,JavaVersion,JavaVendor,OSName}', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('weblogic', '页面可访问', '1', '1', '99999', 1, null, 'WEB', 2, 'http://127.0.0.1:7001', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('websphere', '页面可访问', '1', '1', '99999', 1, null, 'WEB', 2, 'http://127.0.0.1:7001', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('windows', '磁盘使用情况', '1.3', '/类型 = 1.3.6.1.2.1.25.2.1.4', '99999', 9, null, 'OS', 12, '1.3.6.1.2.1.25.2.3', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('windows', '内存使用情况', '1.3', '/类型 = 1.3.6.1.2.1.25.2.1.2', '99999', 9, null, 'OS', 12, '1.3.6.1.2.1.25.2.3', 5, 7, null, null, null, null);
commit;
prompt 77 records loaded
prompt Loading M4CATOBJECTITEM...
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 5L', 'vmstat', 'cpu等待比', 'OS', '17', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 5L', 'vmstat', 'cpu空闲比', 'OS', '16', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 5L', 'vmstat', '可用内存', 'OS', '4', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 5L', 'vmstat', '运行进程', 'OS', '1', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 5L', 'vmstat', '阻塞进程', 'OS', '2', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 5L', '换页空间', '使用率', 'OS', '5', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 5L', '进程数', '进程ID', 'OS', '2', 0, null, null, null, 'count');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 5L', '文件系统空间', '可用大小M', 'OS', '3', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 5L', '文件系统空间', '总大小M', 'OS', '2', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 5L', '系统负载', '负载', 'OS', '12', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 6L', 'vmstat', 'cpu等待比', 'OS', '17', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 6L', 'vmstat', 'cpu空闲比', 'OS', '16', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 6L', 'vmstat', '可用内存', 'OS', '4', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 6L', 'vmstat', '运行进程', 'OS', '1', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 6L', 'vmstat', '阻塞进程', 'OS', '2', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 6L', '换页空间', '使用率', 'OS', '5', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 6L', '进程数', '进程ID', 'OS', '2', 0, null, null, null, 'count');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 6L', '文件系统空间', '可用大小M', 'OS', '3', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 6L', '文件系统空间', '总大小M', 'OS', '2', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 6L', '系统负载', '负载', 'OS', '12', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 7L', 'vmstat', 'cpu等待比', 'OS', '17', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 7L', 'vmstat', 'cpu空闲比', 'OS', '16', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 7L', 'vmstat', '可用内存', 'OS', '4', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 7L', 'vmstat', '运行进程', 'OS', '1', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 7L', 'vmstat', '阻塞进程', 'OS', '2', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 7L', '换页空间', '使用率', 'OS', '5', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 7L', '进程数', '进程ID', 'OS', '2', 0, null, null, null, 'count');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 7L', '文件系统空间', '可用大小M', 'OS', '3', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 7L', '文件系统空间', '总大小M', 'OS', '2', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 7L', '系统负载', '负载', 'OS', '12', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('cisco', 'cpu使用率', '比率', 'NET', '1.5', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('cisco', '端口状态', '输出', 'NET', '1.16', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('cisco', '端口状态', '输入', 'NET', '1.10', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('cisco', '端口状态', '状态', 'NET', '1.7', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('cisco', '内存使用率', '空闲', 'NET', '1.6', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('cisco', '内存使用率', '使用', 'NET', '1.5', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('hp-ux', 'vmstat', 'cpu等待比', 'OS', '17', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('hp-ux', 'vmstat', 'cpu空闲比', 'OS', '16', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('hp-ux', 'vmstat', '可用内存', 'OS', '4', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('hp-ux', 'vmstat', '运行进程', 'OS', '1', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('hp-ux', 'vmstat', '阻塞进程', 'OS', '2', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('hp-ux', '进程数', '进程ID', 'OS', '2', 0, null, null, null, 'count');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('hp-ux', '文件系统空间', '可用大小M', 'OS', '3', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('hp-ux', '文件系统空间', '总大小M', 'OS', '2', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('hp-ux', '系统负载', '负载', 'OS', '12', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', 'asm磁盘组空间', '可用空间M', 'DB', 'usable_file_mb', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', 'asm磁盘组空间', '总空间M', 'DB', 'total_mb', 0, null, '可用空间M / 总空间M < 0.1', null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', 'dataguard归档情况', '传输方式', 'DB', 'TRANSMIT_MODE', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', 'dataguard归档情况', '恢复模式', 'DB', 'recovery_mode', 1, '恢复模式 == "MANAGED REAL TIME APPLY"', null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', 'dataguard归档情况', '目的库', 'DB', 'destination', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', 'dataguard归档情况', '数据库模式', 'DB', 'database_mode', 1, '数据库模式 == "OPEN_READ-ONLY"', null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', 'dataguard归档情况', '状态', 'DB', 'status', 1, '状态 == "VALID"', null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', 'TOP语句', '平均时间-分', 'DB', 'ecminute', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', 'TOP语句', '执行个数', 'DB', 'SCNT', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '表空间使用率', '空闲大小M', 'DB', 'free', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '表空间使用率', '总大小M', 'DB', 'total', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '长时间运行的事务', '程序', 'DB', 'program', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '长时间运行的事务', '等待事件', 'DB', 'event', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '长时间运行的事务', '会话ID', 'DB', 'sid', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '长时间运行的事务', '开始时间', 'DB', 'start_time', 2, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '长时间运行的事务', '使用回滚段块数', 'DB', 'used_ublk', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '长时间运行的事务', '用户', 'DB', 'username', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '长时间运行的事务', '语句Id', 'DB', 'sql_id', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '长时间运行的事务', '状态', 'DB', 'status', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '对象锁', 'object_name', 'DB', 'object_name', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '对象锁', 'session_id', 'DB', 'session_id', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '对象锁', 'sql_id', 'DB', 'sql_id', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '归档应用情况', '延迟-时分秒', 'DB', 'value', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '会话数', 'bproc', 'DB', 'bproc', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '会话数', 'uproc', 'DB', 'uproc', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '基本性能指标', 'CPU使用率', 'DB', 'cpu_busy', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '基本性能指标', '临时段使用', 'DB', 'temp_used', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '基本性能指标', '逻辑读字节', 'DB', 'logic_read', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '基本性能指标', '网络传输', 'DB', 'inter_io', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '基本性能指标', '物理读', 'DB', 'phy_read', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '基本性能指标', '物理写', 'DB', 'phy_write', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '基本性能指标', '系统负载', 'DB', 'os_load', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '命中率', 'pga命中率', 'DB', 'pga_hit', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '命中率', 'sql命中率', 'DB', 'library_hit', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '命中率', '内存排序', 'DB', 'memory_sort', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '命中率', '数据缓存', 'DB', 'buffer_hit', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '命中率', '数据字典命中率', 'DB', 'rowcache_hit', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '数据库状态', 'ARCHIVER', 'DB', 'ARCHIVER', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '数据库状态', 'DATABASE_STATUS', 'DB', 'DATABASE_STATUS', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '数据库状态', 'STARTUP_TIME', 'DB', 'STARTUP_TIME', 2, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '数据库状态', 'STATUS', 'DB', 'STATUS', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '数据库状态', 'VERSION', 'DB', 'VERSION', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', 'asm磁盘组空间', '可用空间M', 'DB', 'usable_file_mb', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', 'asm磁盘组空间', '总空间M', 'DB', 'total_mb', 0, null, '可用空间M / 总空间M < 0.1', null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', 'dataguard归档情况', '传输方式', 'DB', 'TRANSMIT_MODE', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', 'dataguard归档情况', '恢复模式', 'DB', 'recovery_mode', 1, '恢复模式 == "MANAGED REAL TIME APPLY"', null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', 'dataguard归档情况', '目的库', 'DB', 'destination', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', 'dataguard归档情况', '数据库模式', 'DB', 'database_mode', 1, '数据库模式 == "OPEN_READ-ONLY"', null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', 'dataguard归档情况', '状态', 'DB', 'status', 1, '状态 == "VALID"', null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', 'TOP语句', '平均时间-分', 'DB', 'ecminute', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', 'TOP语句', '执行个数', 'DB', 'SCNT', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '表空间使用率', '空闲大小M', 'DB', 'free', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '表空间使用率', '总大小M', 'DB', 'total', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '长时间运行的事务', '程序', 'DB', 'program', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '长时间运行的事务', '等待事件', 'DB', 'event', 1, null, null, null, 'avg');
commit;
prompt 100 records committed...
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '长时间运行的事务', '会话ID', 'DB', 'sid', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '长时间运行的事务', '开始时间', 'DB', 'start_time', 2, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '长时间运行的事务', '使用回滚段块数', 'DB', 'used_ublk', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '长时间运行的事务', '用户', 'DB', 'username', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '长时间运行的事务', '语句Id', 'DB', 'sql_id', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '长时间运行的事务', '状态', 'DB', 'status', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '对象锁', 'object_name', 'DB', 'object_name', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '对象锁', 'session_id', 'DB', 'session_id', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '对象锁', 'sql_id', 'DB', 'sql_id', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '归档应用情况', '延迟-时分秒', 'DB', 'value', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '会话数', 'bproc', 'DB', 'bproc', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '会话数', 'uproc', 'DB', 'uproc', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '基本性能指标', 'CPU使用率', 'DB', 'cpu_busy', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '基本性能指标', '临时段使用', 'DB', 'temp_used', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '基本性能指标', '逻辑读字节', 'DB', 'logic_read', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '基本性能指标', '网络传输', 'DB', 'inter_io', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '基本性能指标', '物理读', 'DB', 'phy_read', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '基本性能指标', '物理写', 'DB', 'phy_write', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '基本性能指标', '系统负载', 'DB', 'os_load', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '命中率', 'pga命中率', 'DB', 'pga_hit', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '命中率', 'sql命中率', 'DB', 'library_hit', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '命中率', '内存排序', 'DB', 'memory_sort', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '命中率', '数据缓存', 'DB', 'buffer_hit', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '命中率', '数据字典命中率', 'DB', 'rowcache_hit', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '数据库状态', 'ARCHIVER', 'DB', 'ARCHIVER', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '数据库状态', 'DATABASE_STATUS', 'DB', 'DATABASE_STATUS', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '数据库状态', 'STARTUP_TIME', 'DB', 'STARTUP_TIME', 2, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '数据库状态', 'STATUS', 'DB', 'STATUS', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '数据库状态', 'VERSION', 'DB', 'VERSION', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', 'asm磁盘组空间', '可用空间M', 'DB', 'usable_file_mb', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', 'asm磁盘组空间', '总空间M', 'DB', 'total_mb', 0, null, '可用空间M / 总空间M < 0.1', null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', 'dataguard归档情况', '传输方式', 'DB', 'TRANSMIT_MODE', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', 'dataguard归档情况', '恢复模式', 'DB', 'recovery_mode', 1, '恢复模式 == "MANAGED REAL TIME APPLY"', null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', 'dataguard归档情况', '目的库', 'DB', 'destination', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', 'dataguard归档情况', '数据库模式', 'DB', 'database_mode', 1, '数据库模式 == "OPEN_READ-ONLY"', null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', 'dataguard归档情况', '状态', 'DB', 'status', 1, '状态 == "VALID"', null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', 'TOP语句', '平均时间-分', 'DB', 'ecminute', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', 'TOP语句', '执行个数', 'DB', 'SCNT', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '表空间使用率', '空闲大小M', 'DB', 'free', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '表空间使用率', '总大小M', 'DB', 'total', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '长时间运行的事务', '程序', 'DB', 'program', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '长时间运行的事务', '等待事件', 'DB', 'event', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '长时间运行的事务', '会话ID', 'DB', 'sid', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '长时间运行的事务', '开始时间', 'DB', 'start_time', 2, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '长时间运行的事务', '使用回滚段块数', 'DB', 'used_ublk', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '长时间运行的事务', '用户', 'DB', 'username', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '长时间运行的事务', '语句Id', 'DB', 'sql_id', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '长时间运行的事务', '状态', 'DB', 'status', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '对象锁', 'object_name', 'DB', 'object_name', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '对象锁', 'session_id', 'DB', 'session_id', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '对象锁', 'sql_id', 'DB', 'sql_id', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '归档应用情况', '延迟-时分秒', 'DB', 'value', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '会话数', 'bproc', 'DB', 'bproc', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '会话数', 'uproc', 'DB', 'uproc', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '基本性能指标', 'CPU使用率', 'DB', 'cpu_busy', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '基本性能指标', '临时段使用', 'DB', 'temp_used', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '基本性能指标', '逻辑读字节', 'DB', 'logic_read', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '基本性能指标', '网络传输', 'DB', 'inter_io', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '基本性能指标', '物理读', 'DB', 'phy_read', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '基本性能指标', '物理写', 'DB', 'phy_write', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '基本性能指标', '系统负载', 'DB', 'os_load', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '命中率', 'pga命中率', 'DB', 'pga_hit', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '命中率', 'sql命中率', 'DB', 'library_hit', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '命中率', '内存排序', 'DB', 'memory_sort', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '命中率', '数据缓存', 'DB', 'buffer_hit', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '命中率', '数据字典命中率', 'DB', 'rowcache_hit', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '数据库状态', 'ARCHIVER', 'DB', 'ARCHIVER', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '数据库状态', 'DATABASE_STATUS', 'DB', 'DATABASE_STATUS', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '数据库状态', 'STARTUP_TIME', 'DB', 'STARTUP_TIME', 2, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '数据库状态', 'STATUS', 'DB', 'STATUS', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '数据库状态', 'VERSION', 'DB', 'VERSION', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('RHEL 5', 'vmstat', 'cpu等待比', 'OS', '16', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('RHEL 5', 'vmstat', 'cpu空闲比', 'OS', '15', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('RHEL 5', 'vmstat', '可用内存', 'OS', '4', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('RHEL 5', 'vmstat', '运行进程', 'OS', '1', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('RHEL 5', 'vmstat', '阻塞进程', 'OS', '2', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('RHEL 5', '进程数', '进程ID', 'OS', '2', 0, null, null, null, 'count');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('RHEL 5', '文件系统空间', '可用大小M', 'OS', '3', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('RHEL 5', '文件系统空间', '总大小M', 'OS', '2', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('RHEL 5', '系统负载', '负载', 'OS', '12', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('solaris', 'vmstat', 'cpu等待比', 'OS', '17', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('solaris', 'vmstat', 'cpu空闲比', 'OS', '16', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('solaris', 'vmstat', '可用内存', 'OS', '4', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('solaris', 'vmstat', '运行进程', 'OS', '1', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('solaris', 'vmstat', '阻塞进程', 'OS', '2', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('solaris', '进程数', '进程ID', 'OS', '2', 0, null, null, null, 'count');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('solaris', '文件系统空间', '可用大小M', 'OS', '3', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('solaris', '文件系统空间', '总大小M', 'OS', '2', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('solaris', '系统负载', '负载', 'OS', '12', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('tomcat', '页面可访问', '返回码', 'WEB', '1', 1, '返回码 == "OK"', null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('weblogic', 'java虚拟机', '当前使用', 'WEB', 'HeapSizeCurrent', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('weblogic', 'java虚拟机', '可用比', 'WEB', 'HeapFreePercent', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('weblogic', '堆使用情况', '已用', 'WEB', 'used', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('weblogic', '堆使用情况', '最大可用', 'WEB', 'max', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('weblogic', '连接池', '当前容量', 'WEB', 'CurrCapacity', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('weblogic', '连接池', '活动连接', 'WEB', 'ActiveConnectionsCurrentCount', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('weblogic', '连接池', '可用数', 'WEB', 'NumAvailable', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('weblogic', '页面可访问', '返回码', 'WEB', '1', 1, '返回码 == "OK"', null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('websphere', '页面可访问', '返回码', 'WEB', '1', 1, '返回码 == "OK"', null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('windows', '磁盘使用情况', '单元大小', 'OS', '1.4', 0, null, null, null, 'avg');
commit;
prompt 200 records committed...
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('windows', '磁盘使用情况', '类型', 'OS', '1.2', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('windows', '磁盘使用情况', '使用率', 'OS', '= 已使用 / 总大小', 0, '已使用 / 总大小 < 0.9', null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('windows', '磁盘使用情况', '已使用', 'OS', '1.6', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('windows', '磁盘使用情况', '总大小', 'OS', '1.5', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('windows', '磁盘使用情况', '总大小M', 'OS', '= (总大小 * 单元大小 )/1000000', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('windows', '内存使用情况', '单元大小', 'OS', '1.4', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('windows', '内存使用情况', '类型', 'OS', '1.2', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('windows', '内存使用情况', '使用率', 'OS', '= 已使用 / 总大小', 0, '已使用 / 总大小 < 0.9', null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('windows', '内存使用情况', '已使用', 'OS', '1.6', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('windows', '内存使用情况', '总大小', 'OS', '1.5', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('windows', '内存使用情况', '总大小M', 'OS', '= (总大小 * 单元大小 )/1000000', 0, null, null, null, 'avg');
commit;
prompt 211 records loaded
prompt Loading M4CATPRODUCT...
insert into M4CATPRODUCT (CATNAME, VENDOR, PRODUCTNAME, PRODUCTID, DEFAULTDRIVER, DEFAULTURL)
values ('OS', 'redhat', 'LINUX', 'RHEL 6', null, ' ');
insert into M4CATPRODUCT (CATNAME, VENDOR, PRODUCTNAME, PRODUCTID, DEFAULTDRIVER, DEFAULTURL)
values ('OS', 'ibm', 'AIX', 'AIX 5L', null, ' ');
insert into M4CATPRODUCT (CATNAME, VENDOR, PRODUCTNAME, PRODUCTID, DEFAULTDRIVER, DEFAULTURL)
values ('OS', 'ibm', 'AIX', 'AIX 6L', null, ' ');
insert into M4CATPRODUCT (CATNAME, VENDOR, PRODUCTNAME, PRODUCTID, DEFAULTDRIVER, DEFAULTURL)
values ('OS', 'ibm', 'AIX', 'AIX 7L', null, ' ');
insert into M4CATPRODUCT (CATNAME, VENDOR, PRODUCTNAME, PRODUCTID, DEFAULTDRIVER, DEFAULTURL)
values ('DB', 'sybase', 'sybase ase', 'ase15', null, 'jdbc:sybase:Tds:$host:$port/$database');
insert into M4CATPRODUCT (CATNAME, VENDOR, PRODUCTNAME, PRODUCTID, DEFAULTDRIVER, DEFAULTURL)
values ('NET', 'cisco', 'cisco', 'cisco', null, null);
insert into M4CATPRODUCT (CATNAME, VENDOR, PRODUCTNAME, PRODUCTID, DEFAULTDRIVER, DEFAULTURL)
values ('DB', 'ibm', 'db2', 'db2 v9', null, 'jdbc:db2://$host:$port/$database');
insert into M4CATPRODUCT (CATNAME, VENDOR, PRODUCTNAME, PRODUCTID, DEFAULTDRIVER, DEFAULTURL)
values ('NET', 'h3c', 'h3c', 'h3c v11', null, null);
insert into M4CATPRODUCT (CATNAME, VENDOR, PRODUCTNAME, PRODUCTID, DEFAULTDRIVER, DEFAULTURL)
values ('OS', 'hp', 'hp-ux', 'hp-ux', null, null);
insert into M4CATPRODUCT (CATNAME, VENDOR, PRODUCTNAME, PRODUCTID, DEFAULTDRIVER, DEFAULTURL)
values ('WEB', 'ibm', 'lotus notes', 'Lotus Notes', null, null);
insert into M4CATPRODUCT (CATNAME, VENDOR, PRODUCTNAME, PRODUCTID, DEFAULTDRIVER, DEFAULTURL)
values ('DB', 'microsoft', 'sqlserver', 'mssql', null, 'jdbc:sqlserver://$host:$port/$database');
insert into M4CATPRODUCT (CATNAME, VENDOR, PRODUCTNAME, PRODUCTID, DEFAULTDRIVER, DEFAULTURL)
values ('DB', 'oracle', 'mysql', 'mysql', null, 'jdbc:mysql://$host:$port/$database');
insert into M4CATPRODUCT (CATNAME, VENDOR, PRODUCTNAME, PRODUCTID, DEFAULTDRIVER, DEFAULTURL)
values ('DB', 'oracle', 'oracle db', 'oracle 10g', null, 'jdbc:oracle:thin:@$host:$port/$servicename');
insert into M4CATPRODUCT (CATNAME, VENDOR, PRODUCTNAME, PRODUCTID, DEFAULTDRIVER, DEFAULTURL)
values ('DB', 'oracle', 'oracle db', 'oracle 11g', null, 'jdbc:oracle:thin:@$host:$port/$servicename');
insert into M4CATPRODUCT (CATNAME, VENDOR, PRODUCTNAME, PRODUCTID, DEFAULTDRIVER, DEFAULTURL)
values ('DB', 'oracle', 'oracle db', 'oracle 8i', null, 'jdbc:oracle:thin:@$host:$port/$servicename');
insert into M4CATPRODUCT (CATNAME, VENDOR, PRODUCTNAME, PRODUCTID, DEFAULTDRIVER, DEFAULTURL)
values ('DB', 'oracle', 'oracle db', 'oracle 9i', null, 'jdbc:oracle:thin:@$host:$port/$servicename');
insert into M4CATPRODUCT (CATNAME, VENDOR, PRODUCTNAME, PRODUCTID, DEFAULTDRIVER, DEFAULTURL)
values ('OS', 'redhat', 'LINUX', 'RHEL 5', null, ' ');
insert into M4CATPRODUCT (CATNAME, VENDOR, PRODUCTNAME, PRODUCTID, DEFAULTDRIVER, DEFAULTURL)
values ('OS', 'sun', 'solaris', 'solaris', null, null);
insert into M4CATPRODUCT (CATNAME, VENDOR, PRODUCTNAME, PRODUCTID, DEFAULTDRIVER, DEFAULTURL)
values ('WEB', 'apache', 'tomcat', 'tomcat', null, ' ');
insert into M4CATPRODUCT (CATNAME, VENDOR, PRODUCTNAME, PRODUCTID, DEFAULTDRIVER, DEFAULTURL)
values ('WEB', 'oracle', 'weblogic', 'weblogic', null, ' ');
insert into M4CATPRODUCT (CATNAME, VENDOR, PRODUCTNAME, PRODUCTID, DEFAULTDRIVER, DEFAULTURL)
values ('WEB', 'ibm', 'websphere', 'websphere', null, ' ');
insert into M4CATPRODUCT (CATNAME, VENDOR, PRODUCTNAME, PRODUCTID, DEFAULTDRIVER, DEFAULTURL)
values ('OS', 'microsoft', 'windows', 'windows', null, null);
insert into M4CATPRODUCT (CATNAME, VENDOR, PRODUCTNAME, PRODUCTID, DEFAULTDRIVER, DEFAULTURL)
values ('OS', 'microsoft', 'windows', 'windows8', null, null);
commit;
prompt 23 records loaded
prompt Loading M4CONNECTMODE...
prompt Table is empty
prompt Loading M4DEFAULTPROPS...
insert into M4DEFAULTPROPS (PROPNAME, DFTVALUE, VTYPE)
values ('????', 'M3', 'String');
insert into M4DEFAULTPROPS (PROPNAME, DFTVALUE, VTYPE)
values ('??????', 'M2', 'String');
insert into M4DEFAULTPROPS (PROPNAME, DFTVALUE, VTYPE)
values ('?è±?????', 'M1', 'String');
insert into M4DEFAULTPROPS (PROPNAME, DFTVALUE, VTYPE)
values ('IP???·', 'P1', 'String');
commit;
prompt 4 records loaded
prompt Loading M4OBJECT...
insert into M4OBJECT (OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('CPU', '*', '1', '99999', 1, null, 'NET', 2, '1.3.6.1.4.1.25506.2.6.1.1.1.1.6', 5, 7, null, null, null, null);
insert into M4OBJECT (OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('cpu负载', '1', '1', '99999', 1, null, 'OS', 12, '1.3.6.1.2.1.25.3.3.1', 5, 7, null, null, null, null);
insert into M4OBJECT (OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('GGSERR', null, '1', '99999', 9, null, 'OS', 3, 'tail -200 /goldengate/gg/ggserr.log  | grep ERROR', 20, 7, null, null, null, null);
insert into M4OBJECT (OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('地市局复制状态', '3', '^MANAGER', '99999', 9, null, 'OS', 13, 'su - oracle -c ''/goldengate/gg/ggscinfo.cmd''', 20, 5, null, null, null, null);
insert into M4OBJECT (OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('定时任务执行', 'WHAT', '1', '99999', 9, null, 'DB', 12, 'select log_user, substr(what,1,30) what, next_date, next_sec, interval,broken from dba_jobs    where log_user <> ''SYS''', 20, 7, null, null, null, null);
insert into M4OBJECT (OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('个税OGG记录数据比对', 'cxbm', '1', '99999', 9, null, 'DB', 12, 'select to_char(zgcx.jgrq, ''YYYY-MM-DD'') JGRQ, zgcx.bm cxbm,' || chr(10) || 'zgyk.jls ykjl, zgcx.jls cxjl from (select *  from tfd_cx.xt_rep_valid where zbbj=90 and jgrq=trunc(sysdate-1)) zgyk' || chr(10) || 'right join' || chr(10) || '(select *  from tfd_cx.xt_rep_valid where zbbj=91 and jgrq=trunc(sysdate-1)) zgcx' || chr(10) || 'on zgyk.jgrq=zgcx.jgrq and zgyk.bm=zgcx.bm', 60, 700, null, null, null, null);
insert into M4OBJECT (OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('核心征管OGG记录数据比对', 'cxbm', '1', '99999', 9, null, 'DB', 12, 'select to_char(zgcx.jgrq, ''YYYY-MM-DD'') JGRQ, zgcx.bm cxbm,' || chr(10) || 'zgyk.jls ykjl, zgcx.jls cxjl from (select *  from tfd_cx.xt_rep_valid where zbbj=80 and jgrq=trunc(sysdate-1)) zgyk' || chr(10) || 'right join' || chr(10) || '(select *  from tfd_cx.xt_rep_valid where zbbj=81 and jgrq=trunc(sysdate-1)) zgcx' || chr(10) || 'on zgyk.jgrq=zgcx.jgrq and zgyk.bm=zgcx.bm', 60, 700, null, null, null, null);
insert into M4OBJECT (OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('内存', '*', '1', '99999', 1, null, 'NET', 2, '1.3.6.1.4.1.25506.2.6.1.1.1.1.8', 5, 7, null, null, null, null);
insert into M4OBJECT (OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('启动OGG', null, '1', '99999', 9, null, 'OS', 1, 'su - oracle -c ''/goldengate/gg/ggscistart.cmd''', 5, 7, null, null, null, null);
insert into M4OBJECT (OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('文件系统空间', '7', '1', '99999', 9, null, 'OS', 13, 'df -g |egrep "oradata|goldengate|u01" ', 20, 7, '( 剩余  / 大小 ) < 0.1', '( 剩余  / 大小 ) < 0.05', null, null);
insert into M4OBJECT (OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('下行比对结果', 'RS', '1', '99999', 1, null, 'DB', 13, 'select dbms_lob.substr(pkg_dist_check.error) rs from dual', 60, 5, null, null, null, null);
insert into M4OBJECT (OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('页面可访问-8001', '1', '1', '99999', 1, null, 'WEB', 12, 'http://144.12.112.1:8001/', 5, 7, null, null, null, null);
insert into M4OBJECT (OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('页面可访问-8002', '1', '1', '99999', 1, null, 'WEB', 12, 'http://144.12.112.1:8002/', 5, 7, null, null, null, null);
insert into M4OBJECT (OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('OGG-GGS', '3', '^MANAGER', '99999', 9, null, 'OS', 13, 'cd /goldengate/ggs ; ./ggsci <<EOF' || chr(10) || 'info er *' || chr(10) || 'info all' || chr(10) || 'EOF', 10, 500, null, null, null, null);
insert into M4OBJECT (OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('OGG-GSGG', '3', '^MANAGER', '99999', 9, null, 'OS', 13, 'cd /goldengate/gsgg ; ./ggsci <<EOF' || chr(10) || 'info er *' || chr(10) || 'info all' || chr(10) || 'EOF', 10, 500, null, null, null, null);
commit;
prompt 15 records loaded
prompt Loading M4OBJECTITEM...
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('CPU', '使用率', 'NET', '*', 0, null, null, null, 'sum');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('cpu负载', '使用率', 'OS', '2', 0, null, null, null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('地市局复制状态', 'Chkpt延迟', 'OS', '5', 1, null, 'Chkpt延迟 > "01:00:00"', null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('地市局复制状态', '延迟', 'OS', '4', 1, null, '延迟 > "01:00:00"', null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('地市局复制状态', '状态', 'OS', '2', 1, '状态 == "RUNNING"', null, null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('定时任务执行', 'broken', 'DB', 'broken', 1, 'broken == "N"', null, null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('定时任务执行', 'interval', 'DB', 'interval', 1, null, null, null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('定时任务执行', 'log_user', 'DB', 'log_user', 1, null, null, null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('定时任务执行', 'next_date', 'DB', 'next_date', 1, null, 'next_date == "4000-01-01 00:00:00.0"', null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('定时任务执行', 'next_sec', 'DB', 'next_sec', 1, null, null, null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('个税OGG记录数据比对', 'JGRQ', 'DB', 'JGRQ', 1, null, null, null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('个税OGG记录数据比对', 'JLS_CX', 'DB', 'CXJL', 0, 'JLS_CX == JLS_DG', null, null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('个税OGG记录数据比对', 'JLS_DG', 'DB', 'YKJL', 0, null, null, null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('核心征管OGG记录数据比对', 'JGRQ', 'DB', 'JGRQ', 1, null, null, null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('核心征管OGG记录数据比对', 'JLS_CX', 'DB', 'CXJL', 0, 'JLS_CX == JLS_DG', null, null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('核心征管OGG记录数据比对', 'JLS_DG', 'DB', 'YKJL', 0, null, null, null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('内存', '使用率', 'NET', '*', 0, null, null, null, 'sum');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('文件系统空间', '大小', 'OS', '2', 0, null, null, null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('文件系统空间', '剩余', 'OS', '3', 0, null, null, null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('下行比对结果', '比对结果', 'DB', 'RS', 1, '$CONTAINS(  比对结果, "OK")', null, null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('OGG-GGS', '状态', 'OS', '2', 1, '状态 == "RUNNING"', null, '状态 == "ABENDED"', 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('OGG-GGS', '延迟', 'OS', '4', 1, null, '延迟 > "00:20:00" &&  ! $STARTSWITH(延迟 , "unkn")', null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('OGG-GGS', 'Chkpt延迟', 'OS', '5', 1, null, 'Chkpt延迟 > "01:00:00"', null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('OGG-GSGG', '状态', 'OS', '2', 1, '状态 == "RUNNING"', null, '状态 == "ABENDED"', 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('OGG-GSGG', '延迟', 'OS', '4', 1, null, '延迟 > "00:20:00" &&  ! $STARTSWITH(延迟 , "unkn")', null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('OGG-GSGG', 'Chkpt延迟', 'OS', '5', 1, null, 'Chkpt延迟 > "01:00:00"', null, 'avg');
commit;

set feedback on
set define on
prompt Done.
