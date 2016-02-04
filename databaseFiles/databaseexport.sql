--------------------------------------------------------
--  File created - Thursday-February-04-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table EVENT
--------------------------------------------------------

  CREATE TABLE "JWOLSKI"."EVENT" 
   (	"EVENT_ID" NUMBER(8,0), 
	"EVENT_NAME" VARCHAR2(75 BYTE), 
	"EVENT_START" TIMESTAMP (6), 
	"EVENT_END" TIMESTAMP (6), 
	"EVENT_LOCATION" VARCHAR2(50 BYTE), 
	"EVENT_MAXPLAYER" NUMBER(4,0), 
	"EVENT_HOST" VARCHAR2(25 BYTE), 
	"EVENT_CATEGORY" VARCHAR2(25 BYTE), 
	"EVENT_PHOTO" BLOB, 
	"EVENT_DESC" CLOB
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("EVENT_PHOTO") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("EVENT_DESC") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table GAME
--------------------------------------------------------

  CREATE TABLE "JWOLSKI"."GAME" 
   (	"GAME_ID" NUMBER(8,0), 
	"GAME_NAME" VARCHAR2(50 BYTE), 
	"GAME_CATEGORY" VARCHAR2(15 BYTE), 
	"GAME_MAKER" VARCHAR2(50 BYTE), 
	"GAME_COUNT" NUMBER(3,0), 
	"GAME_MAXPLAYER" NUMBER(3,0), 
	"GAME_DESC" CLOB, 
	"GAME_PLAYCOUNT" NUMBER(4,0), 
	"GAME_PHOTO" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("GAME_DESC") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table PLAYER
--------------------------------------------------------

  CREATE TABLE "JWOLSKI"."PLAYER" 
   (	"PLAYER_ID" NUMBER(8,0), 
	"PLAYER_HANDLE" VARCHAR2(20 BYTE), 
	"PLAYER_FNAME" VARCHAR2(15 BYTE), 
	"PLAYER_LNAME" VARCHAR2(25 BYTE), 
	"PLAYER_EMAIL" VARCHAR2(30 BYTE), 
	"PLAYER_ACTIVE" CHAR(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into JWOLSKI.EVENT
SET DEFINE OFF;
Insert into JWOLSKI.EVENT (EVENT_ID,EVENT_NAME,EVENT_START,EVENT_END,EVENT_LOCATION,EVENT_MAXPLAYER,EVENT_HOST,EVENT_CATEGORY) values (10000001,'Black History Month Movie �Hip Hop: Beyond Beats & Rhymes�',to_timestamp('02-FEB-16 12.30.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('02-FEB-16 02.30.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),'The Playground, Movie Lounge',50,'TCC','TV-MOVIE');
Insert into JWOLSKI.EVENT (EVENT_ID,EVENT_NAME,EVENT_START,EVENT_END,EVENT_LOCATION,EVENT_MAXPLAYER,EVENT_HOST,EVENT_CATEGORY) values (10000002,'Black History Month Movie �Hip Hop: Beyond Beats & Rhymes�',to_timestamp('02-FEB-16 05.30.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('02-FEB-16 07.30.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),'The Playground, Movie Lounge',50,'TCC','TV-MOVIE');
Insert into JWOLSKI.EVENT (EVENT_ID,EVENT_NAME,EVENT_START,EVENT_END,EVENT_LOCATION,EVENT_MAXPLAYER,EVENT_HOST,EVENT_CATEGORY) values (10000013,'Wing Wednesday',to_timestamp('03-FEB-16 11.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('03-FEB-16 02.00.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),'Student Center, Caf�',50,'TCC','OTHER');
Insert into JWOLSKI.EVENT (EVENT_ID,EVENT_NAME,EVENT_START,EVENT_END,EVENT_LOCATION,EVENT_MAXPLAYER,EVENT_HOST,EVENT_CATEGORY) values (10000028,'Student Government Meeting',to_timestamp('04-FEB-16 12.30.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('04-FEB-16 01.15.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),'Student Center, Room K-320  ',50,'CLUB','Education');
Insert into JWOLSKI.EVENT (EVENT_ID,EVENT_NAME,EVENT_START,EVENT_END,EVENT_LOCATION,EVENT_MAXPLAYER,EVENT_HOST,EVENT_CATEGORY) values (10000029,'Weekly Gaming Club Tournament',to_timestamp('04-FEB-16 04.30.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('04-FEB-16 06.30.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),'The Playground, Game Room',50,'CLUB','GAME');
Insert into JWOLSKI.EVENT (EVENT_ID,EVENT_NAME,EVENT_START,EVENT_END,EVENT_LOCATION,EVENT_MAXPLAYER,EVENT_HOST,EVENT_CATEGORY) values (10000037,'Law & Order ',to_timestamp('05-FEB-16 09.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('05-FEB-16 10.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'The Playground, Movie Lounge',50,'TCC','TV-MOVIE');
Insert into JWOLSKI.EVENT (EVENT_ID,EVENT_NAME,EVENT_START,EVENT_END,EVENT_LOCATION,EVENT_MAXPLAYER,EVENT_HOST,EVENT_CATEGORY) values (10000038,'MACGYVER',to_timestamp('05-FEB-16 10.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('05-FEB-16 11.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'The Playground, Movie Lounge',50,'TCC','TV-MOVIE');
Insert into JWOLSKI.EVENT (EVENT_ID,EVENT_NAME,EVENT_START,EVENT_END,EVENT_LOCATION,EVENT_MAXPLAYER,EVENT_HOST,EVENT_CATEGORY) values (10000039,'WHAMMY!',to_timestamp('05-FEB-16 11.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('05-FEB-16 12.00.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),'The Playground, Movie Lounge',50,'TCC','TV-MOVIE');
Insert into JWOLSKI.EVENT (EVENT_ID,EVENT_NAME,EVENT_START,EVENT_END,EVENT_LOCATION,EVENT_MAXPLAYER,EVENT_HOST,EVENT_CATEGORY) values (10000040,'FAMILY FEUD',to_timestamp('05-FEB-16 12.00.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('05-FEB-16 01.00.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),'The Playground, Movie Lounge',50,'TCC','TV-MOVIE');
Insert into JWOLSKI.EVENT (EVENT_ID,EVENT_NAME,EVENT_START,EVENT_END,EVENT_LOCATION,EVENT_MAXPLAYER,EVENT_HOST,EVENT_CATEGORY) values (10000041,'LAW & ORDER: SVU',to_timestamp('05-FEB-16 01.00.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('05-FEB-16 02.00.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),'The Playground, Movie Lounge',50,'TCC','TV-MOVIE');
Insert into JWOLSKI.EVENT (EVENT_ID,EVENT_NAME,EVENT_START,EVENT_END,EVENT_LOCATION,EVENT_MAXPLAYER,EVENT_HOST,EVENT_CATEGORY) values (10000042,'FAMILY GUY',to_timestamp('05-FEB-16 02.00.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('05-FEB-16 03.00.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),'The Playground, Movie Lounge',50,'TCC','TV-MOVIE');
Insert into JWOLSKI.EVENT (EVENT_ID,EVENT_NAME,EVENT_START,EVENT_END,EVENT_LOCATION,EVENT_MAXPLAYER,EVENT_HOST,EVENT_CATEGORY) values (10000043,'EVERYBODY HATES CHRIS',to_timestamp('05-FEB-16 03.00.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('05-FEB-16 04.00.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),'The Playground, Movie Lounge',50,'TCC','TV-MOVIE');
Insert into JWOLSKI.EVENT (EVENT_ID,EVENT_NAME,EVENT_START,EVENT_END,EVENT_LOCATION,EVENT_MAXPLAYER,EVENT_HOST,EVENT_CATEGORY) values (10000044,'FRIENDS',to_timestamp('05-FEB-16 04.00.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('05-FEB-16 05.00.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),'The Playground, Movie Lounge',50,'TCC','TV-MOVIE');
Insert into JWOLSKI.EVENT (EVENT_ID,EVENT_NAME,EVENT_START,EVENT_END,EVENT_LOCATION,EVENT_MAXPLAYER,EVENT_HOST,EVENT_CATEGORY) values (10000010,'Black History Month Event, Black Women�s History Info Table ',to_timestamp('09-FEB-16 12.30.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('09-FEB-16 01.30.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),'Student Center, 2nd Floor Breezeway',100,'TCC','Education');
Insert into JWOLSKI.EVENT (EVENT_ID,EVENT_NAME,EVENT_START,EVENT_END,EVENT_LOCATION,EVENT_MAXPLAYER,EVENT_HOST,EVENT_CATEGORY) values (10000012,'Leadership Series I',to_timestamp('09-FEB-16 12.30.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('09-FEB-16 01.30.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),'Student Center, Room K-304 ',50,'TCC','Education');
Insert into JWOLSKI.EVENT (EVENT_ID,EVENT_NAME,EVENT_START,EVENT_END,EVENT_LOCATION,EVENT_MAXPLAYER,EVENT_HOST,EVENT_CATEGORY) values (10000014,'Wing Wednesday',to_timestamp('10-FEB-16 11.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('10-FEB-16 01.00.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),'Student Center, Caf�',1,'TCC','OTHER');
Insert into JWOLSKI.EVENT (EVENT_ID,EVENT_NAME,EVENT_START,EVENT_END,EVENT_LOCATION,EVENT_MAXPLAYER,EVENT_HOST,EVENT_CATEGORY) values (10000030,'Weekly Gaming Club Tournament',to_timestamp('11-FEB-16 04.30.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('11-FEB-16 06.30.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),'The Playground, Game Room',1,'CLUB','GAME');
Insert into JWOLSKI.EVENT (EVENT_ID,EVENT_NAME,EVENT_START,EVENT_END,EVENT_LOCATION,EVENT_MAXPLAYER,EVENT_HOST,EVENT_CATEGORY) values (10000009,'Belated Valentine''''s Day',to_timestamp('15-FEB-16 12.00.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('15-FEB-16 01.30.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),'Student Center, Caf�',100,'TCC','Education');
Insert into JWOLSKI.EVENT (EVENT_ID,EVENT_NAME,EVENT_START,EVENT_END,EVENT_LOCATION,EVENT_MAXPLAYER,EVENT_HOST,EVENT_CATEGORY) values (10000007,'Red Cross Blood Drive',to_timestamp('16-FEB-16 10.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('16-FEB-16 04.00.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),'Student Center, 2nd Floor  ',500,'TCC','Education');
Insert into JWOLSKI.EVENT (EVENT_ID,EVENT_NAME,EVENT_START,EVENT_END,EVENT_LOCATION,EVENT_MAXPLAYER,EVENT_HOST,EVENT_CATEGORY) values (10000015,'Wing Wednesday',to_timestamp('17-FEB-16 11.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('17-FEB-16 01.00.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),'Student Center, Caf�',1,'TCC','OTHER');
Insert into JWOLSKI.EVENT (EVENT_ID,EVENT_NAME,EVENT_START,EVENT_END,EVENT_LOCATION,EVENT_MAXPLAYER,EVENT_HOST,EVENT_CATEGORY) values (10000011,'Black History Month Event, Black Women�s History Info Table ',to_timestamp('18-FEB-16 12.30.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('18-FEB-16 01.30.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),'Student Center, 2nd Floor Breezeway',100,'TCC','Education');
Insert into JWOLSKI.EVENT (EVENT_ID,EVENT_NAME,EVENT_START,EVENT_END,EVENT_LOCATION,EVENT_MAXPLAYER,EVENT_HOST,EVENT_CATEGORY) values (10000031,'Weekly Gaming Club Tournament',to_timestamp('18-FEB-16 04.30.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('18-FEB-16 06.30.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),'The Playground, Game Room',1,'CLUB','GAME');
Insert into JWOLSKI.EVENT (EVENT_ID,EVENT_NAME,EVENT_START,EVENT_END,EVENT_LOCATION,EVENT_MAXPLAYER,EVENT_HOST,EVENT_CATEGORY) values (10000016,'Wing Wednesday',to_timestamp('24-FEB-16 11.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('24-FEB-16 01.00.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),'Student Center, Caf�',1,'TCC','OTHER');
Insert into JWOLSKI.EVENT (EVENT_ID,EVENT_NAME,EVENT_START,EVENT_END,EVENT_LOCATION,EVENT_MAXPLAYER,EVENT_HOST,EVENT_CATEGORY) values (10000027,'Leadership Series II',to_timestamp('24-FEB-16 12.30.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('24-FEB-16 01.30.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),'Student Center, Room K-304 ',1,'TCC','Education');
Insert into JWOLSKI.EVENT (EVENT_ID,EVENT_NAME,EVENT_START,EVENT_END,EVENT_LOCATION,EVENT_MAXPLAYER,EVENT_HOST,EVENT_CATEGORY) values (10000019,'Volunteer Fair',to_timestamp('25-FEB-16 11.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('25-FEB-16 01.00.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),'Student Center, 2nd Floor Breezeway',1,'TCC','Education');
Insert into JWOLSKI.EVENT (EVENT_ID,EVENT_NAME,EVENT_START,EVENT_END,EVENT_LOCATION,EVENT_MAXPLAYER,EVENT_HOST,EVENT_CATEGORY) values (10000032,'Weekly Gaming Club Tournament',to_timestamp('25-FEB-16 04.30.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('25-FEB-16 06.30.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),'The Playground, Game Room',1,'CLUB','GAME');
Insert into JWOLSKI.EVENT (EVENT_ID,EVENT_NAME,EVENT_START,EVENT_END,EVENT_LOCATION,EVENT_MAXPLAYER,EVENT_HOST,EVENT_CATEGORY) values (10000005,'Alcohol Awareness Day',to_timestamp('29-FEB-16 12.30.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('29-FEB-16 05.30.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),'Student Center, 2nd Floor Breezeway',1,'TCC','Education');
Insert into JWOLSKI.EVENT (EVENT_ID,EVENT_NAME,EVENT_START,EVENT_END,EVENT_LOCATION,EVENT_MAXPLAYER,EVENT_HOST,EVENT_CATEGORY) values (10000017,'Wing Wednesday',to_timestamp('02-MAR-16 11.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('02-MAR-16 01.00.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),'Student Center, Caf�',1,'TCC','OTHER');
Insert into JWOLSKI.EVENT (EVENT_ID,EVENT_NAME,EVENT_START,EVENT_END,EVENT_LOCATION,EVENT_MAXPLAYER,EVENT_HOST,EVENT_CATEGORY) values (10000033,'Weekly Gaming Club Tournament',to_timestamp('03-MAR-16 04.30.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('03-MAR-16 06.30.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),'The Playground, Game Room',1,'CLUB','GAME');
Insert into JWOLSKI.EVENT (EVENT_ID,EVENT_NAME,EVENT_START,EVENT_END,EVENT_LOCATION,EVENT_MAXPLAYER,EVENT_HOST,EVENT_CATEGORY) values (10000036,'SPORTSCENTER',to_timestamp('05-FEB-16 08.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('05-FEB-16 09.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'The Playground, Movie Lounge',1,'TCC','TV-MOVIE');
Insert into JWOLSKI.EVENT (EVENT_ID,EVENT_NAME,EVENT_START,EVENT_END,EVENT_LOCATION,EVENT_MAXPLAYER,EVENT_HOST,EVENT_CATEGORY) values (10000045,'Gaming Club: Magic Tournement',to_timestamp('09-FEB-16 04.00.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('09-FEB-16 08.00.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),'The Playground, Game Room',10,'CLUB','GAME');
REM INSERTING into JWOLSKI.GAME
SET DEFINE OFF;
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000002,'NBA 2K15','XBOX-ONE',null,1,4,472,'XBOX-ONE-NBA2K15.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000003,'FIFA15','XBOX-ONE',null,1,4,127,'XBOX-ONE-FIFA15.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000004,'FORZA5','XBOX-ONE',null,1,4,308,'XBOX-ONE-FORZA5.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000005,'CARDS AGAINST HUMANITY','BOARD GAME',null,1,50,314,'BOARDGAME-CARDSAGAINSTHUMANITY.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000006,'MONOPOLY','BOARD GAME',null,1,4,143,'BOARDGAME-MONOPOLY.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000001,'MADDEN 15','XBOX-ONE',null,1,4,378,'XBOX-ONEMADDEN15.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000007,'CHESS','BOARD GAME',null,1,2,482,'BOARDGAME-CHESS.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000008,'PICTIONARY','BOARD GAME',null,1,50,218,'BOARDGAME-PICTIONARY.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000009,'JENGA','BOARD GAME',null,1,50,213,'BOARDGAME-JENGA.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000010,'APPLES TO APPLES','BOARD GAME',null,1,10,68,'BOARDGAME-APPLESTOAPPLES.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000011,'SCRABBLE','BOARD GAME',null,1,4,463,'BOARDGAME-SCRABBLE.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000012,'SCATTERGORIES','BOARD GAME',null,1,50,14,'BOARDGAME-SCATTERGORIES.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000013,'TABOO','BOARD GAME',null,1,50,33,'BOARDGAME-TABOO.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000014,'WIN, LOSE, OR DRAW','BOARD GAME',null,1,8,109,'BOARDGAME-WINLOSEORDRAW.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000015,'CHECKERS','BOARD GAME',null,1,2,258,'BOARDGAME-CHECKERS.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000016,'UNO','BOARD GAME',null,1,4,352,'BOARDGAME-UNO.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000017,'LIFE','BOARD GAME',null,1,4,484,'BOARDGAME-LIFE.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000018,'GRAN TURISMO 5 - XL EDITION','PS3',null,1,4,259,'PS3GRANTURISMO5-XLEDITION.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000019,'NEED FOR SPEED - THE RUN','PS3',null,1,4,245,'PS3NEEDFORSPEED-THERUN.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000020,'LITTLE BIG PLANET','PS3',null,1,4,35,'PS3LITTLEBIGPLANET.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000021,'UNCHARTED - DRAKES FORTUNE','PS3',null,1,4,221,'PS3UNCHARTED-DRAKESFORTUNE.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000022,'UNCHARTED 2 - AMONG THEIVES','PS3',null,1,4,227,'PS3UNCHARTED2-AMONGTHEIVES.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000023,'INFAMOUS 2 ','PS3',null,1,4,425,'PS3INFAMOUS2.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000024,'NEED FOR SPEED - RIVALS','PS4',null,1,4,188,'PS4NEEDFORSPEED-RIVALS.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000025,'UFC','PS4',null,1,4,26,'PS4-UFC.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000026,'INJUSTICE GODS AMONG US - ULTIMATE','PS4',null,1,4,323,'PS4-INJUSTICEGODSAMONGUS-ULTIMATE.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000027,'NBA 2K15','PS4',null,1,4,92,'PS4-NBA2K15.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000028,'FIFA15','PS4',null,1,4,473,'PS4-FIFA15.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000029,'MADDEN 15','PS4',null,1,4,300,'PS4-MADDEN15.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000030,'POOL','TABLE SPORTS',null,6,4,276,'TABLESPORTS-POOL.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000031,'AIR HOCKEY','TABLE SPORTS',null,1,4,473,'TABLESPORTS-AIRHOCKEY.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000032,'SUPER SMASH BROS.','WII-U',null,1,4,63,'WII-U-SUPERSMASHBROS..PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000033,'THE LEGEND OF ZELDA - THE WINDWAKER','WII-U',null,1,4,328,'WII-U-THELEGENDOFZELDA-THEWINDWAKER.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000034,'DONKEY KONG COUNTRY - TROPICAL FREEZE','WII-U',null,1,4,357,'WII-U-DONKEYKONGCOUNTRY-TROPICALFREEZE.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000035,'MARIOKART 8','WII-U',null,1,4,361,'WII-U-MARIOKART8.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000036,'SUPER MARIO WORLD - 3D WORLD','WII-U',null,1,4,130,'WII-U-SUPERMARIOWORLD-3DWORLD.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000037,'SUPER MARIO BROS U','WII-U',null,1,4,164,'WII-U-SUPERMARIOBROSU.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000038,'JUST DANCE 2015','WII-U',null,1,4,447,'WII-U-JUSTDANCE2015.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000039,'SONIC ULTIMATE GENESIS COLLECTION','XBOX-360',null,1,4,464,'XBOX-360-SONICULTIMATEGENESISCOLLECTION.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000040,'BATMAN - ARKHAM CITY','XBOX-360',null,1,4,107,'XBOX-360-BATMAN-ARKHAMCITY.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000041,'SOUL CALIBER IV','XBOX-360',null,1,4,185,'XBOX-360-SOULCALIBERIV.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000042,'ULTRA STREET FIGHTER IV','XBOX-360',null,1,4,204,'XBOX-360-ULTRASTREETFIGHTERIV.PNG');
Insert into JWOLSKI.GAME (GAME_ID,GAME_NAME,GAME_CATEGORY,GAME_MAKER,GAME_COUNT,GAME_MAXPLAYER,GAME_PLAYCOUNT,GAME_PHOTO) values (10000043,'NEED FOR SPEED - HOT PURSUIT','XBOX-360',null,1,4,41,'XBOX-360-NEEDFORSPEED-HOTPURSUIT.PNG');
REM INSERTING into JWOLSKI.PLAYER
SET DEFINE OFF;
Insert into JWOLSKI.PLAYER (PLAYER_ID,PLAYER_HANDLE,PLAYER_FNAME,PLAYER_LNAME,PLAYER_EMAIL,PLAYER_ACTIVE) values (10000003,'NETWORKGUY','TIMOTHY','DEBUSK','TAD2116@EMAIL.VCCS.EDU','N');
Insert into JWOLSKI.PLAYER (PLAYER_ID,PLAYER_HANDLE,PLAYER_FNAME,PLAYER_LNAME,PLAYER_EMAIL,PLAYER_ACTIVE) values (10000007,'OLD_MAN','MICHAEL ','QUICKER','MHQ123@EMAIL.VCCS.EDU','N');
Insert into JWOLSKI.PLAYER (PLAYER_ID,PLAYER_HANDLE,PLAYER_FNAME,PLAYER_LNAME,PLAYER_EMAIL,PLAYER_ACTIVE) values (10000010,'MEXICAN','PATRICIA','FOURZAN','PUF4403@EMAIL.VCCS.EDU','N');
Insert into JWOLSKI.PLAYER (PLAYER_ID,PLAYER_HANDLE,PLAYER_FNAME,PLAYER_LNAME,PLAYER_EMAIL,PLAYER_ACTIVE) values (10000011,'DA_MONKEY','CHRISTINA','DEHAVEN','CYD2617@EMAIL.VCCS.EDU','N');
Insert into JWOLSKI.PLAYER (PLAYER_ID,PLAYER_HANDLE,PLAYER_FNAME,PLAYER_LNAME,PLAYER_EMAIL,PLAYER_ACTIVE) values (10000012,'GIGI','SCOTT','DEHAVEN','SED370@EMAIL.VCCS.EDU','N');
Insert into JWOLSKI.PLAYER (PLAYER_ID,PLAYER_HANDLE,PLAYER_FNAME,PLAYER_LNAME,PLAYER_EMAIL,PLAYER_ACTIVE) values (10000014,'SATELLITE','DAVE','MATTHEWS','DQM2503@EMAIL.VCCS.EDU','N');
Insert into JWOLSKI.PLAYER (PLAYER_ID,PLAYER_HANDLE,PLAYER_FNAME,PLAYER_LNAME,PLAYER_EMAIL,PLAYER_ACTIVE) values (10000015,'STAIRWAY_TO_HVN','LED','ZEPPLIN','LPZ9672@EMAIL.VCCS.EDU','N');
Insert into JWOLSKI.PLAYER (PLAYER_ID,PLAYER_HANDLE,PLAYER_FNAME,PLAYER_LNAME,PLAYER_EMAIL,PLAYER_ACTIVE) values (10000017,'FUNNYGIRL','PAULA','POUNDSTONE','PNP5180@EMAIL.VCCS.EDU','N');
Insert into JWOLSKI.PLAYER (PLAYER_ID,PLAYER_HANDLE,PLAYER_FNAME,PLAYER_LNAME,PLAYER_EMAIL,PLAYER_ACTIVE) values (10000019,'MOTHER','ROBIN','STONE','RNS2080@EMAIL.VCCS.EDU','N');
Insert into JWOLSKI.PLAYER (PLAYER_ID,PLAYER_HANDLE,PLAYER_FNAME,PLAYER_LNAME,PLAYER_EMAIL,PLAYER_ACTIVE) values (10000020,'JOYFUL','MICHAEL ','JOY','MBJ9504@EMAIL.VCCS.EDU','N');
Insert into JWOLSKI.PLAYER (PLAYER_ID,PLAYER_HANDLE,PLAYER_FNAME,PLAYER_LNAME,PLAYER_EMAIL,PLAYER_ACTIVE) values (10000000,'NEWYORKER','KATHERINE','HENDEL','KMH2326@EMAIL.VCCS.EDU','Y');
Insert into JWOLSKI.PLAYER (PLAYER_ID,PLAYER_HANDLE,PLAYER_FNAME,PLAYER_LNAME,PLAYER_EMAIL,PLAYER_ACTIVE) values (10000001,'WHOVIAN','EMILY','MCNEILL','EBC276@EMAIL.VCCS.EDU','Y');
Insert into JWOLSKI.PLAYER (PLAYER_ID,PLAYER_HANDLE,PLAYER_FNAME,PLAYER_LNAME,PLAYER_EMAIL,PLAYER_ACTIVE) values (10000002,'MRSHOOTERMAN','CHARLES','JOHNSON','CJ7113@EMAIL.VCCS.EDU','Y');
Insert into JWOLSKI.PLAYER (PLAYER_ID,PLAYER_HANDLE,PLAYER_FNAME,PLAYER_LNAME,PLAYER_EMAIL,PLAYER_ACTIVE) values (10000004,'ILLUSTRATOR','ERIC','MARIANO','eam25846@email.vccs.edu','Y');
Insert into JWOLSKI.PLAYER (PLAYER_ID,PLAYER_HANDLE,PLAYER_FNAME,PLAYER_LNAME,PLAYER_EMAIL,PLAYER_ACTIVE) values (10000005,'BIGSISTER','SARA','WEISE','SRW345@EMAIL.VCCS.EDU','Y');
Insert into JWOLSKI.PLAYER (PLAYER_ID,PLAYER_HANDLE,PLAYER_FNAME,PLAYER_LNAME,PLAYER_EMAIL,PLAYER_ACTIVE) values (10000006,'THE_MAJOR','JEFFREY','HENDEL','JEH234@EMAIL.VCCS.EDU','Y');
Insert into JWOLSKI.PLAYER (PLAYER_ID,PLAYER_HANDLE,PLAYER_FNAME,PLAYER_LNAME,PLAYER_EMAIL,PLAYER_ACTIVE) values (10000008,'RED_WINE','BARBARA','WERNER','BXW3501@EMAIL.VCCS.EDU','Y');
Insert into JWOLSKI.PLAYER (PLAYER_ID,PLAYER_HANDLE,PLAYER_FNAME,PLAYER_LNAME,PLAYER_EMAIL,PLAYER_ACTIVE) values (10000009,'SEW_GOOD','COURTNEY','BLOCKLINGER','CSB4047@EMAIL.VCCS.EDU','Y');
Insert into JWOLSKI.PLAYER (PLAYER_ID,PLAYER_HANDLE,PLAYER_FNAME,PLAYER_LNAME,PLAYER_EMAIL,PLAYER_ACTIVE) values (10000013,'CAROLINA','BRANDI','CARLILE','BUC8308@EMAIL.VCCS.EDU','Y');
Insert into JWOLSKI.PLAYER (PLAYER_ID,PLAYER_HANDLE,PLAYER_FNAME,PLAYER_LNAME,PLAYER_EMAIL,PLAYER_ACTIVE) values (10000016,'GAMBLER','KENNY','ROGERS','KJR9952@EMAIL.VCCS.EDU','Y');
Insert into JWOLSKI.PLAYER (PLAYER_ID,PLAYER_HANDLE,PLAYER_FNAME,PLAYER_LNAME,PLAYER_EMAIL,PLAYER_ACTIVE) values (10000018,'GERMANGIRL','TEAGAN','HENDEL','TZH8331@EMAIL.VCCS.EDU','Y');
--------------------------------------------------------
--  DDL for Index EVENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "JWOLSKI"."EVENT_PK" ON "JWOLSKI"."EVENT" ("EVENT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table EVENT
--------------------------------------------------------

  ALTER TABLE "JWOLSKI"."EVENT" ADD CONSTRAINT "EVENT_PK" PRIMARY KEY ("EVENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;