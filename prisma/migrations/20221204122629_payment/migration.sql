-- CreateTable
CREATE TABLE "Discount" (
    "dis_ID" SERIAL NOT NULL,
    "Dis_name" TEXT NOT NULL,
    "Des" TEXT NOT NULL,
    "Dis_Percent" INTEGER NOT NULL,
    "CreateAt" TEXT NOT NULL,

    CONSTRAINT "Discount_pkey" PRIMARY KEY ("dis_ID")
);

-- CreateTable
CREATE TABLE "Payment" (
    "Pay_ID" SERIAL NOT NULL,
    "Order_ID" INTEGER NOT NULL,
    "Amount" INTEGER NOT NULL,
    "Proider" TEXT NOT NULL,
    "status" TEXT NOT NULL,
    "Create" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Payment_pkey" PRIMARY KEY ("Pay_ID")
);
