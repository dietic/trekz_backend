/*
  Warnings:

  - You are about to drop the column `tripId` on the `activities` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `crew_members` table. All the data in the column will be lost.
  - You are about to drop the column `crewId` on the `crew_members` table. All the data in the column will be lost.
  - You are about to drop the column `userId` on the `crew_members` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `crews` table. All the data in the column will be lost.
  - You are about to drop the column `createdById` on the `crews` table. All the data in the column will be lost.
  - You are about to drop the column `expiryDate` on the `documents` table. All the data in the column will be lost.
  - You are about to drop the column `profileId` on the `documents` table. All the data in the column will be lost.
  - You are about to drop the column `checkinDateTime` on the `housing_info` table. All the data in the column will be lost.
  - You are about to drop the column `checkoutDateTime` on the `housing_info` table. All the data in the column will be lost.
  - You are about to drop the column `tripId` on the `housing_info` table. All the data in the column will be lost.
  - You are about to drop the column `arrivalDateTime` on the `plane_info` table. All the data in the column will be lost.
  - You are about to drop the column `departureDateTime` on the `plane_info` table. All the data in the column will be lost.
  - You are about to drop the column `reservationCode` on the `plane_info` table. All the data in the column will be lost.
  - You are about to drop the column `tripId` on the `plane_info` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `trips` table. All the data in the column will be lost.
  - You are about to drop the column `crewId` on the `trips` table. All the data in the column will be lost.
  - You are about to drop the column `endDate` on the `trips` table. All the data in the column will be lost.
  - You are about to drop the column `startDate` on the `trips` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `user_profiles` table. All the data in the column will be lost.
  - You are about to drop the column `dateOfBirth` on the `user_profiles` table. All the data in the column will be lost.
  - You are about to drop the column `documentId` on the `user_profiles` table. All the data in the column will be lost.
  - You are about to drop the column `lastName` on the `user_profiles` table. All the data in the column will be lost.
  - You are about to drop the column `userId` on the `user_profiles` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `profileId` on the `users` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[user_id]` on the table `user_profiles` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[profile_id]` on the table `users` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `trip_id` to the `activities` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `activities` table without a default value. This is not possible if the table is not empty.
  - Added the required column `crew_id` to the `crew_members` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user_id` to the `crew_members` table without a default value. This is not possible if the table is not empty.
  - Added the required column `created_by_id` to the `crews` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `crews` table without a default value. This is not possible if the table is not empty.
  - Added the required column `expiry_date` to the `documents` table without a default value. This is not possible if the table is not empty.
  - Added the required column `profile_id` to the `documents` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `documents` table without a default value. This is not possible if the table is not empty.
  - Changed the type of `type` on the `documents` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Added the required column `checkin_date_time` to the `housing_info` table without a default value. This is not possible if the table is not empty.
  - Added the required column `checkout_date_time` to the `housing_info` table without a default value. This is not possible if the table is not empty.
  - Added the required column `trip_id` to the `housing_info` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `housing_info` table without a default value. This is not possible if the table is not empty.
  - Added the required column `arrival_date_time` to the `plane_info` table without a default value. This is not possible if the table is not empty.
  - Added the required column `departure_date_time` to the `plane_info` table without a default value. This is not possible if the table is not empty.
  - Added the required column `reservation_code` to the `plane_info` table without a default value. This is not possible if the table is not empty.
  - Added the required column `trip_id` to the `plane_info` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `plane_info` table without a default value. This is not possible if the table is not empty.
  - Added the required column `crew_id` to the `trips` table without a default value. This is not possible if the table is not empty.
  - Added the required column `end_date` to the `trips` table without a default value. This is not possible if the table is not empty.
  - Added the required column `start_date` to the `trips` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `trips` table without a default value. This is not possible if the table is not empty.
  - Added the required column `date_of_birth` to the `user_profiles` table without a default value. This is not possible if the table is not empty.
  - Added the required column `document_id` to the `user_profiles` table without a default value. This is not possible if the table is not empty.
  - Added the required column `last_name` to the `user_profiles` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `user_profiles` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `users` table without a default value. This is not possible if the table is not empty.

*/
-- CreateEnum
CREATE TYPE "DocumentType" AS ENUM ('PASSPORT', 'VISA', 'TICKET', 'OTHER');

-- DropForeignKey
ALTER TABLE "activities" DROP CONSTRAINT "activities_tripId_fkey";

-- DropForeignKey
ALTER TABLE "crew_members" DROP CONSTRAINT "crew_members_crewId_fkey";

-- DropForeignKey
ALTER TABLE "crew_members" DROP CONSTRAINT "crew_members_userId_fkey";

-- DropForeignKey
ALTER TABLE "crews" DROP CONSTRAINT "crews_createdById_fkey";

-- DropForeignKey
ALTER TABLE "documents" DROP CONSTRAINT "documents_profileId_fkey";

-- DropForeignKey
ALTER TABLE "housing_info" DROP CONSTRAINT "housing_info_tripId_fkey";

-- DropForeignKey
ALTER TABLE "plane_info" DROP CONSTRAINT "plane_info_tripId_fkey";

-- DropForeignKey
ALTER TABLE "trips" DROP CONSTRAINT "trips_crewId_fkey";

-- DropForeignKey
ALTER TABLE "users" DROP CONSTRAINT "users_profileId_fkey";

-- DropIndex
DROP INDEX "user_profiles_userId_key";

-- DropIndex
DROP INDEX "users_profileId_key";

-- AlterTable
ALTER TABLE "activities" DROP COLUMN "tripId",
ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "trip_id" TEXT NOT NULL,
ADD COLUMN     "updated_at" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "crew_members" DROP COLUMN "createdAt",
DROP COLUMN "crewId",
DROP COLUMN "userId",
ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "crew_id" TEXT NOT NULL,
ADD COLUMN     "user_id" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "crews" DROP COLUMN "createdAt",
DROP COLUMN "createdById",
ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "created_by_id" TEXT NOT NULL,
ADD COLUMN     "updated_at" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "documents" DROP COLUMN "expiryDate",
DROP COLUMN "profileId",
ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "expiry_date" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "profile_id" TEXT NOT NULL,
ADD COLUMN     "updated_at" TIMESTAMP(3) NOT NULL,
DROP COLUMN "type",
ADD COLUMN     "type" "DocumentType" NOT NULL;

-- AlterTable
ALTER TABLE "housing_info" DROP COLUMN "checkinDateTime",
DROP COLUMN "checkoutDateTime",
DROP COLUMN "tripId",
ADD COLUMN     "checkin_date_time" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "checkout_date_time" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "trip_id" TEXT NOT NULL,
ADD COLUMN     "updated_at" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "plane_info" DROP COLUMN "arrivalDateTime",
DROP COLUMN "departureDateTime",
DROP COLUMN "reservationCode",
DROP COLUMN "tripId",
ADD COLUMN     "arrival_date_time" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "departure_date_time" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "reservation_code" TEXT NOT NULL,
ADD COLUMN     "trip_id" TEXT NOT NULL,
ADD COLUMN     "updated_at" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "trips" DROP COLUMN "createdAt",
DROP COLUMN "crewId",
DROP COLUMN "endDate",
DROP COLUMN "startDate",
ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "crew_id" TEXT NOT NULL,
ADD COLUMN     "end_date" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "start_date" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "updated_at" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "user_profiles" DROP COLUMN "createdAt",
DROP COLUMN "dateOfBirth",
DROP COLUMN "documentId",
DROP COLUMN "lastName",
DROP COLUMN "userId",
ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "date_of_birth" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "document_id" TEXT NOT NULL,
ADD COLUMN     "last_name" TEXT NOT NULL,
ADD COLUMN     "updated_at" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "user_id" TEXT;

-- AlterTable
ALTER TABLE "users" DROP COLUMN "createdAt",
DROP COLUMN "profileId",
ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "profile_id" TEXT,
ADD COLUMN     "updated_at" TIMESTAMP(3) NOT NULL;

-- CreateIndex
CREATE INDEX "activities_trip_id_idx" ON "activities"("trip_id");

-- CreateIndex
CREATE INDEX "crew_members_user_id_idx" ON "crew_members"("user_id");

-- CreateIndex
CREATE INDEX "crew_members_crew_id_idx" ON "crew_members"("crew_id");

-- CreateIndex
CREATE INDEX "crews_created_by_id_idx" ON "crews"("created_by_id");

-- CreateIndex
CREATE INDEX "documents_profile_id_idx" ON "documents"("profile_id");

-- CreateIndex
CREATE INDEX "housing_info_trip_id_idx" ON "housing_info"("trip_id");

-- CreateIndex
CREATE INDEX "plane_info_trip_id_idx" ON "plane_info"("trip_id");

-- CreateIndex
CREATE INDEX "trips_crew_id_idx" ON "trips"("crew_id");

-- CreateIndex
CREATE UNIQUE INDEX "user_profiles_user_id_key" ON "user_profiles"("user_id");

-- CreateIndex
CREATE UNIQUE INDEX "users_profile_id_key" ON "users"("profile_id");

-- AddForeignKey
ALTER TABLE "users" ADD CONSTRAINT "users_profile_id_fkey" FOREIGN KEY ("profile_id") REFERENCES "user_profiles"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "crews" ADD CONSTRAINT "crews_created_by_id_fkey" FOREIGN KEY ("created_by_id") REFERENCES "users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "crew_members" ADD CONSTRAINT "crew_members_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "crew_members" ADD CONSTRAINT "crew_members_crew_id_fkey" FOREIGN KEY ("crew_id") REFERENCES "crews"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "trips" ADD CONSTRAINT "trips_crew_id_fkey" FOREIGN KEY ("crew_id") REFERENCES "crews"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "plane_info" ADD CONSTRAINT "plane_info_trip_id_fkey" FOREIGN KEY ("trip_id") REFERENCES "trips"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "housing_info" ADD CONSTRAINT "housing_info_trip_id_fkey" FOREIGN KEY ("trip_id") REFERENCES "trips"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "activities" ADD CONSTRAINT "activities_trip_id_fkey" FOREIGN KEY ("trip_id") REFERENCES "trips"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "documents" ADD CONSTRAINT "documents_profile_id_fkey" FOREIGN KEY ("profile_id") REFERENCES "user_profiles"("id") ON DELETE CASCADE ON UPDATE CASCADE;
