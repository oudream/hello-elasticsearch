
/*
 房產信息主表
 字段名參考圖 《房產信息主表》
 */
CREATE TABLE goeft_all_property_infos (
  picAmount int  NOT NULL,
  ID int  NOT NULL,
  UID int  NOT NULL,
  isType int  NOT NULL,
  TID int  NOT NULL,
  City varchar(100)  NULL,
  Area varchar(100)  NULL,
  Street varchar(200)  NULL,
  PropertyName varchar(200)  NULL,
  Building varchar(200)  NULL,
  Floor varchar(50)  NULL,
  Unit varchar(50)  NULL,
  ParkingSpaces varchar(50)  NULL,
  SaleType int  NOT NULL,
  RentalPrice decimal(19,2)  NOT NULL,
  SellingPrice decimal(19,2)  NOT NULL,
  BuildingArea double  NOT NULL,
  SalableArea double  NOT NULL,
  IntervalRoom int  NOT NULL,
  IntervalHall int  NOT NULL,
  IntervalToilet int  NOT NULL,
  IntervalTerrace int  NOT NULL,
  IntervalStoreRooms int  NOT NULL,
  isParkingSpaces int  NOT NULL,
  isLift int  NOT NULL,
  Landscape varchar(50)  NULL,
  LandscapeDescription varchar(50)  NULL,
  Direction int  NOT NULL,
  Furniture varchar(50)  NULL,
  isNew int  NOT NULL,
  Decoration int  NOT NULL,
  DecorationDescription varchar(50)  NULL,
  Detail text  NULL,
  Developers varchar(100)  NULL,
  PropertyCorp varchar(100)  NULL,
  LinkMan varchar(50)  NULL,
  Tel varchar(50)  NULL,
  Mobile varchar(50)  NULL,
  Email varchar(100)  NULL,
  isStatus int  NOT NULL,
  PubDate datetime  NOT NULL,
  Hits int  NOT NULL,
  ExpireDate datetime  NOT NULL,
  EditDate datetime  NOT NULL,
  ContactHits int  NOT NULL,
  Map_X varchar(50)  NULL,
  Map_Y varchar(50)  NULL,
  UnitPrice decimal(19,2)  NOT NULL,
  Sequence int  NOT NULL,
  AdditionalFeaturesType varchar(200)  NULL,
  Source int  NOT NULL,
  RentReservePrice decimal(19,2)  NOT NULL,
  SellReservePrice decimal(19,2)  NOT NULL,
  BrokerageType int  NOT NULL,
  BrokeragePercent int  NOT NULL,
  Cooperation int  NOT NULL,
  Remark varchar(500)  NULL,
  LoftDescribe int  NOT NULL,
  Lease int  NOT NULL,
  HandPick int  NOT NULL,
  MHandPick int  NOT NULL,
  GoodPick int  NOT NULL,
  Selected bit  NULL,
  Age decimal(18,2)  NULL,
  Other int  NULL,
  RoomType int  NULL,
  Coverkey int  NULL,
  SaleDate datetime  NULL,
  IsTop int  NULL,
  ui_isStatus int  NOT NULL,
  Cover varchar(50) NOT NULL,
  ui_Other int  NULL,
  PRIMARY KEY (ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


/*
 房產信息圖片列表
 */
CREATE TABLE goeft_property_photos (
  ID int  NOT NULL COMMENT 'ID',
  Title varchar(50) NOT NULL COMMENT '圖片文件名',
  PID int  NULL COMMENT '房產信息主表ID',
  UID int  NOT NULL COMMENT '房產商ID',
  RollShow int  NOT NULL,
  Sortimg int  NULL,
  MonthPic int  NOT NULL,
  IsDefault int  NULL,
  PRIMARY KEY (ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


/*
 房產商
 目前沒用上
 */
CREATE TABLE goeft_user_info (
  ID int  NOT NULL COMMENT '房產商ID',
  Account varchar(100) NOT NULL,
  Pwd varchar(50) NOT NULL,
  UserType int  NOT NULL,
  Email varchar(100) NULL,
  Mobile varchar(50) NULL,
  LastLogin datetime  NOT NULL,
  RegDate datetime  NOT NULL,
  Name varchar(50) NULL,
  Gender int  NULL,
  Birthday datetime  NULL,
  Address varchar(200) NULL,
  Degree int  NULL,
  Occupational int  NULL,
  Income int  NULL,
  LikesInfo varchar(50) NULL,
  FromWhere int  NOT NULL,
  CorpName varchar(50) NULL,
  AdditionalFeaturesType varchar(200) NULL,
  Tel varchar(50) NULL,
  Fax varchar(50) NULL,
  ValidDate datetime  NULL,
  VIP int  NOT NULL,
  UID int  NOT NULL,
  UserNum int  NOT NULL,
  PropertyNum int  NOT NULL,
  isStatus int  NOT NULL,
  AID int  NOT NULL,
  Licence varchar(16) NULL,
  Other int  NULL,
  PhoneVerify bit  NULL,
  ComeFrom varchar(50) NULL,
  Abbreviation varchar(100) NULL,
  TopNum int  NULL,
  WX varchar(100) NULL,
  ip varchar(50) NULL,
  fromurl varchar(200) NULL,
  WhatsAppID varchar(50) NULL,
  WhatsAppArea varchar(50) NULL,
  WX_Photo varchar(50) NULL COMMENT '微信圖的文件名',
  PRIMARY KEY (ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


/*
 房產商LOGO
 */
CREATE TABLE goeft_user_photos (
  ID int  NOT NULL COMMENT 'ID',
  UID int  NOT NULL COMMENT '房產商ID',
  Title varchar(50) NOT NULL COMMENT '地產商LOGO圖的文件名',
  PRIMARY KEY (ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


/*
 GO853數據同步服務所用
 */
CREATE TABLE goeft_sync_task (
  task_id int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  task_time_begin datetime NOT NULL COMMENT '最近同步時間區間BEGIN',
  task_time_end datetime NOT NULL COMMENT '最近同步時間區間END',
  task_property_count int DEFAULT NULL COMMENT '同步房產信息數量',
  task_state int NOT NULL COMMENT '同步結果狀態',
  PRIMARY KEY (task_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


/*
 同步的信息表
 */
CREATE TABLE goeft_sync_detail (
  sync_id int NOT NULL AUTO_INCREMENT,
  sync_task_id int DEFAULT NULL,
  sync_time datetime NOT NULL COMMENT '同步時間',
  sync_type varchar(50) NOT NULL COMMENT '同步類型 [Insert、Update]',
  sync_table varchar(50) DEFAULT NULL COMMENT '同步表名',
  sync_row_id int DEFAULT NULL COMMENT '同步的行ID',
  sync_content varchar(4096) DEFAULT NULL,
  PRIMARY KEY (sync_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
