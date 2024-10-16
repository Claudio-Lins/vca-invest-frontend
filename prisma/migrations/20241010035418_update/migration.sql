/*
  Warnings:

  - A unique constraint covering the columns `[client_id]` on the table `users` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterEnum
ALTER TYPE "UserRole" ADD VALUE 'DEFAULT';

-- AlterTable
ALTER TABLE "users" ADD COLUMN     "client_id" TEXT,
ADD COLUMN     "shortname" TEXT,
ADD COLUMN     "surname" TEXT;

-- CreateIndex
CREATE UNIQUE INDEX "users_client_id_key" ON "users"("client_id");
