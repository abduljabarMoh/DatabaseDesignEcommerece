-- CreateTable
CREATE TABLE "Product" (
    "Pro_ID" SERIAL NOT NULL,
    "Pro_name" TEXT NOT NULL,
    "Pro_price" TEXT NOT NULL,

    CONSTRAINT "Product_pkey" PRIMARY KEY ("Pro_ID")
);

-- CreateTable
CREATE TABLE "Store" (
    "St_ID" SERIAL NOT NULL,
    "St_Name" TEXT NOT NULL,
    "St_Address" TEXT NOT NULL,
    "JoindAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Store_pkey" PRIMARY KEY ("St_ID")
);

-- CreateTable
CREATE TABLE "Inventory" (
    "Pro_ID" INTEGER NOT NULL,
    "St_ID" INTEGER NOT NULL,
    "St_Available" INTEGER NOT NULL,

    CONSTRAINT "Inventory_pkey" PRIMARY KEY ("St_ID")
);

-- CreateTable
CREATE TABLE "Cart" (
    "Car_ID" SERIAL NOT NULL,
    "UserID" INTEGER NOT NULL,
    "Pro_ID" INTEGER NOT NULL,
    "St_ID" INTEGER NOT NULL,

    CONSTRAINT "Cart_pkey" PRIMARY KEY ("Car_ID")
);
