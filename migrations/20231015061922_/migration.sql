/*
  Warnings:

  - Added the required column `token` to the `MinecraftServerAuthRequest` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "MinecraftServerAuthRequest" ADD COLUMN     "token" TEXT NOT NULL;
