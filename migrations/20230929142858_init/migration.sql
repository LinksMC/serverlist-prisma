-- CreateTable
CREATE TABLE "minecraft_server" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "outline" TEXT NOT NULL,
    "avatar" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "minecraft_server_pkey" PRIMARY KEY ("id")
);
