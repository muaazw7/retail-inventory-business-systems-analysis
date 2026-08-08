-- Retail Inventory Management System
-- SQL Server Schema

CREATE TABLE Roles (
    RoleID INT IDENTITY(1,1) PRIMARY KEY,
    RoleName VARCHAR(50) NOT NULL UNIQUE,
    RoleDescription VARCHAR(255) NULL
);

CREATE TABLE Users (
    UserID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    RoleID INT NOT NULL,
    IsActive BIT NOT NULL DEFAULT 1,
    CreatedDate DATETIME NOT NULL DEFAULT GETDATE(),

    CONSTRAINT FK_Users_Roles
        FOREIGN KEY (RoleID)
        REFERENCES Roles(RoleID)
);

CREATE TABLE Categories (
    CategoryID INT IDENTITY(1,1) PRIMARY KEY,
    CategoryName VARCHAR(100) NOT NULL UNIQUE,
    CategoryDescription VARCHAR(255) NULL
);

CREATE TABLE Products (
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    ProductName VARCHAR(150) NOT NULL,
    CategoryID INT NOT NULL,
    UnitPrice DECIMAL(10,2) NOT NULL,
    CurrentQuantity INT NOT NULL DEFAULT 0,
    ReorderLevel INT NOT NULL DEFAULT 0,
    IsActive BIT NOT NULL DEFAULT 1,

    CONSTRAINT FK_Products_Categories
        FOREIGN KEY (CategoryID)
        REFERENCES Categories(CategoryID),

    CONSTRAINT CK_Products_UnitPrice
        CHECK (UnitPrice >= 0),

    CONSTRAINT CK_Products_CurrentQuantity
        CHECK (CurrentQuantity >= 0),

    CONSTRAINT CK_Products_ReorderLevel
        CHECK (ReorderLevel >= 0)
);

CREATE TABLE Suppliers (
    SupplierID INT IDENTITY(1,1) PRIMARY KEY,
    SupplierName VARCHAR(150) NOT NULL,
    ContactName VARCHAR(100) NULL,
    Email VARCHAR(100) NULL,
    Phone VARCHAR(25) NULL,
    IsActive BIT NOT NULL DEFAULT 1
);

CREATE TABLE ProductSuppliers (
    ProductID INT NOT NULL,
    SupplierID INT NOT NULL,
    SupplierProductCode VARCHAR(50) NULL,
    UnitCost DECIMAL(10,2) NOT NULL,
    IsPreferredSupplier BIT NOT NULL DEFAULT 0,

    CONSTRAINT PK_ProductSuppliers
        PRIMARY KEY (ProductID, SupplierID),

    CONSTRAINT FK_ProductSuppliers_Products
        FOREIGN KEY (ProductID)
        REFERENCES Products(ProductID),

    CONSTRAINT FK_ProductSuppliers_Suppliers
        FOREIGN KEY (SupplierID)
        REFERENCES Suppliers(SupplierID),

    CONSTRAINT CK_ProductSuppliers_UnitCost
        CHECK (UnitCost >= 0)
);

CREATE TABLE SalesTransactions (
    SalesTransactionID INT IDENTITY(1,1) PRIMARY KEY,
    TransactionDate DATETIME NOT NULL DEFAULT GETDATE(),
    UserID INT NOT NULL,
    TotalAmount DECIMAL(12,2) NOT NULL DEFAULT 0,

    CONSTRAINT FK_SalesTransactions_Users
        FOREIGN KEY (UserID)
        REFERENCES Users(UserID),

    CONSTRAINT CK_SalesTransactions_TotalAmount
        CHECK (TotalAmount >= 0)
);

CREATE TABLE SalesTransactionItems (
    SalesTransactionItemID INT IDENTITY(1,1) PRIMARY KEY,
    SalesTransactionID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL,
    UnitPrice DECIMAL(10,2) NOT NULL,

    CONSTRAINT FK_SalesTransactionItems_SalesTransactions
        FOREIGN KEY (SalesTransactionID)
        REFERENCES SalesTransactions(SalesTransactionID),

    CONSTRAINT FK_SalesTransactionItems_Products
        FOREIGN KEY (ProductID)
        REFERENCES Products(ProductID),

    CONSTRAINT CK_SalesTransactionItems_Quantity
        CHECK (Quantity > 0),

    CONSTRAINT CK_SalesTransactionItems_UnitPrice
        CHECK (UnitPrice >= 0)
);

CREATE TABLE Replenishments (
    ReplenishmentID INT IDENTITY(1,1) PRIMARY KEY,
    SupplierID INT NOT NULL,
    ReceivedDate DATETIME NOT NULL DEFAULT GETDATE(),
    UserID INT NOT NULL,
    Status VARCHAR(30) NOT NULL DEFAULT 'Received',

    CONSTRAINT FK_Replenishments_Suppliers
        FOREIGN KEY (SupplierID)
        REFERENCES Suppliers(SupplierID),

    CONSTRAINT FK_Replenishments_Users
        FOREIGN KEY (UserID)
        REFERENCES Users(UserID)
);

CREATE TABLE ReplenishmentItems (
    ReplenishmentItemID INT IDENTITY(1,1) PRIMARY KEY,
    ReplenishmentID INT NOT NULL,
    ProductID INT NOT NULL,
    QuantityReceived INT NOT NULL,
    UnitCost DECIMAL(10,2) NOT NULL,

    CONSTRAINT FK_ReplenishmentItems_Replenishments
        FOREIGN KEY (ReplenishmentID)
        REFERENCES Replenishments(ReplenishmentID),

    CONSTRAINT FK_ReplenishmentItems_Products
        FOREIGN KEY (ProductID)
        REFERENCES Products(ProductID),

    CONSTRAINT CK_ReplenishmentItems_QuantityReceived
        CHECK (QuantityReceived > 0),

    CONSTRAINT CK_ReplenishmentItems_UnitCost
        CHECK (UnitCost >= 0)
);

CREATE INDEX IX_Products_ProductName
    ON Products(ProductName);

CREATE INDEX IX_Products_CategoryID
    ON Products(CategoryID);

CREATE INDEX IX_SalesTransactions_TransactionDate
    ON SalesTransactions(TransactionDate);

CREATE INDEX IX_SalesTransactionItems_ProductID
    ON SalesTransactionItems(ProductID);

CREATE INDEX IX_Replenishments_ReceivedDate
    ON Replenishments(ReceivedDate);

CREATE INDEX IX_ReplenishmentItems_ProductID
    ON ReplenishmentItems(ProductID);
