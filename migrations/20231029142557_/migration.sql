/*
  Warnings:

  - A unique constraint covering the columns `[id]` on the table `MinecraftServerAuthRequest` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX "MinecraftServerAuthRequest_ip_port_key";

-- CreateIndex
CREATE UNIQUE INDEX "MinecraftServerAuthRequest_id_key" ON "MinecraftServerAuthRequest"("id");
