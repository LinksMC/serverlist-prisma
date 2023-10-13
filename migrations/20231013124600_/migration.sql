-- CreateTable
CREATE TABLE "MinecraftAuthRequest" (
    "id" TEXT NOT NULL,
    "edition" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "mcid" TEXT NOT NULL,
    "token" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "MinecraftAuthRequest_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MinecraftAccount" (
    "id" TEXT NOT NULL,
    "edition" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "mcid" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "user_id" TEXT NOT NULL,

    CONSTRAINT "MinecraftAccount_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "MinecraftAuthRequest_edition_mcid_key" ON "MinecraftAuthRequest"("edition", "mcid");

-- CreateIndex
CREATE UNIQUE INDEX "MinecraftAccount_edition_mcid_key" ON "MinecraftAccount"("edition", "mcid");

-- AddForeignKey
ALTER TABLE "MinecraftAccount" ADD CONSTRAINT "MinecraftAccount_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;
