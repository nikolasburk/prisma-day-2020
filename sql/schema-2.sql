CREATE TABLE "public"."Category" (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255)
);
CREATE TABLE "_CategoryToPost" (
    "A" INTEGER NOT NULL REFERENCES "Category"(id),
    "B" INTEGER NOT NULL REFERENCES "Post"(id)
);
CREATE UNIQUE INDEX "_CategoryToPost_AB_unique" ON "_CategoryToPost"("A","B");
CREATE INDEX "_CategoryToPost_B_index" ON "_CategoryToPost"("B");
