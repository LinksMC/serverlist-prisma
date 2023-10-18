/*
  Warnings:

  - You are about to drop the column `userId` on the `minecraft_server` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "minecraft_server" DROP CONSTRAINT "minecraft_server_userId_fkey";

-- AlterTable
ALTER TABLE "minecraft_server" DROP COLUMN "userId",
ADD COLUMN     "ownerId" TEXT,
ADD COLUMN     "published" BOOLEAN NOT NULL DEFAULT false;

-- AddForeignKey
ALTER TABLE "minecraft_server" ADD CONSTRAINT "minecraft_server_ownerId_fkey" FOREIGN KEY ("ownerId") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;
