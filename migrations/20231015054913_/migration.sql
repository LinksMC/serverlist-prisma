/*
  Warnings:

  - Added the required column `ip` to the `minecraft_server` table without a default value. This is not possible if the table is not empty.
  - Added the required column `port` to the `minecraft_server` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "minecraft_server" ADD COLUMN     "ip" TEXT NOT NULL,
ADD COLUMN     "port" INTEGER NOT NULL;
