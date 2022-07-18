CREATE TABLE "customer" (
  "customer_id" SERIAL,
  "first_name" VARCHAR(50),
  "last_name" VARCHAR(50),
  "address" VARCHAR(150),
  "tickets" INTEGER,
  "fav_concession" VARCHAR(50),
  "is_rew_member" BOOLEAN,
  PRIMARY KEY ("customer_id")
);

CREATE TABLE "tickets" (
  "ticket_id" SERIAL,
  "customer_id" INT,
  "movie" INT,
  "purchase_date" DATE,
  "purchase_price" NUMERIC(2,2),
  PRIMARY KEY ("ticket_id")
);

CREATE TABLE "movies" (
  "movie_id" SERIAL,
  "movie_title" VARCHAR(100),
  "movie_runtime" TIME,
  "movie_rating" VARCHAR(15),
  "release_date" DATE,
  PRIMARY KEY ("movie_id")
);


CREATE TABLE "concessions" (
  "concession_id" SERIAL,
  "name" VARCHAR(100),
  "price" NUMERIC(2,2),
  PRIMARY KEY ("concession_id")
);

