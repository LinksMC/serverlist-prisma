-- AlterTable
ALTER TABLE "minecraft_server" ADD COLUMN     "userId" TEXT;

-- CreateTable
CREATE TABLE "MinecraftServerAuthRequest" (
    "id" TEXT NOT NULL,
    "ip" TEXT NOT NULL,
    "port" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "user_id" TEXT NOT NULL,

    CONSTRAINT "MinecraftServerAuthRequest_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "MinecraftServerAuthRequest_ip_port_key" ON "MinecraftServerAuthRequest"("ip", "port");

-- AddForeignKey
ALTER TABLE "minecraft_server" ADD CONSTRAINT "minecraft_server_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MinecraftServerAuthRequest" ADD CONSTRAINT "MinecraftServerAuthRequest_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;
