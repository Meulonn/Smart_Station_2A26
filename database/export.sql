--------------------------------------------------------
--  Fichier cr�� - jeudi-novembre-04-2021   
--------------------------------------------------------
DROP TABLE "SYSTEM"."AGENTS";
DROP TABLE "SYSTEM"."CLIENTS";
DROP TABLE "SYSTEM"."DELIVERIES";
DROP TABLE "SYSTEM"."PRODUCT";
DROP TABLE "SYSTEM"."TRUCK";
--------------------------------------------------------
--  DDL for Table AGENTS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."AGENTS" 
   (	"CIN" CHAR(8 BYTE), 
	"NAME" CHAR(20 BYTE), 
	"ADMISSIONDATE" DATE, 
	"NBR_ABSENCES" NUMBER, 
	"ADRESS" CHAR(50 BYTE), 
	"POSITION" NUMBER(*,0), 
	"SALARY" FLOAT(126), 
	"EMAIL" CHAR(40 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CLIENTS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."CLIENTS" 
   (	"CLIENT_CIN" CHAR(8 BYTE), 
	"NAME_CLIENT" CHAR(20 BYTE), 
	"PHONE_NUM" LONG, 
	"BIRTHDAY" DATE, 
	"GENDER" NUMBER(*,0), 
	"EMAIL" CHAR(40 BYTE), 
	"ADRESS" CHAR(50 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DELIVERIES
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."DELIVERIES" 
   (	"PACKAGE_NUM" NUMBER(*,0), 
	"DELIVERY_DATE" DATE, 
	"PAYEMENT" FLOAT(126), 
	"DESTINATION" CHAR(20 BYTE), 
	"CLIENT_CIN" CHAR(8 BYTE), 
	"TRUCK_ID" CHAR(8 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PRODUCT
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."PRODUCT" 
   (	"PRODUCT_ID" CHAR(8 BYTE), 
	"PROVIDER_NAME" CHAR(20 BYTE), 
	"QUANTITY" NUMBER(*,0), 
	"PRICE" FLOAT(126), 
	"PROVIDER_EMAIL" CHAR(40 BYTE), 
	"BILL" FLOAT(126), 
	"PRODUUCT_STATUS" NUMBER(*,0), 
	"PRODUCT_NAME" CHAR(20 BYTE), 
	"PACKAGE_NUM" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TRUCK
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."TRUCK" 
   (	"TRUCK_ID" CHAR(8 BYTE), 
	"TRUCT_STATE" NUMBER, 
	"CIN" CHAR(8 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.AGENTS
SET DEFINE OFF;
REM INSERTING into SYSTEM.CLIENTS
SET DEFINE OFF;
REM INSERTING into SYSTEM.DELIVERIES
SET DEFINE OFF;
REM INSERTING into SYSTEM.PRODUCT
SET DEFINE OFF;
REM INSERTING into SYSTEM.TRUCK
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index AGENTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."AGENTS_PK" ON "SYSTEM"."AGENTS" ("CIN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CLIENTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."CLIENTS_PK" ON "SYSTEM"."CLIENTS" ("CLIENT_CIN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index DELIVERIES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."DELIVERIES_PK" ON "SYSTEM"."DELIVERIES" ("PACKAGE_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index TRUCK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."TRUCK_PK" ON "SYSTEM"."TRUCK" ("TRUCK_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table AGENTS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."AGENTS" ADD CONSTRAINT "AGENTS_PK" PRIMARY KEY ("CIN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."AGENTS" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."AGENTS" MODIFY ("SALARY" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."AGENTS" MODIFY ("POSITION" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."AGENTS" MODIFY ("ADRESS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."AGENTS" MODIFY ("NBR_ABSENCES" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."AGENTS" MODIFY ("ADMISSIONDATE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."AGENTS" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."AGENTS" MODIFY ("CIN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CLIENTS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."CLIENTS" MODIFY ("ADRESS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CLIENTS" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CLIENTS" MODIFY ("GENDER" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CLIENTS" MODIFY ("BIRTHDAY" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CLIENTS" MODIFY ("PHONE_NUM" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CLIENTS" MODIFY ("NAME_CLIENT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CLIENTS" MODIFY ("CLIENT_CIN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CLIENTS" ADD CONSTRAINT "CLIENTS_PK" PRIMARY KEY ("CLIENT_CIN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DELIVERIES
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."DELIVERIES" ADD CONSTRAINT "DELIVERIES_PK" PRIMARY KEY ("PACKAGE_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."DELIVERIES" MODIFY ("CLIENT_CIN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."DELIVERIES" MODIFY ("PAYEMENT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."DELIVERIES" MODIFY ("DELIVERY_DATE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."DELIVERIES" MODIFY ("PACKAGE_NUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."PRODUCT" ADD CONSTRAINT "PRODUCT_PK" PRIMARY KEY ("PRODUCT_ID") DISABLE;
  ALTER TABLE "SYSTEM"."PRODUCT" MODIFY ("PRODUCT_NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PRODUCT" MODIFY ("PRODUUCT_STATUS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PRODUCT" MODIFY ("BILL" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PRODUCT" MODIFY ("PROVIDER_EMAIL" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PRODUCT" MODIFY ("PRICE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PRODUCT" MODIFY ("QUANTITY" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PRODUCT" MODIFY ("PROVIDER_NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PRODUCT" MODIFY ("PRODUCT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TRUCK
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."TRUCK" ADD CONSTRAINT "TRUCK_PK" PRIMARY KEY ("TRUCK_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."TRUCK" MODIFY ("TRUCT_STATE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."TRUCK" MODIFY ("TRUCK_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table DELIVERIES
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."DELIVERIES" ADD CONSTRAINT "DELIVERIES_FK1" FOREIGN KEY ("TRUCK_ID")
	  REFERENCES "SYSTEM"."TRUCK" ("TRUCK_ID") ENABLE;
  ALTER TABLE "SYSTEM"."DELIVERIES" ADD CONSTRAINT "DELIVERIES_FK2" FOREIGN KEY ("CLIENT_CIN")
	  REFERENCES "SYSTEM"."CLIENTS" ("CLIENT_CIN") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."PRODUCT" ADD CONSTRAINT "PRODUCT_FK1" FOREIGN KEY ("PACKAGE_NUM")
	  REFERENCES "SYSTEM"."DELIVERIES" ("PACKAGE_NUM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TRUCK
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."TRUCK" ADD CONSTRAINT "TRUCK_FK1" FOREIGN KEY ("CIN")
	  REFERENCES "SYSTEM"."AGENTS" ("CIN") ENABLE;
