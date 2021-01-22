 
set feedback off
set define off

prompt Loading M4CATEGORY...
insert into M4CATEGORY (CATNAME, FULLNAME, LOCALNAME)
values ('DB', 'DataBase', '���ݿ�');
insert into M4CATEGORY (CATNAME, FULLNAME, LOCALNAME)
values ('NET', 'Network', '�����豸');
insert into M4CATEGORY (CATNAME, FULLNAME, LOCALNAME)
values ('OS', 'Machine OS', '����');
insert into M4CATEGORY (CATNAME, FULLNAME, LOCALNAME)
values ('WEB', 'WEB APP', 'Ӧ�÷���');
commit;
prompt 4 records loaded
prompt Loading M4CATOBJECT...
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('AIX 5L', 'vmstat', null, '^avm', '99999', 1, null, 'OS', 2, 'vmstat 1 3', 5, 7, '( cpu���б� < 20 && cpu > 10 ) || �������� > 10', '( cpu���б� < 10 && cpu > 20 ) || �������� > 20', null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('AIX 5L', '��ҳ�ռ�', null, '2', '99999', 1, null, 'OS', 2, 'lsps -a', 5, 7, null, 'ʹ���� > 80', 'ʹ���� �� 50', null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('AIX 5L', '������', null, '1', '99999', 1, null, 'OS', 2, 'ps -ef', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('AIX 5L', '�ļ�ϵͳ�ռ�', '7', '2', '99999', 9, null, 'OS', 2, 'df -m', 5, 7, '���ô�СM / �ܴ�СM < 0.15', '���ô�СM / �ܴ�СM < 0.05', null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('AIX 5L', 'ϵͳ����', null, '1', '99999', 1, null, 'OS', 2, 'uptime', 5, 7, null, null, '���� < 6', null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('AIX 5L', 'ϵͳ��־', null, '1', '99999', 9, null, 'OS', 2, 'errpt -s `date +"%m%d0000%y"`', 30, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('AIX 6L', 'vmstat', null, '^avm', '99999', 1, null, 'OS', 2, 'vmstat 1 3', 5, 7, '( cpu���б� < 20 && cpu > 10 ) || �������� > 10', '( cpu���б� < 10 && cpu > 20 ) || �������� > 20', null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('AIX 6L', '��ҳ�ռ�', null, '2', '99999', 1, null, 'OS', 2, 'lsps -a', 5, 7, null, 'ʹ���� > 80', 'ʹ���� �� 50', null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('AIX 6L', '������', null, '1', '99999', 1, null, 'OS', 2, 'ps -ef', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('AIX 6L', '�ļ�ϵͳ�ռ�', '7', '2', '99999', 9, null, 'OS', 2, 'df -m', 5, 7, '���ô�СM / �ܴ�СM < 0.15', '���ô�СM / �ܴ�СM < 0.05', null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('AIX 6L', 'ϵͳ����', null, '1', '99999', 1, null, 'OS', 2, 'uptime', 5, 7, null, null, '���� < 6', null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('AIX 6L', 'ϵͳ��־', null, '1', '99999', 9, null, 'OS', 2, 'errpt -s `date +"%m%d0000%y"`', 30, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('AIX 7L', 'vmstat', null, '^avm', '99999', 1, null, 'OS', 2, 'vmstat 1 3', 5, 7, '( cpu���б� < 20 && cpu > 10 ) || �������� > 10', '( cpu���б� < 10 && cpu > 20 ) || �������� > 20', null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('AIX 7L', '��ҳ�ռ�', null, '2', '99999', 1, null, 'OS', 2, 'lsps -a', 5, 7, null, 'ʹ���� > 80', 'ʹ���� �� 50', null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('AIX 7L', '������', null, '1', '99999', 1, null, 'OS', 2, 'ps -ef', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('AIX 7L', '�ļ�ϵͳ�ռ�', '7', '2', '99999', 9, null, 'OS', 2, 'df -m', 5, 7, '���ô�СM / �ܴ�СM < 0.15', '���ô�СM / �ܴ�СM < 0.05', null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('AIX 7L', 'ϵͳ����', null, '1', '99999', 1, null, 'OS', 2, 'uptime', 5, 7, null, null, '���� < 6', null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('AIX 7L', 'ϵͳ��־', null, '1', '99999', 9, null, 'OS', 2, 'errpt -s `date +"%m%d0000%y"`', 30, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('cisco', 'cpuʹ����', '1.2', '1', '99999', 9, null, 'NET', 12, '1.3.6.1.4.1.9.9.109.1.1.1', 5, 7, null, null, '���� < 80', null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('cisco', '�˿�״̬', '1.1', '1', '99999', 9, null, 'NET', 12, '1.3.6.1.2.1.2.2', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('cisco', '�ڴ�ʹ����', '1.2', '1', '99999', 9, null, 'NET', 12, '1.3.6.1.4.1.9.9.48.1.1', 5, 7, 'ʹ�� / ( ���� + ʹ�� ) > 0.8', null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('hp-ux', 'vmstat', null, '^avm', '99999', 1, null, 'OS', 2, 'vmstat 1 3', 5, 7, '( cpu���б� < 20 && cpu > 10 ) || �������� > 10', '( cpu���б� < 10 && cpu > 20 ) || �������� > 20', null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('hp-ux', '������', null, '1', '99999', 1, null, 'OS', 2, 'ps -ef', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('hp-ux', '�ļ�ϵͳ�ռ�', '7', '2', '99999', 9, null, 'OS', 2, 'df -m', 5, 7, '���ô�СM / �ܴ�СM < 0.15', '���ô�СM / �ܴ�СM < 0.05', null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('hp-ux', 'ϵͳ����', null, '1', '99999', 1, null, 'OS', 2, 'uptime', 5, 7, null, null, '���� < 6', null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 10g', 'asm������ռ�', 'NAME', '1', '99999', 9, null, 'DB', 2, 'select name, TOTAL_MB, USABLE_FILE_MB, state from v$asm_diskgroup where VOTING_FILES!=''Y''', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 10g', 'dataguard�鵵���', 'INST_ID', '1', '99999', 9, null, 'DB', 2, 'select a.inst_id,a.status, a.database_mode, a.recovery_mode, d.DESTINATION, d.TRANSMIT_MODE from gv$archive_dest_status a, gv$archive_dest d where a.INST_ID=d.INST_ID and a.DEST_ID=d.dest_id and d.target like ''STANDBY%'' ;', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 10g', 'TOP���', 'SQL_ID', '1', '99999', 9, null, 'DB', 2, 'select * from (select sql_id, a.scnt, trunc(ecminute/scnt) ecminute, (select substr(sql_text,1,100) from gv$sql where sql_id=a.sql_id and rownum=1) sqltext from (select count(*) scnt,  sql_id,trunc(nvl(sum(sysdate-sql_exec_start)*1440,0)) ecminute from gv$session a where status=''ACTIVE'' and username is not null and sql_id is not null group by sql_id) a where ecminute/scnt > 1 order by ecminute desc, scnt desc ) where rownum <= 10  ', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 10g', '��ռ�ʹ����', 'tablespace_name', '1', '99999', 9, null, 'DB', 2, 'select b.tablespace_name, round(sum(a.bytes/1024/1024)) TOTAL,(select round(sum(bytes/1024/1024)) from dba_free_space where tablespace_name=b.tablespace_name) free from dba_data_files a, dba_tablespaces bwhere a.tablespace_name=b.tablespace_name and b.tablespace_name not like ''UNDO%'' and ( b.bigfile = ''NO'' or a.autoextensible=''NO'' ) group by b.tablespace_name', 5, 7, '���д�СM / �ܴ�СM < 0.15', '���д�СM / �ܴ�СM < 0.05', null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 10g', '��ʱ�����е�����', 'inst_id', '1', '99999', 9, null, 'DB', 2, 'elect a.inst_id, a.STATUS, b.sid, b.serial#, b.USERNAME, b.sql_id, b.event, a.start_time, a.used_ublk, b.program from gv$transaction a, gv$session b where a.start_date < (sysdate - 1/24/6) and a.SES_ADDR=b.SADDR and a.inst_id=b.inst_id', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 10g', '������', 'inst_id', '1', '99999', 9, null, 'DB', 2, 'select a.inst_id, a.session_id, c.sql_id, b.object_name from gv$locked_object a, dba_objects b, gv$session c where a.object_id=b.object_id and a.INST_ID=c.INST_ID and a.SESSION_ID=c.sid order by a.inst_id, b.object_name', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 10g', '�鵵Ӧ�����', 'NAME', '1', '99999', 9, null, 'DB', 2, 'select name, value from v$dataguard_stats where name like ''%lag''', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 10g', '�Ự��', 'inst_id', '1', '99999', 9, null, 'DB', 2, 'select inst_id, sum(case when type = ''USER'' then 1 else 0 end) uproc, sum(case when type =''BACKGROUND'' then 1 else 0 end) bproc from gv$session group by inst_id ', 5, 7, null, null, '( uproc + bproc ) < 200', null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 10g', '��������ָ��', null, '1', '99999', 1, null, 'DB', 2, 'select trunc((select avg(value) from gv$sysmetric where metric_id=2004)) phy_read, trunc((select avg(value) from gv$sysmetric where metric_id=2006)) phy_write, trunc((select avg(value) from gv$sysmetric where metric_id=2030)) logic_read, trunc((select avg(value) from gv$sysmetric where metric_id=2057)) cpu_busy,  trunc((select avg(value) from gv$sysmetric where metric_id=2135)) os_load, trunc((select avg(value) from gv$sysmetric where metric_id=2156)) inter_io, trunc((select avg(value) from gv$sysmetric where metric_id=2157)) temp_used from  dual', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 10g', '������', null, '1', '99999', 1, null, 'DB', 2, 'select trunc((select avg(value) from gv$sysmetric where metric_id=2000),2) buffer_hit, trunc((select avg(value) from gv$sysmetric where metric_id=2001),2) memory_sort, trunc((select avg(value) from gv$sysmetric where metric_id=2110),2) rowcache_hit, trunc((select avg(value) from gv$sysmetric where metric_id=2112),2) library_hit, trunc((select avg(value) from gv$sysmetric where metric_id=2115),2) pga_hit from  dual', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 10g', '������', 'inst_id', '1', '99999', 9, null, 'DB', 2, 'select inst_id, count(*) trans from gv$transaction group by inst_id', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 10g', '���ݿ�״̬', 'INSTANCE_NAME', '1', '99999', 9, null, 'DB', 2, 'select instance_name, version, status, startup_time, archiver, database_status from gv$instance', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 11g', 'asm������ռ�', 'NAME', '1', '99999', 9, null, 'DB', 2, 'select name, TOTAL_MB, USABLE_FILE_MB, state from v$asm_diskgroup where VOTING_FILES!=''Y''', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 11g', 'dataguard�鵵���', 'INST_ID', '1', '99999', 9, null, 'DB', 2, 'select a.inst_id,a.status, a.database_mode, a.recovery_mode, d.DESTINATION, d.TRANSMIT_MODE from gv$archive_dest_status a, gv$archive_dest d where a.INST_ID=d.INST_ID and a.DEST_ID=d.dest_id and d.target like ''STANDBY%'' ;', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 11g', 'TOP���', 'SQL_ID', '1', '99999', 9, null, 'DB', 2, 'select * from (select sql_id, a.scnt, trunc(ecminute/scnt) ecminute, (select substr(sql_text,1,100) from gv$sql where sql_id=a.sql_id and rownum=1) sqltext from (select count(*) scnt,  sql_id,trunc(nvl(sum(sysdate-sql_exec_start)*1440,0)) ecminute from gv$session a where status=''ACTIVE'' and username is not null and sql_id is not null group by sql_id) a where ecminute/scnt > 1 order by ecminute desc, scnt desc ) where rownum <= 10  ', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 11g', '��ռ�ʹ����', 'tablespace_name', '1', '99999', 9, null, 'DB', 2, 'select b.tablespace_name, round(sum(a.bytes/1024/1024)) TOTAL,(select round(sum(bytes/1024/1024)) from dba_free_space where tablespace_name=b.tablespace_name) freefrom dba_data_files a, dba_tablespaces bwhere a.tablespace_name=b.tablespace_name and b.tablespace_name not like ''UNDO%'' and ( b.bigfile = ''NO'' or a.autoextensible=''NO'' ) group by b.tablespace_name', 5, 7, '���д�СM / �ܴ�СM < 0.15', '���д�СM / �ܴ�СM < 0.05', null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 11g', '��ʱ�����е�����', 'inst_id', '1', '99999', 9, null, 'DB', 2, 'elect a.inst_id, a.STATUS, b.sid, b.serial#, b.USERNAME, b.sql_id, b.event, a.start_time, a.used_ublk, b.program from gv$transaction a, gv$session b where a.start_date < (sysdate - 1/24/6) and a.SES_ADDR=b.SADDR and a.inst_id=b.inst_id', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 11g', '������', 'inst_id', '1', '99999', 9, null, 'DB', 2, 'select a.inst_id, a.session_id, c.sql_id, b.object_name from gv$locked_object a, dba_objects b, gv$session c where a.object_id=b.object_id and a.INST_ID=c.INST_ID and a.SESSION_ID=c.sid  order by a.inst_id, b.object_name', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 11g', '�鵵Ӧ�����', 'NAME', '1', '99999', 9, null, 'DB', 2, 'select name, value from v$dataguard_stats where name like ''%lag''', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 11g', '�Ự��', 'inst_id', '1', '99999', 9, null, 'DB', 2, 'select inst_id, sum(case when type = ''USER'' then 1 else 0 end) uproc, sum(case when type =''BACKGROUND'' then 1 else 0 end) bproc from gv$session group by inst_id ', 5, 7, null, null, '( uproc + bproc ) < 200', null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 11g', '��������ָ��', null, '1', '99999', 1, null, 'DB', 2, 'select trunc((select avg(value) from gv$sysmetric where metric_id=2004)) phy_read, trunc((select avg(value) from gv$sysmetric where metric_id=2006)) phy_write, trunc((select avg(value) from gv$sysmetric where metric_id=2030)) logic_read, trunc((select avg(value) from gv$sysmetric where metric_id=2057)) cpu_busy,  trunc((select avg(value) from gv$sysmetric where metric_id=2135)) os_load, trunc((select avg(value) from gv$sysmetric where metric_id=2156)) inter_io, trunc((select avg(value) from gv$sysmetric where metric_id=2157)) temp_used from  dual', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 11g', '������', null, '1', '99999', 1, null, 'DB', 2, 'select trunc((select avg(value) from gv$sysmetric where metric_id=2000),2) buffer_hit, trunc((select avg(value) from gv$sysmetric where metric_id=2001),2) memory_sort, trunc((select avg(value) from gv$sysmetric where metric_id=2110),2) rowcache_hit, trunc((select avg(value) from gv$sysmetric where metric_id=2112),2) library_hit, trunc((select avg(value) from gv$sysmetric where metric_id=2115),2) pga_hit from  dual', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 11g', '������', 'inst_id', '1', '99999', 9, null, 'DB', 2, 'select inst_id, count(*) trans from gv$transaction group by inst_id', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 11g', '���ݿ�״̬', 'INSTANCE_NAME', '1', '99999', 9, null, 'DB', 2, 'select instance_name, version, status, startup_time, archiver, database_status from gv$instance', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 9i', 'asm������ռ�', 'NAME', '1', '99999', 9, null, 'DB', 2, 'select name, TOTAL_MB, USABLE_FILE_MB, state from v$asm_diskgroup where VOTING_FILES!=''Y''', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 9i', 'dataguard�鵵���', 'INST_ID', '1', '99999', 9, null, 'DB', 2, 'select a.inst_id,a.status, a.database_mode, a.recovery_mode, d.DESTINATION, d.TRANSMIT_MODE from gv$archive_dest_status a, gv$archive_dest d where a.INST_ID=d.INST_ID and a.DEST_ID=d.dest_id and d.target like ''STANDBY%'' ;', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 9i', 'TOP���', 'SQL_ID', '1', '99999', 9, null, 'DB', 2, 'select * from (select sql_id, a.scnt, trunc(ecminute/scnt) ecminute, (select substr(sql_text,1,100) from gv$sql where sql_id=a.sql_id and rownum=1) sqltext from (select count(*) scnt,  sql_id,trunc(nvl(sum(sysdate-sql_exec_start)*1440,0)) ecminute from gv$session a where status=''ACTIVE'' and username is not null and sql_id is not null group by sql_id) a where ecminute/scnt > 1 order by ecminute desc, scnt desc ) where rownum <= 10  ', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 9i', '��ռ�ʹ����', 'tablespace_name', '1', '99999', 9, null, 'DB', 2, 'select b.tablespace_name, round(sum(a.bytes/1024/1024)) TOTAL,(select round(sum(bytes/1024/1024)) from dba_free_space where tablespace_name=b.tablespace_name) freefrom dba_data_files a, dba_tablespaces bwhere a.tablespace_name=b.tablespace_name and b.tablespace_name not like ''UNDO%'' and ( b.bigfile = ''NO'' or a.autoextensible=''NO'' ) group by b.tablespace_name', 5, 7, '���д�СM / �ܴ�СM < 0.15', '���д�СM / �ܴ�СM < 0.05', null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 9i', '��ʱ�����е�����', 'inst_id', '1', '99999', 9, null, 'DB', 2, 'elect a.inst_id, a.STATUS, b.sid, b.serial#, b.USERNAME, b.sql_id, b.event, a.start_time, a.used_ublk, b.program from gv$transaction a, gv$session b where a.start_date < (sysdate - 1/24/6) and a.SES_ADDR=b.SADDR and a.inst_id=b.inst_id', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 9i', '������', 'inst_id', '1', '99999', 9, null, 'DB', 2, 'select a.inst_id, a.session_id, c.sql_id, b.object_name from gv$locked_object a, dba_objects b, gv$session c where a.object_id=b.object_id and a.INST_ID=c.INST_ID and a.SESSION_ID=c.sid order by a.inst_id, b.object_name', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 9i', '�鵵Ӧ�����', 'NAME', '1', '99999', 9, null, 'DB', 2, 'select name, value from v$dataguard_stats where name like ''%lag''', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 9i', '�Ự��', 'inst_id', '1', '99999', 9, null, 'DB', 2, 'select inst_id, sum(case when type = ''USER'' then 1 else 0 end) uproc, sum(case when type =''BACKGROUND'' then 1 else 0 end) bproc from gv$session group by inst_id ', 5, 7, null, null, '( uproc + bproc ) < 200', null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 9i', '��������ָ��', null, '1', '99999', 1, null, 'DB', 2, 'select trunc((select avg(value) from gv$sysmetric where metric_id=2004)) phy_read, trunc((select avg(value) from gv$sysmetric where metric_id=2006)) phy_write, trunc((select avg(value) from gv$sysmetric where metric_id=2030)) logic_read, trunc((select avg(value) from gv$sysmetric where metric_id=2057)) cpu_busy,  trunc((select avg(value) from gv$sysmetric where metric_id=2135)) os_load, trunc((select avg(value) from gv$sysmetric where metric_id=2156)) inter_io, trunc((select avg(value) from gv$sysmetric where metric_id=2157)) temp_used from  dual', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 9i', '������', null, '1', '99999', 1, null, 'DB', 2, 'select trunc((select avg(value) from gv$sysmetric where metric_id=2000),2) buffer_hit, trunc((select avg(value) from gv$sysmetric where metric_id=2001),2) memory_sort, trunc((select avg(value) from gv$sysmetric where metric_id=2110),2) rowcache_hit, trunc((select avg(value) from gv$sysmetric where metric_id=2112),2) library_hit, trunc((select avg(value) from gv$sysmetric where metric_id=2115),2) pga_hit from  dual', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 9i', '������', 'inst_id', '1', '99999', 9, null, 'DB', 2, 'select inst_id, count(*) trans from gv$transaction group by inst_id', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('oracle 9i', '���ݿ�״̬', 'INSTANCE_NAME', '1', '99999', 9, null, 'DB', 2, 'select instance_name, version, status, startup_time, archiver, database_status from gv$instance', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('RHEL 5', 'vmstat', null, '^swpd', '99999', 1, null, 'OS', 2, 'vmstat 1 3', 5, 7, '( cpu���б� < 20 && cpu > 10 ) || �������� > 10', '( cpu���б� < 10 && cpu > 20 ) || �������� > 20', null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('RHEL 5', '������', null, '1', '99999', 1, null, 'OS', 2, 'ps -ef', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('RHEL 5', '�ļ�ϵͳ�ռ�', '7', '2', '99999', 9, null, 'OS', 2, 'df -m', 5, 7, '���ô�СM / �ܴ�СM < 0.15', '���ô�СM / �ܴ�СM < 0.05', null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('RHEL 5', 'ϵͳ����', null, '1', '99999', 1, null, 'OS', 2, 'uptime', 5, 7, null, null, '���� < 6', null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('solaris', 'vmstat', null, '^avm', '99999', 1, null, 'OS', 2, 'vmstat 1 3', 5, 7, '( cpu���б� < 20 && cpu > 10 ) || �������� > 10', '( cpu���б� < 10 && cpu > 20 ) || �������� > 20', null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('solaris', '������', null, '1', '99999', 1, null, 'OS', 2, 'ps -ef', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('solaris', '�ļ�ϵͳ�ռ�', '7', '2', '99999', 9, null, 'OS', 2, 'df -m', 5, 7, '���ô�СM / �ܴ�СM < 0.15', '���ô�СM / �ܴ�СM < 0.05', null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('solaris', 'ϵͳ����', null, '1', '99999', 1, null, 'OS', 2, 'uptime', 5, 7, null, null, '���� < 6', null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('tomcat', 'ҳ��ɷ���', '1', '1', '99999', 1, null, 'WEB', 2, 'http://127.0.0.1:7001', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('weblogic', '���ڴ�', null, '1', '99999', 1, null, 'WEB', 12, 'java.lang:Location=AdminServer,type=Memory' || chr(10) || '{HeapMemoryUsage<max;used>}', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('weblogic', '���ӳ�', 'Name', '1', '99999', 9, null, 'WEB', 12, 'com.bea:Location=AdminServer,Name=AdminServer,ServerRuntime=AdminServer,Type=JDBCServiceRuntime' || chr(10) || 'JDBCDataSourceRuntimeMBeans[].{NumAvailable,ActiveConnectionsCurrentCount,CurrCapacity}', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('weblogic', '�����', 'Name', '1', '99999', 9, null, 'WEB', 12, 'com.bea:Location=AdminServer,Name=RuntimeService,Type=weblogic.management.mbeanservers.runtime.RuntimeServiceMBean' || chr(10) || 'ServerRuntime.JVMRuntime.{HeapFreePercent,HeapSizeCurrent,JavaVersion,JavaVendor,OSName}', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('weblogic', 'ҳ��ɷ���', '1', '1', '99999', 1, null, 'WEB', 2, 'http://127.0.0.1:7001', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('websphere', 'ҳ��ɷ���', '1', '1', '99999', 1, null, 'WEB', 2, 'http://127.0.0.1:7001', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('windows', '����ʹ�����', '1.3', '/���� = 1.3.6.1.2.1.25.2.1.4', '99999', 9, null, 'OS', 12, '1.3.6.1.2.1.25.2.3', 5, 7, null, null, null, null);
insert into M4CATOBJECT (PRODUCTID, OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('windows', '�ڴ�ʹ�����', '1.3', '/���� = 1.3.6.1.2.1.25.2.1.2', '99999', 9, null, 'OS', 12, '1.3.6.1.2.1.25.2.3', 5, 7, null, null, null, null);
commit;
prompt 77 records loaded
prompt Loading M4CATOBJECTITEM...
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 5L', 'vmstat', 'cpu�ȴ���', 'OS', '17', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 5L', 'vmstat', 'cpu���б�', 'OS', '16', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 5L', 'vmstat', '�����ڴ�', 'OS', '4', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 5L', 'vmstat', '���н���', 'OS', '1', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 5L', 'vmstat', '��������', 'OS', '2', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 5L', '��ҳ�ռ�', 'ʹ����', 'OS', '5', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 5L', '������', '����ID', 'OS', '2', 0, null, null, null, 'count');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 5L', '�ļ�ϵͳ�ռ�', '���ô�СM', 'OS', '3', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 5L', '�ļ�ϵͳ�ռ�', '�ܴ�СM', 'OS', '2', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 5L', 'ϵͳ����', '����', 'OS', '12', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 6L', 'vmstat', 'cpu�ȴ���', 'OS', '17', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 6L', 'vmstat', 'cpu���б�', 'OS', '16', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 6L', 'vmstat', '�����ڴ�', 'OS', '4', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 6L', 'vmstat', '���н���', 'OS', '1', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 6L', 'vmstat', '��������', 'OS', '2', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 6L', '��ҳ�ռ�', 'ʹ����', 'OS', '5', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 6L', '������', '����ID', 'OS', '2', 0, null, null, null, 'count');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 6L', '�ļ�ϵͳ�ռ�', '���ô�СM', 'OS', '3', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 6L', '�ļ�ϵͳ�ռ�', '�ܴ�СM', 'OS', '2', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 6L', 'ϵͳ����', '����', 'OS', '12', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 7L', 'vmstat', 'cpu�ȴ���', 'OS', '17', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 7L', 'vmstat', 'cpu���б�', 'OS', '16', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 7L', 'vmstat', '�����ڴ�', 'OS', '4', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 7L', 'vmstat', '���н���', 'OS', '1', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 7L', 'vmstat', '��������', 'OS', '2', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 7L', '��ҳ�ռ�', 'ʹ����', 'OS', '5', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 7L', '������', '����ID', 'OS', '2', 0, null, null, null, 'count');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 7L', '�ļ�ϵͳ�ռ�', '���ô�СM', 'OS', '3', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 7L', '�ļ�ϵͳ�ռ�', '�ܴ�СM', 'OS', '2', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('AIX 7L', 'ϵͳ����', '����', 'OS', '12', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('cisco', 'cpuʹ����', '����', 'NET', '1.5', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('cisco', '�˿�״̬', '���', 'NET', '1.16', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('cisco', '�˿�״̬', '����', 'NET', '1.10', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('cisco', '�˿�״̬', '״̬', 'NET', '1.7', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('cisco', '�ڴ�ʹ����', '����', 'NET', '1.6', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('cisco', '�ڴ�ʹ����', 'ʹ��', 'NET', '1.5', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('hp-ux', 'vmstat', 'cpu�ȴ���', 'OS', '17', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('hp-ux', 'vmstat', 'cpu���б�', 'OS', '16', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('hp-ux', 'vmstat', '�����ڴ�', 'OS', '4', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('hp-ux', 'vmstat', '���н���', 'OS', '1', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('hp-ux', 'vmstat', '��������', 'OS', '2', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('hp-ux', '������', '����ID', 'OS', '2', 0, null, null, null, 'count');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('hp-ux', '�ļ�ϵͳ�ռ�', '���ô�СM', 'OS', '3', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('hp-ux', '�ļ�ϵͳ�ռ�', '�ܴ�СM', 'OS', '2', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('hp-ux', 'ϵͳ����', '����', 'OS', '12', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', 'asm������ռ�', '���ÿռ�M', 'DB', 'usable_file_mb', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', 'asm������ռ�', '�ܿռ�M', 'DB', 'total_mb', 0, null, '���ÿռ�M / �ܿռ�M < 0.1', null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', 'dataguard�鵵���', '���䷽ʽ', 'DB', 'TRANSMIT_MODE', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', 'dataguard�鵵���', '�ָ�ģʽ', 'DB', 'recovery_mode', 1, '�ָ�ģʽ == "MANAGED REAL TIME APPLY"', null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', 'dataguard�鵵���', 'Ŀ�Ŀ�', 'DB', 'destination', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', 'dataguard�鵵���', '���ݿ�ģʽ', 'DB', 'database_mode', 1, '���ݿ�ģʽ == "OPEN_READ-ONLY"', null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', 'dataguard�鵵���', '״̬', 'DB', 'status', 1, '״̬ == "VALID"', null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', 'TOP���', 'ƽ��ʱ��-��', 'DB', 'ecminute', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', 'TOP���', 'ִ�и���', 'DB', 'SCNT', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '��ռ�ʹ����', '���д�СM', 'DB', 'free', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '��ռ�ʹ����', '�ܴ�СM', 'DB', 'total', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '��ʱ�����е�����', '����', 'DB', 'program', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '��ʱ�����е�����', '�ȴ��¼�', 'DB', 'event', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '��ʱ�����е�����', '�ỰID', 'DB', 'sid', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '��ʱ�����е�����', '��ʼʱ��', 'DB', 'start_time', 2, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '��ʱ�����е�����', 'ʹ�ûع��ο���', 'DB', 'used_ublk', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '��ʱ�����е�����', '�û�', 'DB', 'username', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '��ʱ�����е�����', '���Id', 'DB', 'sql_id', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '��ʱ�����е�����', '״̬', 'DB', 'status', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '������', 'object_name', 'DB', 'object_name', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '������', 'session_id', 'DB', 'session_id', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '������', 'sql_id', 'DB', 'sql_id', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '�鵵Ӧ�����', '�ӳ�-ʱ����', 'DB', 'value', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '�Ự��', 'bproc', 'DB', 'bproc', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '�Ự��', 'uproc', 'DB', 'uproc', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '��������ָ��', 'CPUʹ����', 'DB', 'cpu_busy', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '��������ָ��', '��ʱ��ʹ��', 'DB', 'temp_used', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '��������ָ��', '�߼����ֽ�', 'DB', 'logic_read', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '��������ָ��', '���紫��', 'DB', 'inter_io', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '��������ָ��', '�����', 'DB', 'phy_read', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '��������ָ��', '����д', 'DB', 'phy_write', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '��������ָ��', 'ϵͳ����', 'DB', 'os_load', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '������', 'pga������', 'DB', 'pga_hit', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '������', 'sql������', 'DB', 'library_hit', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '������', '�ڴ�����', 'DB', 'memory_sort', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '������', '���ݻ���', 'DB', 'buffer_hit', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '������', '�����ֵ�������', 'DB', 'rowcache_hit', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '���ݿ�״̬', 'ARCHIVER', 'DB', 'ARCHIVER', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '���ݿ�״̬', 'DATABASE_STATUS', 'DB', 'DATABASE_STATUS', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '���ݿ�״̬', 'STARTUP_TIME', 'DB', 'STARTUP_TIME', 2, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '���ݿ�״̬', 'STATUS', 'DB', 'STATUS', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 10g', '���ݿ�״̬', 'VERSION', 'DB', 'VERSION', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', 'asm������ռ�', '���ÿռ�M', 'DB', 'usable_file_mb', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', 'asm������ռ�', '�ܿռ�M', 'DB', 'total_mb', 0, null, '���ÿռ�M / �ܿռ�M < 0.1', null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', 'dataguard�鵵���', '���䷽ʽ', 'DB', 'TRANSMIT_MODE', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', 'dataguard�鵵���', '�ָ�ģʽ', 'DB', 'recovery_mode', 1, '�ָ�ģʽ == "MANAGED REAL TIME APPLY"', null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', 'dataguard�鵵���', 'Ŀ�Ŀ�', 'DB', 'destination', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', 'dataguard�鵵���', '���ݿ�ģʽ', 'DB', 'database_mode', 1, '���ݿ�ģʽ == "OPEN_READ-ONLY"', null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', 'dataguard�鵵���', '״̬', 'DB', 'status', 1, '״̬ == "VALID"', null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', 'TOP���', 'ƽ��ʱ��-��', 'DB', 'ecminute', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', 'TOP���', 'ִ�и���', 'DB', 'SCNT', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '��ռ�ʹ����', '���д�СM', 'DB', 'free', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '��ռ�ʹ����', '�ܴ�СM', 'DB', 'total', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '��ʱ�����е�����', '����', 'DB', 'program', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '��ʱ�����е�����', '�ȴ��¼�', 'DB', 'event', 1, null, null, null, 'avg');
commit;
prompt 100 records committed...
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '��ʱ�����е�����', '�ỰID', 'DB', 'sid', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '��ʱ�����е�����', '��ʼʱ��', 'DB', 'start_time', 2, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '��ʱ�����е�����', 'ʹ�ûع��ο���', 'DB', 'used_ublk', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '��ʱ�����е�����', '�û�', 'DB', 'username', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '��ʱ�����е�����', '���Id', 'DB', 'sql_id', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '��ʱ�����е�����', '״̬', 'DB', 'status', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '������', 'object_name', 'DB', 'object_name', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '������', 'session_id', 'DB', 'session_id', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '������', 'sql_id', 'DB', 'sql_id', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '�鵵Ӧ�����', '�ӳ�-ʱ����', 'DB', 'value', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '�Ự��', 'bproc', 'DB', 'bproc', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '�Ự��', 'uproc', 'DB', 'uproc', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '��������ָ��', 'CPUʹ����', 'DB', 'cpu_busy', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '��������ָ��', '��ʱ��ʹ��', 'DB', 'temp_used', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '��������ָ��', '�߼����ֽ�', 'DB', 'logic_read', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '��������ָ��', '���紫��', 'DB', 'inter_io', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '��������ָ��', '�����', 'DB', 'phy_read', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '��������ָ��', '����д', 'DB', 'phy_write', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '��������ָ��', 'ϵͳ����', 'DB', 'os_load', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '������', 'pga������', 'DB', 'pga_hit', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '������', 'sql������', 'DB', 'library_hit', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '������', '�ڴ�����', 'DB', 'memory_sort', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '������', '���ݻ���', 'DB', 'buffer_hit', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '������', '�����ֵ�������', 'DB', 'rowcache_hit', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '���ݿ�״̬', 'ARCHIVER', 'DB', 'ARCHIVER', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '���ݿ�״̬', 'DATABASE_STATUS', 'DB', 'DATABASE_STATUS', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '���ݿ�״̬', 'STARTUP_TIME', 'DB', 'STARTUP_TIME', 2, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '���ݿ�״̬', 'STATUS', 'DB', 'STATUS', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 11g', '���ݿ�״̬', 'VERSION', 'DB', 'VERSION', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', 'asm������ռ�', '���ÿռ�M', 'DB', 'usable_file_mb', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', 'asm������ռ�', '�ܿռ�M', 'DB', 'total_mb', 0, null, '���ÿռ�M / �ܿռ�M < 0.1', null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', 'dataguard�鵵���', '���䷽ʽ', 'DB', 'TRANSMIT_MODE', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', 'dataguard�鵵���', '�ָ�ģʽ', 'DB', 'recovery_mode', 1, '�ָ�ģʽ == "MANAGED REAL TIME APPLY"', null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', 'dataguard�鵵���', 'Ŀ�Ŀ�', 'DB', 'destination', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', 'dataguard�鵵���', '���ݿ�ģʽ', 'DB', 'database_mode', 1, '���ݿ�ģʽ == "OPEN_READ-ONLY"', null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', 'dataguard�鵵���', '״̬', 'DB', 'status', 1, '״̬ == "VALID"', null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', 'TOP���', 'ƽ��ʱ��-��', 'DB', 'ecminute', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', 'TOP���', 'ִ�и���', 'DB', 'SCNT', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '��ռ�ʹ����', '���д�СM', 'DB', 'free', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '��ռ�ʹ����', '�ܴ�СM', 'DB', 'total', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '��ʱ�����е�����', '����', 'DB', 'program', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '��ʱ�����е�����', '�ȴ��¼�', 'DB', 'event', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '��ʱ�����е�����', '�ỰID', 'DB', 'sid', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '��ʱ�����е�����', '��ʼʱ��', 'DB', 'start_time', 2, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '��ʱ�����е�����', 'ʹ�ûع��ο���', 'DB', 'used_ublk', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '��ʱ�����е�����', '�û�', 'DB', 'username', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '��ʱ�����е�����', '���Id', 'DB', 'sql_id', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '��ʱ�����е�����', '״̬', 'DB', 'status', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '������', 'object_name', 'DB', 'object_name', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '������', 'session_id', 'DB', 'session_id', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '������', 'sql_id', 'DB', 'sql_id', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '�鵵Ӧ�����', '�ӳ�-ʱ����', 'DB', 'value', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '�Ự��', 'bproc', 'DB', 'bproc', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '�Ự��', 'uproc', 'DB', 'uproc', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '��������ָ��', 'CPUʹ����', 'DB', 'cpu_busy', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '��������ָ��', '��ʱ��ʹ��', 'DB', 'temp_used', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '��������ָ��', '�߼����ֽ�', 'DB', 'logic_read', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '��������ָ��', '���紫��', 'DB', 'inter_io', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '��������ָ��', '�����', 'DB', 'phy_read', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '��������ָ��', '����д', 'DB', 'phy_write', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '��������ָ��', 'ϵͳ����', 'DB', 'os_load', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '������', 'pga������', 'DB', 'pga_hit', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '������', 'sql������', 'DB', 'library_hit', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '������', '�ڴ�����', 'DB', 'memory_sort', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '������', '���ݻ���', 'DB', 'buffer_hit', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '������', '�����ֵ�������', 'DB', 'rowcache_hit', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '���ݿ�״̬', 'ARCHIVER', 'DB', 'ARCHIVER', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '���ݿ�״̬', 'DATABASE_STATUS', 'DB', 'DATABASE_STATUS', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '���ݿ�״̬', 'STARTUP_TIME', 'DB', 'STARTUP_TIME', 2, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '���ݿ�״̬', 'STATUS', 'DB', 'STATUS', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('oracle 9i', '���ݿ�״̬', 'VERSION', 'DB', 'VERSION', 1, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('RHEL 5', 'vmstat', 'cpu�ȴ���', 'OS', '16', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('RHEL 5', 'vmstat', 'cpu���б�', 'OS', '15', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('RHEL 5', 'vmstat', '�����ڴ�', 'OS', '4', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('RHEL 5', 'vmstat', '���н���', 'OS', '1', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('RHEL 5', 'vmstat', '��������', 'OS', '2', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('RHEL 5', '������', '����ID', 'OS', '2', 0, null, null, null, 'count');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('RHEL 5', '�ļ�ϵͳ�ռ�', '���ô�СM', 'OS', '3', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('RHEL 5', '�ļ�ϵͳ�ռ�', '�ܴ�СM', 'OS', '2', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('RHEL 5', 'ϵͳ����', '����', 'OS', '12', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('solaris', 'vmstat', 'cpu�ȴ���', 'OS', '17', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('solaris', 'vmstat', 'cpu���б�', 'OS', '16', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('solaris', 'vmstat', '�����ڴ�', 'OS', '4', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('solaris', 'vmstat', '���н���', 'OS', '1', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('solaris', 'vmstat', '��������', 'OS', '2', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('solaris', '������', '����ID', 'OS', '2', 0, null, null, null, 'count');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('solaris', '�ļ�ϵͳ�ռ�', '���ô�СM', 'OS', '3', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('solaris', '�ļ�ϵͳ�ռ�', '�ܴ�СM', 'OS', '2', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('solaris', 'ϵͳ����', '����', 'OS', '12', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('tomcat', 'ҳ��ɷ���', '������', 'WEB', '1', 1, '������ == "OK"', null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('weblogic', 'java�����', '��ǰʹ��', 'WEB', 'HeapSizeCurrent', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('weblogic', 'java�����', '���ñ�', 'WEB', 'HeapFreePercent', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('weblogic', '��ʹ�����', '����', 'WEB', 'used', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('weblogic', '��ʹ�����', '������', 'WEB', 'max', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('weblogic', '���ӳ�', '��ǰ����', 'WEB', 'CurrCapacity', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('weblogic', '���ӳ�', '�����', 'WEB', 'ActiveConnectionsCurrentCount', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('weblogic', '���ӳ�', '������', 'WEB', 'NumAvailable', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('weblogic', 'ҳ��ɷ���', '������', 'WEB', '1', 1, '������ == "OK"', null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('websphere', 'ҳ��ɷ���', '������', 'WEB', '1', 1, '������ == "OK"', null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('windows', '����ʹ�����', '��Ԫ��С', 'OS', '1.4', 0, null, null, null, 'avg');
commit;
prompt 200 records committed...
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('windows', '����ʹ�����', '����', 'OS', '1.2', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('windows', '����ʹ�����', 'ʹ����', 'OS', '= ��ʹ�� / �ܴ�С', 0, '��ʹ�� / �ܴ�С < 0.9', null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('windows', '����ʹ�����', '��ʹ��', 'OS', '1.6', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('windows', '����ʹ�����', '�ܴ�С', 'OS', '1.5', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('windows', '����ʹ�����', '�ܴ�СM', 'OS', '= (�ܴ�С * ��Ԫ��С )/1000000', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('windows', '�ڴ�ʹ�����', '��Ԫ��С', 'OS', '1.4', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('windows', '�ڴ�ʹ�����', '����', 'OS', '1.2', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('windows', '�ڴ�ʹ�����', 'ʹ����', 'OS', '= ��ʹ�� / �ܴ�С', 0, '��ʹ�� / �ܴ�С < 0.9', null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('windows', '�ڴ�ʹ�����', '��ʹ��', 'OS', '1.6', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('windows', '�ڴ�ʹ�����', '�ܴ�С', 'OS', '1.5', 0, null, null, null, 'avg');
insert into M4CATOBJECTITEM (PRODUCTID, OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('windows', '�ڴ�ʹ�����', '�ܴ�СM', 'OS', '= (�ܴ�С * ��Ԫ��С )/1000000', 0, null, null, null, 'avg');
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
values ('?����?????', 'M1', 'String');
insert into M4DEFAULTPROPS (PROPNAME, DFTVALUE, VTYPE)
values ('IP???��', 'P1', 'String');
commit;
prompt 4 records loaded
prompt Loading M4OBJECT...
insert into M4OBJECT (OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('CPU', '*', '1', '99999', 1, null, 'NET', 2, '1.3.6.1.4.1.25506.2.6.1.1.1.1.6', 5, 7, null, null, null, null);
insert into M4OBJECT (OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('cpu����', '1', '1', '99999', 1, null, 'OS', 12, '1.3.6.1.2.1.25.3.3.1', 5, 7, null, null, null, null);
insert into M4OBJECT (OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('GGSERR', null, '1', '99999', 9, null, 'OS', 3, 'tail -200 /goldengate/gg/ggserr.log  | grep ERROR', 20, 7, null, null, null, null);
insert into M4OBJECT (OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('���оָ���״̬', '3', '^MANAGER', '99999', 9, null, 'OS', 13, 'su - oracle -c ''/goldengate/gg/ggscinfo.cmd''', 20, 5, null, null, null, null);
insert into M4OBJECT (OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('��ʱ����ִ��', 'WHAT', '1', '99999', 9, null, 'DB', 12, 'select log_user, substr(what,1,30) what, next_date, next_sec, interval,broken from dba_jobs    where log_user <> ''SYS''', 20, 7, null, null, null, null);
insert into M4OBJECT (OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('��˰OGG��¼���ݱȶ�', 'cxbm', '1', '99999', 9, null, 'DB', 12, 'select to_char(zgcx.jgrq, ''YYYY-MM-DD'') JGRQ, zgcx.bm cxbm,' || chr(10) || 'zgyk.jls ykjl, zgcx.jls cxjl from (select *  from tfd_cx.xt_rep_valid where zbbj=90 and jgrq=trunc(sysdate-1)) zgyk' || chr(10) || 'right join' || chr(10) || '(select *  from tfd_cx.xt_rep_valid where zbbj=91 and jgrq=trunc(sysdate-1)) zgcx' || chr(10) || 'on zgyk.jgrq=zgcx.jgrq and zgyk.bm=zgcx.bm', 60, 700, null, null, null, null);
insert into M4OBJECT (OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('��������OGG��¼���ݱȶ�', 'cxbm', '1', '99999', 9, null, 'DB', 12, 'select to_char(zgcx.jgrq, ''YYYY-MM-DD'') JGRQ, zgcx.bm cxbm,' || chr(10) || 'zgyk.jls ykjl, zgcx.jls cxjl from (select *  from tfd_cx.xt_rep_valid where zbbj=80 and jgrq=trunc(sysdate-1)) zgyk' || chr(10) || 'right join' || chr(10) || '(select *  from tfd_cx.xt_rep_valid where zbbj=81 and jgrq=trunc(sysdate-1)) zgcx' || chr(10) || 'on zgyk.jgrq=zgcx.jgrq and zgyk.bm=zgcx.bm', 60, 700, null, null, null, null);
insert into M4OBJECT (OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('�ڴ�', '*', '1', '99999', 1, null, 'NET', 2, '1.3.6.1.4.1.25506.2.6.1.1.1.1.8', 5, 7, null, null, null, null);
insert into M4OBJECT (OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('����OGG', null, '1', '99999', 9, null, 'OS', 1, 'su - oracle -c ''/goldengate/gg/ggscistart.cmd''', 5, 7, null, null, null, null);
insert into M4OBJECT (OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('�ļ�ϵͳ�ռ�', '7', '1', '99999', 9, null, 'OS', 13, 'df -g |egrep "oradata|goldengate|u01" ', 20, 7, '( ʣ��  / ��С ) < 0.1', '( ʣ��  / ��С ) < 0.05', null, null);
insert into M4OBJECT (OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('���бȶԽ��', 'RS', '1', '99999', 1, null, 'DB', 13, 'select dbms_lob.substr(pkg_dist_check.error) rs from dual', 60, 5, null, null, null, null);
insert into M4OBJECT (OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('ҳ��ɷ���-8001', '1', '1', '99999', 1, null, 'WEB', 12, 'http://144.12.112.1:8001/', 5, 7, null, null, null, null);
insert into M4OBJECT (OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('ҳ��ɷ���-8002', '1', '1', '99999', 1, null, 'WEB', 12, 'http://144.12.112.1:8002/', 5, 7, null, null, null, null);
insert into M4OBJECT (OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('OGG-GGS', '3', '^MANAGER', '99999', 9, null, 'OS', 13, 'cd /goldengate/ggs ; ./ggsci <<EOF' || chr(10) || 'info er *' || chr(10) || 'info all' || chr(10) || 'EOF', 10, 500, null, null, null, null);
insert into M4OBJECT (OBJECTNAME, OBJNAMECOLS, VALIDLINESTART, VALIDLINEEND, RESULTMODE, COLGAP, CATNAME, OBJECTTYPE, DEFAULTSCRIPT, FLUSHINTERVAL, OUTPUTREMAINDAYS, THRESHOLDSCRIPT, DANGERSCRIPT, CHECKNORMAL, EXPECTROW)
values ('OGG-GSGG', '3', '^MANAGER', '99999', 9, null, 'OS', 13, 'cd /goldengate/gsgg ; ./ggsci <<EOF' || chr(10) || 'info er *' || chr(10) || 'info all' || chr(10) || 'EOF', 10, 500, null, null, null, null);
commit;
prompt 15 records loaded
prompt Loading M4OBJECTITEM...
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('CPU', 'ʹ����', 'NET', '*', 0, null, null, null, 'sum');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('cpu����', 'ʹ����', 'OS', '2', 0, null, null, null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('���оָ���״̬', 'Chkpt�ӳ�', 'OS', '5', 1, null, 'Chkpt�ӳ� > "01:00:00"', null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('���оָ���״̬', '�ӳ�', 'OS', '4', 1, null, '�ӳ� > "01:00:00"', null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('���оָ���״̬', '״̬', 'OS', '2', 1, '״̬ == "RUNNING"', null, null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('��ʱ����ִ��', 'broken', 'DB', 'broken', 1, 'broken == "N"', null, null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('��ʱ����ִ��', 'interval', 'DB', 'interval', 1, null, null, null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('��ʱ����ִ��', 'log_user', 'DB', 'log_user', 1, null, null, null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('��ʱ����ִ��', 'next_date', 'DB', 'next_date', 1, null, 'next_date == "4000-01-01 00:00:00.0"', null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('��ʱ����ִ��', 'next_sec', 'DB', 'next_sec', 1, null, null, null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('��˰OGG��¼���ݱȶ�', 'JGRQ', 'DB', 'JGRQ', 1, null, null, null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('��˰OGG��¼���ݱȶ�', 'JLS_CX', 'DB', 'CXJL', 0, 'JLS_CX == JLS_DG', null, null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('��˰OGG��¼���ݱȶ�', 'JLS_DG', 'DB', 'YKJL', 0, null, null, null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('��������OGG��¼���ݱȶ�', 'JGRQ', 'DB', 'JGRQ', 1, null, null, null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('��������OGG��¼���ݱȶ�', 'JLS_CX', 'DB', 'CXJL', 0, 'JLS_CX == JLS_DG', null, null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('��������OGG��¼���ݱȶ�', 'JLS_DG', 'DB', 'YKJL', 0, null, null, null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('�ڴ�', 'ʹ����', 'NET', '*', 0, null, null, null, 'sum');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('�ļ�ϵͳ�ռ�', '��С', 'OS', '2', 0, null, null, null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('�ļ�ϵͳ�ռ�', 'ʣ��', 'OS', '3', 0, null, null, null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('���бȶԽ��', '�ȶԽ��', 'DB', 'RS', 1, '$CONTAINS(  �ȶԽ��, "OK")', null, null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('OGG-GGS', '״̬', 'OS', '2', 1, '״̬ == "RUNNING"', null, '״̬ == "ABENDED"', 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('OGG-GGS', '�ӳ�', 'OS', '4', 1, null, '�ӳ� > "00:20:00" &&  ! $STARTSWITH(�ӳ� , "unkn")', null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('OGG-GGS', 'Chkpt�ӳ�', 'OS', '5', 1, null, 'Chkpt�ӳ� > "01:00:00"', null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('OGG-GSGG', '״̬', 'OS', '2', 1, '״̬ == "RUNNING"', null, '״̬ == "ABENDED"', 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('OGG-GSGG', '�ӳ�', 'OS', '4', 1, null, '�ӳ� > "00:20:00" &&  ! $STARTSWITH(�ӳ� , "unkn")', null, 'avg');
insert into M4OBJECTITEM (OBJECTNAME, ITEMNAME, CATNAME, COLNAME, VALUETYPE, CHECKNORMAL, CHECKWARN, CHECKDANGER, COLLECTFUN)
values ('OGG-GSGG', 'Chkpt�ӳ�', 'OS', '5', 1, null, 'Chkpt�ӳ� > "01:00:00"', null, 'avg');
commit;

set feedback on
set define on
prompt Done.
