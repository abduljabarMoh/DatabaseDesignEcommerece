-- CreateTable
CREATE TABLE "Users" (
    "userID" SERIAL NOT NULL,
    "U_name" TEXT NOT NULL,
    "U_email" TEXT NOT NULL,
    "U_password" TEXT NOT NULL,
    "U_phone" TEXT NOT NULL,
    "U_Address" TEXT NOT NULL,
    "JiondAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Users_pkey" PRIMARY KEY ("userID")
);

-- CreateTable
CREATE TABLE "Order" (
    "Order_ID" SERIAL NOT NULL,
    "UserID" INTEGER NOT NULL,
    "U_address" TEXT NOT NULL,
    "CreateAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Order_pkey" PRIMARY KEY ("Order_ID")
);

-- CreateTable
CREATE TABLE "Ored_item" (
    "ID" SERIAL NOT NULL,
    "Produt_id" INTEGER NOT NULL,
    "UserID" INTEGER NOT NULL,
    "price" INTEGER NOT NULL,
    "createAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "Order_ID" INTEGER NOT NULL,

    CONSTRAINT "Ored_item_pkey" PRIMARY KEY ("ID")
);

-- CreateIndex
CREATE UNIQUE INDEX "Users_U_email_key" ON "Users"("U_email");
