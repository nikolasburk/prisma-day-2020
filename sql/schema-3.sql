ALTER TABLE "public"."_CategoryToPost" RENAME COLUMN "A" TO "categoryId";
ALTER TABLE "public"."_CategoryToPost" RENAME COLUMN "B" TO "postId";
ALTER TABLE "public"."_CategoryToPost"
  ADD COLUMN "userId" integer,
  ADD UNIQUE ("userId"),
  ADD FOREIGN KEY ("userId") REFERENCES "public"."User"("id");