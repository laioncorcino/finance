CREATE TABLE "users" (
    "id" serial PRIMARY KEY NOT NULL,
    "username" VARCHAR NOT NULL,
    "password" VARCHAR NOT NULL,
    "email" VARCHAR UNIQUE NOT NULL,
    "created_at" timestamptz NOT NULL DEFAULT (now())
);

CREATE TABLE categories (
    "id" serial PRIMARY KEY NOT NULL,
    "title" VARCHAR NOT NULL,
    "type" VARCHAR NOT NULL,
    "description" VARCHAR NOT NULL,
    "created_at" timestamptz NOT NULL DEFAULT (now()),
    "user_id" INT NOT NULL
);

ALTER TABLE categories ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

CREATE TABLE accounts (
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

ALTER TABLE accounts ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");
ALTER TABLE accounts ADD FOREIGN KEY ("category_id") REFERENCES categories ("id");
