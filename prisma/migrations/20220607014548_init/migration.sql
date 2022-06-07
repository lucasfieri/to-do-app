-- CreateEnum
CREATE TYPE "Status" AS ENUM ('PENDING', 'DONE');

-- CreateTable
CREATE TABLE "Item" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "status" "Status" NOT NULL,

    CONSTRAINT "Item_pkey" PRIMARY KEY ("id")
);
