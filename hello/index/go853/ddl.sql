IntervalRoom 房 IntervalHall 廳 IntervalToilet 廁 IntervalTerrace 露臺 IntervalStoreRooms 雜物房
/*
 房產信息主表
 字段名參考圖 《房產信息主表》
 */
CREATE TABLE goeft_all_property_infos (
  picAmount int  NOT NULL COMMENT '備用',
  ID int  NOT NULL COMMENT 'ID號',
  UID int  NOT NULL COMMENT '用戶ID',
  isType int  NOT NULL COMMENT '類型',
  TID int  NOT NULL COMMENT '備用',
  City varchar(100)  NULL COMMENT '區：澳門、路氹、路環',
  Area varchar(100)  NULL COMMENT 'City的細分，如：澳門再分：澳門半島、南灣、皇朝',
  Street varchar(200)  NULL COMMENT '街道',
  PropertyName varchar(200)  NULL COMMENT '小區、花園名稱，例如：海洋花園',
  Building varchar(200)  NULL COMMENT '備用',
  Floor varchar(50)  NULL COMMENT '樓層',
  Unit varchar(50)  NULL COMMENT '單位，所在單元、棟',
  ParkingSpaces varchar(50)  NULL COMMENT '車位編號',
  SaleType int  NOT NULL COMMENT '租/售',
  RentalPrice decimal(19 COMMENT '',2)  NOT NULL COMMENT '租價',
  SellingPrice decimal(19 COMMENT '',2)  NOT NULL COMMENT '售價',
  BuildingArea double  NOT NULL COMMENT '建築面積',
  SalableArea double  NOT NULL COMMENT '實用面積',
  IntervalRoom int  NOT NULL COMMENT '住宅內，房數量',
  IntervalHall int  NOT NULL COMMENT '住宅內，廳數量',
  IntervalToilet int  NOT NULL COMMENT '住宅內，廁數量',
  IntervalTerrace int  NOT NULL COMMENT '住宅內，露臺數量',
  IntervalStoreRooms int  NOT NULL COMMENT '住宅內，雜物房數量',
  isParkingSpaces int  NOT NULL COMMENT '是否車位，0：否，1：是',
  isLift int  NOT NULL COMMENT '是否有電梯，0：否，1：是',
  Landscape varchar(50)  NULL COMMENT '景觀',
  LandscapeDescription varchar(50)  NULL COMMENT '景觀描述',
  Direction int  NOT NULL COMMENT '座向',
  Furniture varchar(50)  NULL COMMENT '傢具',
  isNew int  NOT NULL COMMENT '新舊',
  Decoration int  NOT NULL COMMENT '裝修',
  DecorationDescription varchar(50)  NULL COMMENT '裝修描述',
  Detail text  NULL COMMENT '備註、詳細描述',
  Developers varchar(100)  NULL COMMENT '開發商',
  PropertyCorp varchar(100)  NULL COMMENT '銷售商、地產公司',
  LinkMan varchar(50)  NULL COMMENT '聯繫人',
  Tel varchar(50)  NULL COMMENT '聯繫電話',
  Mobile varchar(50)  NULL COMMENT '聯繫手機號',
  Email varchar(100)  NULL COMMENT '聯繫郵箱',
  isStatus int  NOT NULL COMMENT '是否有效，，1：有效',
  PubDate datetime  NOT NULL COMMENT '猜（推出時間）',
  Hits int  NOT NULL COMMENT '頁面點擊數',
  ExpireDate datetime  NOT NULL COMMENT '有限期',
  EditDate datetime  NOT NULL COMMENT '更新時間',
  ContactHits int  NOT NULL COMMENT '',
  Map_X varchar(50)  NULL COMMENT '地圖座標 X',
  Map_Y varchar(50)  NULL COMMENT '地圖座標 Y',
  UnitPrice decimal(19 COMMENT '',2)  NOT NULL COMMENT '都是.0000',
  Sequence int  NOT NULL COMMENT '備用',
  AdditionalFeaturesType varchar(200)  NULL COMMENT '',
  Source int  NOT NULL COMMENT '樓盤開源，如：直接',
  RentReservePrice decimal(19 COMMENT '',2)  NOT NULL COMMENT '租價保留',
  SellReservePrice decimal(19 COMMENT '',2)  NOT NULL COMMENT '售價保留',
  BrokerageType int  NOT NULL COMMENT '猜（外漚類型，數據只有1、2）',
  BrokeragePercent int  NOT NULL COMMENT '',
  Cooperation int  NOT NULL COMMENT '',
  Remark varchar(500)  NULL COMMENT '',
  LoftDescribe int  NOT NULL COMMENT '',
  Lease int  NOT NULL COMMENT '帶租約',
  HandPick int  NOT NULL COMMENT '',
  MHandPick int  NOT NULL COMMENT '',
  GoodPick int  NOT NULL COMMENT '',
  Selected bit  NULL COMMENT '',
  Age decimal(18 COMMENT '',2)  NULL COMMENT '樓齡',
  Other int  NULL COMMENT '',
  RoomType int  NULL COMMENT '',
  Coverkey int  NULL COMMENT '',
  SaleDate datetime  NULL COMMENT '',
  IsTop int  NULL COMMENT '',
  ui_isStatus int  NOT NULL COMMENT '',
  Cover varchar(50) NOT NULL COMMENT '',
  ui_Other int  NULL COMMENT '',
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
