ALTER TABLE "public"."_CategoryToPost" RENAME COLUMN "A" TO "categoryId";
ALTER TABLE "public"."_CategoryToPost" RENAME COLUMN "B" TO "postId";
ALTER TABLE "public"."_CategoryToPost"
  ADD COLUMN "userId" INTEGER,
  ADD FOREIGN KEY ("userId") REFERENCES "public"."User"("id");
ALTER TABLE "public"."_CategoryToPost"
  ADD COLUMN "createdAt" timestamp NOT NULL DEFAULT now();
