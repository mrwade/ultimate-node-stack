-- CreateTable
CREATE TABLE "Post" (
  "id" VARCHAR(16) NOT NULL,
  "slug" VARCHAR(60) NOT NULL,
  "title" VARCHAR(255) NOT NULL,
  "content" TEXT,
  "published" BOOLEAN NOT NULL DEFAULT false,
  "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updatedAt" TIMESTAMP(3) NOT NULL,

  PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Post.slug_unique" ON "Post"("slug");
