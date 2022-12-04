-- CreateEnum
CREATE TYPE "Roles" AS ENUM ('Admin', 'Suppreadmin', 'User');

-- AlterTable
ALTER TABLE "Users" ADD COLUMN     "Role" "Roles" NOT NULL DEFAULT 'User';
