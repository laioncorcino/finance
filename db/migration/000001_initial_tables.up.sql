CREATE TABLE "user" (
    "id" serial PRIMARY KEY NOT NULL,
    "username" VARCHAR NOT NULL,
    "password" VARCHAR NOT NULL,
    "email" VARCHAR UNIQUE NOT NULL,
    "created_at" timestamptz NOT NULL DEFAULT (now())
);

CREATE TABLE "category" (
    "id" serial PRIMARY KEY NOT NULL,
    "title" VARCHAR NOT NULL,
    "type" VARCHAR NOT NULL,
    "description" VARCHAR NOT NULL,
    "created_at" timestamptz NOT NULL DEFAULT (now()),
    "user_id" INT NOT NULL
);

ALTER TABLE "category" ADD FOREIGN KEY ("user_id") REFERENCES "user" ("id");

CREATE TABLE "account" (
    "id" serial PRIMARY KEY NOT NULL,
    "title" VARCHAR NOT NULL,
    "type" VARCHAR NOT NULL,
    "description" VARCHAR NOT NULL,
    "value" INTEGER NOT NULL,
    "date" DATE NOT NULL,
    "created_at" timestamptz NOT NULL DEFAULT (now()),
    "user_id" INT NOT NULL,
    "category_id" INT NOT NULL
);

ALTER TABLE "account" ADD FOREIGN KEY ("user_id") REFERENCES "user" ("id");
ALTER TABLE "account" ADD FOREIGN KEY ("category_id") REFERENCES "category" ("id");

