/*****************************************************************
  File:        NorthwestLabIntex.sql
  Description: Used for creating the objects and loading data
               into the NORTHWEST_LAB schema for MSSQL
  Created:     11/29/2016 IS
  Modified:    11/29/2016 IS
  Version:     1.0
******************************************************************/
CREATE DATABASE NORTHWEST_LAB;
GO

USE NORTHWEST_LAB;
GO

--drop existing tables
DROP TABLE INVOICE;
DROP TABLE WORK_ORDER;
DROP TABLE CONTACT;
DROP TABLE ORDER_COMPOUND;
DROP TABLE RESULT;
DROP TABLE COMPOUND;
DROP TABLE EMPLOYEE_ROLE;
DROP TABLE WORK_ORDER_DETAIL;
DROP TABLE STATUS;
DROP TABLE EMPLOYEE;
DROP TABLE ACCOUNT;
DROP TABLE TEST;
DROP TABLE ASSAY;
DROP TABLE STATUS_LOG;
DROP TABLE MATERIAL; 
DROP TABLE TEST_MATERIAL;
DROP TABLE AUTHORIZATION_STATUS;
DROP TABLE EQUIPMENT;


--create tables
CREATE TABLE [INVOICE] (
  [InvoiceId] int,
  [WorkOrderId] int,
  [DateSent] DateTime,
  [DatePaid] Datetime,
  [SentBy] nvarchar(50),
  [PreparedBy] nvarchar(50),
  [SpecialDiscount] decimal,
  [QuotedPrice] money,
  [FinalPrice] money,
  [DueDate] Datetime,
  [EarlyPaymentDate] Datetime,
  [EarlyPaymentDiscount] decimal,
  [Created] DateTime,
  [CreatedBy] nvarchar(30),
  [ModifiedBy] nvarchar(30),
  [Modified] DateTime,
  PRIMARY KEY ([InvoiceId])
);

CREATE INDEX [FK] ON  [INVOICE] ([WorkOrderId]);

CREATE INDEX [ ] ON  [INVOICE] ([PreparedBy], [CreatedBy], [ModifiedBy], [Modified]);

CREATE TABLE [WORK_ORDER] (
  [WorkOrderId] int,
  [AccountId] int,
  [ContactId] int,
  [EmployeeId] int,
  [LT] int,
  [DateDue] datetime,
  [Created] DateTime,
  [CreatedBy] nvarchar(30),
  [ModifiedBy] nvarchar(30),
  [Modified] DateTime,
  PRIMARY KEY ([WorkOrderId])
);

CREATE INDEX [FK] ON  [WORK_ORDER] ([AccountId], [ContactId], [EmployeeId]);

CREATE INDEX [ ] ON  [WORK_ORDER] ([LT], [DateDue], [CreatedBy], [ModifiedBy], [Modified]);

CREATE TABLE [AUTHORIZATION_STATUS] (
  [AuthorizationStatusId] int,
  [Description] nvarchar(50),
  [Name] nvarchar(50),
  [Created] Datetime,
  [CreatedBy] nvarchar(30),
  [ModifiedBy] nvarchar(30),
  [Modified] DateTime,
  PRIMARY KEY ([AuthorizationStatusId])
);

CREATE INDEX [ ] ON  [AUTHORIZATION_STATUS] ([CreatedBy], [ModifiedBy], [Modified]);

CREATE TABLE [EMPLOYEE_ROLE] (
  [EmployeeRoleId] int,
  [Description] nvarchar(50),
  [Created] Datetime,
  [CreatedBy] nvarchar(30),
  [ModifiedBy] nvarchar(30),
  [Modified] DateTime,
  PRIMARY KEY ([EmployeeRoleId])
);

CREATE INDEX [ ] ON  [EMPLOYEE_ROLE] ([CreatedBy], [ModifiedBy], [Modified]);

CREATE TABLE [CONTACT] (
  [ContactId] int,
  [FName] nvarchar(30),
  [LName] nvarchar(30),
  [Street Address] nvarchar(50),
  [PostCode] nvarchar(20),
  [Phone] nvarchar(20),
  [AccountId] int,
  [Created] datetime,
  [CreatedBy] nvarchar(30),
  [ModifiedBy] nvarchar(30),
  [Modified] DateTime,
  [Email] nvarchar(30),
  PRIMARY KEY ([ContactId])
);

CREATE INDEX [ ] ON  [CONTACT] ([FName], [LName], [Street Address], [PostCode], [Phone], [Created], [CreatedBy], [ModifiedBy], [Modified], [Email]);

CREATE INDEX [FK] ON  [CONTACT] ([AccountId]);

CREATE TABLE [EMPLOYEE] (
  [EmployeeId] int,
  [FName] nvarchar(30),
  [LName] nvarchar(30),
  [Street Address] nvarchar(50),
  [PostCode] nvarchar(20),
  [Phone] nvarchar(20),
  [Created] datetime,
  [CreatedBy] nvarchar(30),
  [ModifiedBy] nvarchar(30),
  [Modified] DateTime,
  [Email] nvarchar(30),
  [RoleId] int,
  [OfficeLocation] nvarchar(30),
  PRIMARY KEY ([EmployeeId])
);

CREATE INDEX [ ] ON  [EMPLOYEE] ([FName], [LName], [Street Address], [PostCode], [Phone], [Created], [CreatedBy], [ModifiedBy], [Modified], [Email], [OfficeLocation]);

CREATE INDEX [FK] ON  [EMPLOYEE] ([RoleId]);

CREATE TABLE [RESULT] (
  [ResultId] int,
  [WorkOrderId] int,
  [FileName] nvarchar(50),
  [Created] Datetime,
  [CreatedBy] nvarchar(30),
  [ModifiedBy] nvarchar(30),
  [Modified] DateTime,
  PRIMARY KEY ([ResultId])
);

CREATE INDEX [FK] ON  [RESULT] ([WorkOrderId]);

CREATE INDEX [ ] ON  [RESULT] ([CreatedBy], [ModifiedBy], [Modified]);

CREATE TABLE [COMPOUND] (
  [CompoundId] int,
  [Name] nvarchar(30),
  [MolecularMakeUp] nvarchar(max),
  [Created] Datetime,
  [CreatedBy] nvarchar(30),
  [ModifiedBy] nvarchar(30),
  [Modified] DateTime,
  PRIMARY KEY ([CompoundId])
);

CREATE INDEX [ ] ON  [COMPOUND] ([CreatedBy], [ModifiedBy], [Modified]);

CREATE TABLE [STATUS] (
  [StatusId] int,
  [Description] nvarchar(50),
  [Name] nvarchar(50),
  [Created] Datetime,
  [CreatedBy] nvarchar(30),
  [ModifiedBy] nvarchar(30),
  [Modified] DateTime,
  PRIMARY KEY ([StatusId])
);

CREATE INDEX [ ] ON  [STATUS] ([CreatedBy], [ModifiedBy], [Modified]);

CREATE TABLE [STATUS_LOG] (
  [StatusLogId] int,
  [StatusId] int,
  [WorkOrderDetailId] int,
  [StatusStartTime] Datetime,
  [StatusEndTime] Datetime,
  [Created] Datetime,
  [CreatedBy] nvarchar(30),
  [ModifiedBy] nvarchar(30),
  [Modified] DateTime,
  PRIMARY KEY ([StatusLogId])
);

CREATE INDEX [FK] ON  [STATUS_LOG] ([StatusId], [WorkOrderDetailId]);

CREATE INDEX [ ] ON  [STATUS_LOG] ([CreatedBy], [ModifiedBy], [Modified]);

CREATE TABLE [ACCOUNT] (
  [AccountId] int,
  [Name] nvarchar(50),
  [Street Address] nvarchar(50),
  [PostCode] nvarchar(20),
  [Phone] nvarchar(20),
  [Created] datetime,
  [CreatedBy] nvarchar(30),
  [ModifiedBy] nvarchar(30),
  [Modified] DateTime,
  [Email] nvarchar(30),
  [Balance] money,
  PRIMARY KEY ([AccountId])
);

CREATE INDEX [ ] ON  [ACCOUNT] ([Street Address], [PostCode], [Phone], [Created], [CreatedBy], [ModifiedBy], [Modified], [Email]);

CREATE TABLE [ORDER_COMPOUND] (
  [OrderCompundId] int,
  [CompoundId] int,
  [QuantityMlg] decimal,
  [DateArrived] datetime,
  [ReceivedBy] nvarchar(30),
  [Appearance] nvarchar(30),
  [ClientWeight] Decimal,
  [MolecularMass] Decimal,
  [ActualWeight] Decimal,
  [MTD] nvarchar(50),
  [LT] int,
  [SC] int,
  [Created] Datetime,
  [CreatedBy] nvarchar(30),
  [ModifiedBy] nvarchar(30),
  [Modified] DateTime,
  PRIMARY KEY ([OrderCompundId])
);

CREATE INDEX [FK] ON  [ORDER_COMPOUND] ([CompoundId]);

CREATE INDEX [ ] ON  [ORDER_COMPOUND] ([DateArrived], [ReceivedBy], [ClientWeight], [CreatedBy], [ModifiedBy], [Modified]);

CREATE TABLE [EQUIPMENT] (
  [EquipmentId] int,
  [Description] nvarchar(50),
  [Created] Datetime,
  [CreatedBy] nvarchar(30),
  [ModifiedBy] nvarchar(30),
  [Modified] DateTime,
  PRIMARY KEY ([EquipmentId])
);

CREATE INDEX [ ] ON  [EQUIPMENT] ([CreatedBy], [ModifiedBy], [Modified]);

CREATE TABLE [MATERIAL] (
  [MaterialId] int,
  [Name] nvarchar(50),
  [Description] nvarchar(max),
  [Cost] Money,
  [Created] Datetime,
  [CreatedBy] nvarchar(30),
  [ModifiedBy] nvarchar(30),
  [Modified] DateTime,
  PRIMARY KEY ([MaterialId])
);

CREATE INDEX [ ] ON  [MATERIAL] ([CreatedBy], [ModifiedBy], [Modified]);

CREATE TABLE [WORK_ORDER_DETAIL] (
  [WorkOrderDetailId] int,
  [WorkOrderId] int,
  [AssayId] int,
  [OrderCompoundId] int,
  [ScheduledStartDate] Datetime,
  [ScheduledEndDate] Datetime,
  [ActualStartDate] Datetime,
  [ActualEndDate] Datetime,
  [StatusId] int,
  [Created] Datetime,
  [CreatedBy] nvarchar(30),
  [ModifiedBy] nvarchar(30),
  [Modified] DateTime,
  PRIMARY KEY ([WorkOrderDetailId])
);

CREATE INDEX [FK] ON  [WORK_ORDER_DETAIL] ([WorkOrderId], [AssayId], [OrderCompoundId], [StatusId]);

CREATE INDEX [ ] ON  [WORK_ORDER_DETAIL] ([ScheduledStartDate], [ActualStartDate], [CreatedBy], [ModifiedBy], [Modified]);

CREATE TABLE [ASSAY] (
  [AssayId] int,
  [Type] nvarchar(30),
  [Protocol] nvarchar(max),
  [EstimatedTimeHours] decimal,
  [Description] nvarchar(max),
  [BasePrice] money,
  [Created] Datetime,
  [CreatedBy] nvarchar(30),
  [ModifiedBy] nvarchar(30),
  [Modified] DateTime,
  PRIMARY KEY ([AssayId])
);

CREATE TABLE [TEST] (
  [TestId] int,
  [AssayId] int,
  [Condiition] nvarchar(max),
  [Description] nvarchar(max),
  [MaterialId] int,
  [DurationHours] decimal,
  [AuthorizationNeeded] bit,
  [AuthorizationStatusId] int,
  [EquipmentId] int,
  [Created] DateTime,
  [CreatedBy] nvarchar(30),
  [ModifiedBy] nvarchar(30),
  [Modified] DateTime,
  PRIMARY KEY ([TestId])
);

CREATE INDEX [FK] ON  [TEST] ([AssayId], [MaterialId], [AuthorizationStatusId], [EquipmentId]);

CREATE INDEX [ ] ON  [TEST] ([DurationHours], [CreatedBy], [ModifiedBy], [Modified]);

CREATE TABLE [TEST_MATERIAL] (
  [TestMaterialId] int,
  [MaterialId] int,
  [Consumable] bit,
  [Created] Datetime,
  [CreatedBy] nvarchar(30),
  [ModifiedBy] nvarchar(30),
  [Modified] DateTime,
  PRIMARY KEY ([TestMaterialId])
);

CREATE INDEX [FK] ON  [TEST_MATERIAL] ([MaterialId]);

CREATE INDEX [ ] ON  [TEST_MATERIAL] ([CreatedBy], [ModifiedBy], [Modified]);

