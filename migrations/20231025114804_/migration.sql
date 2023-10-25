/*
  Warnings:

  - The primary key for the `minecraft_server` table will be changed. If it partially fails, the table could be left without primary key constraint.

*/
-- AlterTable
ALTER TABLE "minecraft_server" DROP CONSTRAINT "minecraft_server_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "minecraft_server_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "minecraft_server_id_seq";
