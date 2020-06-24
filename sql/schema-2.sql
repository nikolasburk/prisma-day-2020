CREATE TABLE "public"."Category" (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255)
);
CREATE TABLE "_CategoryToPost" (
    "A" integer NOT NULL REFERENCES "Category"(id),
    "B" integer NOT NULL REFERENCES "Post"(id)
);
CREATE UNIQUE INDEX "_CategoryToPost_AB_unique" ON "_CategoryToPost"("A" int4_ops,"B" int4_ops);
CREATE INDEX "_CategoryToPost_B_index" ON "_CategoryToPost"("B" int4_ops);