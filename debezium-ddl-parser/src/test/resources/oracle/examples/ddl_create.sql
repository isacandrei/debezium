-- Create Table
create table debezium.products (id NUMBER(4) GENERATED BY DEFAULT ON NULL AS IDENTITY (START WITH 101) NOT NULL PRIMARY KEY, name VARCHAR2(255) NOT NULL, description VARCHAR2(512), weight FLOAT);
create table debezium.products (id NUMBER(4) GENERATED BY DEFAULT ON NULL AS IDENTITY (START WITH 101 INCREMENT BY 1 CYCLE CACHE 200) NOT NULL PRIMARY KEY, name VARCHAR2(255) NOT NULL, description VARCHAR2(512), weight FLOAT);
create global temporary table sys.ora_temp_1_ds_1550399 sharing=none on commit preserve rows cache noparallel as select /*+ no_parallel(t) no_parallel_index(t) dbms_stats cursor_sharing_exact use_weak_name_resl dynamic_sampling(0) no_monitoring xmlindex_sel_idx_tbl opt_param('optimizer_inmemory_aware' 'false') no_substrb_pad */"ENTRYUUID", rowid SYS_DS_ALIAS_0 from "IDENTITYDB"."OAUTH2_CLIENT_CHANGE_LOGS" sample ( 10.0000000000) t WHERE 1 = 2;
CREATE TABLE "ABCD_SHARD_1_3"."D_PLAN_SCHEDULE_LOT_ENTRY"("ID" NUMBER(38,0) NOT NULL ENABLE, "LOT_ID" NUMBER(38,0) NOT NULL ENABLE, "PLAN_SCHEDULE_ID" NUMBER(38,0) NOT NULL ENABLE, "IS_ACTUAL" NUMBER(1,0) NOT NULL ENABLE, "OOS_POSITION_NUMBER" NVARCHAR2(50) DEFAULT 0, CONSTRAINT "PK_PSLE_ENTRY_ID" PRIMARY KEY ("ID") USING INDEX  ENABLE, SUPPLEMENTAL LOG DATA (PRIMARY KEY) COLUMNS, SUPPLEMENTAL LOG DATA (UNIQUE INDEX) COLUMNS, SUPPLEMENTAL LOG DATA (FOREIGN KEY) COLUMNS, CONSTRAINT "FK_PSLE_LOT_VERSION" FOREIGN KEY ("LOT_ID") REFERENCES "ABCD_SHARD_1_3"."D_LOT_VERSION" ("ID") DISABLE, CONSTRAINT "FK_PSLE_PLAN_SCHEDULE_VERSION" FOREIGN KEY ("PLAN_SCHEDULE_ID") REFERENCES "ABCD_SHARD_1_3"."D_PLAN_SCHEDULE_VERSION" ("ID") ENABLE );
CREATE TABLE IDATA_BAIIR.CUST_INFO (ID NUMBER(20) NOT NULL ENABLE, CUST_NAME VARCHAR2(200 CHAR) NOT NULL ENABLE, CUST_NAME_PY VARCHAR2(500 CHAR), CUST_NAME_PY_SZ VARCHAR2(50 CHAR), CUST_NAME_ABBR VARCHAR2(100 CHAR), CUST_NAME_ABBR_PY VARCHAR2(300 CHAR), CUST_NAME_ABBR_PY_SZ VARCHAR2(50 CHAR), CUST_NAME_EN VARCHAR2(100 CHAR), CUST_TYPE NUMBER(10), CUST_STATUS NUMBER(10), CUST_LEVEL NUMBER(10), MEMO VARCHAR2(500 CHAR), TEL_NUM VARCHAR2(100 CHAR), FAX_NUM VARCHAR2(100 CHAR), INTERNET_ADDRESS VARCHAR2(200 CHAR), COMPANY_ADDRESS VARCHAR2(200 CHAR), POST_CODE VARCHAR2(50 CHAR), EMAIL_ADDRESS VARCHAR2(200 CHAR), CUST_VALID_FLAG NUMBER(1), EXP_DATE DATE, CERT_TYPE NUMBER(10), CERT_NUM VARCHAR2(100 CHAR), CERT_CUST_NAME VARCHAR2(200 CHAR), RISK_LEVEL NUMBER(10), FXPP_CONFIRM_PROCESS NUMBER(10), FXPP_CONFIRM_PROCESS_INFO NUMBER(10), SDX_INFO_AUDITOR VARCHAR2(100 CHAR), SDX_NEW_COM NUMBER(1), ECIF_OTC_FLAG NUMBER(1), AUDIT_STATUS NUMBER(1), IS_VALID NUMBER(1) DEFAULT 1 NOT NULL ENABLE, CREATE_TIME DATE, CREATOR NUMBER(20), CREATOR_NAME VARCHAR2(30 CHAR), MODIFY_TIME DATE, MODIFIER NUMBER(20), MODIFIER_NAME VARCHAR2(30 CHAR)) tablespace BIGDATADBT pctfree 10 initrans 1 maxtrans 255 storage ( initial 192K next 1M minextents 1 maxextents unlimited );
create table dbz1211 (id number(38) not null, data varchar2(50), constraint name primary key (id) using index tablespace ts1) tablespace ts2;
CREATE TABLE "HR"."COUNTRIES"( "COUNTRY_ID" CHAR(2) CONSTRAINT "COUNTRY_ID_NN" NOT NULL ENABLE,"COUNTRY_NAME" VARCHAR2(40),"REGION_ID" NUMBER,CONSTRAINT "COUNTRY_C_ID_PK" PRIMARY KEY ("COUNTRY_ID") ENABLE,SUPPLEMENTAL LOG DATA (ALL) COLUMNS,CONSTRAINT "COUNTR_REG_FK" FOREIGN KEY ("REGION_ID")REFERENCES "HR"."REGIONS" ("REGION_ID") ENABLE) ORGANIZATION INDEX NOCOMPRESS;
CREATE TABLE "VELEBIT_ZAVAR_PROD"."PON_PRIJENOS" ("SIF_AGENCIJE" NUMBER DEFAULT 0 NOT NULL ENABLE, "DAT_PRIJENOSA" DATE NOT NULL ENABLE, "VRS_POLICE" NUMBER DEFAULT 0 NOT NULL ENABLE, "BR_ZAPRIMLJENIH" NUMBER DEFAULT 0, "BR_POLICIRANIH" NUMBER DEFAULT 0) SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 ROW STORE COMPRESS ADVANCED LOGGING STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "TS_VELEBIT" PARALLEL 8 ;
create table eshp_auction_file_history (history_id number not null, history_date timestamp not null, auction_id number not null, changed_by varchar(4000), type varchar(4000) not null, constraint pk_eshp_auction_file_history primary key (history_id) using index (create unique index idx_eshp_auction_file_history_id on eshp_auction_file_history(history_id)), constraint fk_eshp_auc_file_history_auction foreign key (auction_id) references eshp_auction(auction_id) on delete cascade);
CREATE TABLE "IDENTITYDB"."CHANGE_NUMBERS" ( "CHANGE_NO" NUMBER(*,0) NOT NULL ENABLE, "SOURCE_INFO" VARCHAR2(128) NOT NULL ENABLE, "CHANGED_TIME" TIMESTAMP (6) DEFAULT SYSDATE, "ENTITY_TYPE" VARCHAR2(36) NOT NULL ENABLE, "ORGANIZATIONID" VARCHAR2(36), "PROCESSED" NUMBER(1,0) DEFAULT 1 NOT NULL ENABLE, "TRACKING_ID" VARCHAR2(256) NOT NULL ENABLE, "EXPIRY_TIME" TIMESTAMP (6), "ACTOR" VARCHAR2(36), "ENTITY_ID" VARCHAR2(36) ) PARTITION BY RANGE ("EXPIRY_TIME") INTERVAL (NUMTODSINTERVAL(7, 'DAY')) SUBPARTITION BY HASH ("CHANGE_NO") SUBPARTITIONS 16 (PARTITION "SYS_P44414"  VALUES LESS THAN (TIMESTAMP' 2021-07-06 00:00:00') ( SUBPARTITION "SYS_SUBP44398" , SUBPARTITION "SYS_SUBP44399" , SUBPARTITION "SYS_SUBP44400" , SUBPARTITION "SYS_SUBP44401" , SUBPARTITION "SYS_SUBP44402" , SUBPARTITION "SYS_SUBP44403" , SUBPARTITION "SYS_SUBP44404" , SUBPARTITION "SYS_SUBP44405" , SUBPARTITION "SYS_SUBP44406" , SUBPARTITION "SYS_SUBP44407" , SUBPARTITION "SYS_SUBP44408" , SUBPARTITION "SYS_SUBP44409" , SUBPARTITION "SYS_SUBP44410" , SUBPARTITION "SYS_SUBP44411" , SUBPARTITION "SYS_SUBP44412" , SUBPARTITION "SYS_SUBP44413" ) );
CREATE TABLE "ETUDES"."IMPORT_EXMETI" (abort_step NUMBER,access_method VARCHAR2(16),ancestor_object_name VARCHAR2(128),ancestor_object_schema VARCHAR2(128),ancestor_object_type VARCHAR2(128),ancestor_process_order NUMBER,base_object_name VARCHAR2(128),base_object_schema VARCHAR2(128),base_object_type VARCHAR2(128),base_process_order NUMBER,block_size NUMBER,cluster_ok NUMBER,completed_bytes NUMBER,completed_rows NUMBER,completion_time DATE,control_queue VARCHAR2(128),creation_level NUMBER,creation_time DATE,cumulative_time NUMBER,data_buffer_size NUMBER,data_io NUMBER,dataobj_num NUMBER,db_version VARCHAR2(60),degree NUMBER,domain_process_order NUMBER,dump_allocation NUMBER,dump_fileid NUMBER,dump_length NUMBER,dump_orig_length NUMBER,dump_position NUMBER,duplicate NUMBER,elapsed_time NUMBER,error_count NUMBER,extend_size NUMBER,file_max_size NUMBER,file_name VARCHAR2(4000),file_type NUMBER,flags NUMBER,grantor VARCHAR2(128),granules NUMBER,guid RAW(16),in_progress CHAR(1),instance VARCHAR2(60),instance_id NUMBER,is_default NUMBER,job_mode VARCHAR2(21),job_version VARCHAR2(60),last_file NUMBER,last_update DATE,load_method NUMBER,metadata_buffer_size NUMBER,metadata_io NUMBER,name VARCHAR2(128),object_int_oid VARCHAR2(130),object_long_name VARCHAR2(4000),object_name VARCHAR2(200),object_number NUMBER,object_path_seqno NUMBER,object_row NUMBER,object_schema VARCHAR2(128),object_tablespace VARCHAR2(128),object_type VARCHAR2(128),object_type_path VARCHAR2(200),objnum NUMBER,old_value VARCHAR2(4000),operation VARCHAR2(8),option_tag VARCHAR2(128),orig_base_object_name VARCHAR2(128),orig_base_object_schema VARCHAR2(128),original_object_name VARCHAR2(128),original_object_schema VARCHAR2(128),packet_number NUMBER,parallelization NUMBER,parent_object_name VARCHAR2(128),parent_object_schema VARCHAR2(128),parent_process_order NUMBER,partition_name VARCHAR2(128),phase NUMBER,platform VARCHAR2(101),process_name VARCHAR2(128),process_order NUMBER,processing_state CHAR(1),processing_status CHAR(1),property NUMBER,proxy_schema VARCHAR2(128),proxy_view VARCHAR2(128),queue_tabnum NUMBER,remote_link VARCHAR2(128),scn NUMBER,seed NUMBER,service_name VARCHAR2(64),size_estimate NUMBER,src_compat VARCHAR2(60),start_time DATE,state VARCHAR2(12),status_queue VARCHAR2(128),subpartition_name VARCHAR2(128),target_xml_clob CLOB,tde_rewrapped_key RAW(2000),template_table VARCHAR2(128),timezone VARCHAR2(64),total_bytes NUMBER,trigflag NUMBER,unload_method NUMBER,user_directory VARCHAR2(4000),user_file_name VARCHAR2(4000),user_name VARCHAR2(128),value_n NUMBER,value_t VARCHAR2(4000),version NUMBER,work_item VARCHAR2(21),xml_clob CLOB,xml_process_order NUMBER) SEGMENT CREATION IMMEDIATE NO INMEMORY INITRANS 100;
CREATE TABLE "IFSAPP".CMP4$94648 organization heap tablespace "IFSAPP_DATA" compress for all operations nologging as select /*+ DYNAMIC_SAMPLING(0) */ * from "IFSAPP".COMP3$94648 mytab;
CREATE TABLE "ZZJOBRUN_MDE" ("MANDT" VARCHAR2 (000009) DEFAULT '000' NOT NULL, "REPID" VARCHAR2 (000120) DEFAULT ' ' NOT NULL, "VARNA" VARCHAR2 (000042) DEFAULT ' ' NOT NULL, "ZZ_MDE_INFO" VARCHAR2 (000075) DEFAULT ' ' NOT NULL) PCTFREE 10 PCTUSED 00 INITRANS 001 TABLESPACE PSAPSR3TBLS NOCOMPRESS NO INMEMORY STORAGE (INITIAL 0000000064 K NEXT 0000001024 K MINEXTENTS 0000000001 MAXEXTENTS UNLIMITED PCTINCREASE 0000 FREELISTS 001 FREELIST GROUPS 01);
-- Create index
create index hr.name on hr.table (id,data) tablespace ts;
create unique index idx_eshp_auction_file_history_id on eshp_auction_file_history(history_id);
CREATE UNIQUE INDEX "IDENTITYDB"."IDX_CHANGENUMBERS_PK" ON "IDENTITYDB"."CHANGE_NUMBERS" ("CHANGE_NO", "EXPIRY_TIME") LOCAL (PARTITION "SYS_P44414" NOCOMPRESS ( SUBPARTITION "SYS_SUBP44398" , SUBPARTITION "SYS_SUBP44399" , SUBPARTITION "SYS_SUBP44400" , SUBPARTITION "SYS_SUBP44401" , SUBPARTITION "SYS_SUBP44403" , SUBPARTITION "SYS_SUBP44404" , SUBPARTITION "SYS_SUBP44405" , SUBPARTITION "SYS_SUBP44406" , SUBPARTITION "SYS_SUBP44407" , SUBPARTITION "SYS_SUBP44408" , SUBPARTITION "SYS_SUBP44409" , SUBPARTITION "SYS_SUBP44410" , SUBPARTITION "SYS_SUBP44411" , SUBPARTITION "SYS_SUBP44412" , SUBPARTITION "SYS_SUBP44413" ) )