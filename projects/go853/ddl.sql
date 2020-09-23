
CREATE TABLE goeft_estate_infos (
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

