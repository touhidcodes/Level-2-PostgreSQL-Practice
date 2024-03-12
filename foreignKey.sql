-- Active: 1709927137429@@127.0.0.1@5432@postgres_practice

-- user is a reserved keyword in postgres. so use quotation
CREATE Table "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
)

CREATE Table post(
    id SERIAL PRIMARY KEY,
    title text NOT NULL,
    user_id INTEGER REFERENCES "user"(id)
)

ALTER Table post
    alter COLUMN user_id set NOT null;

INSERT INTO "user" (username) VALUES
('akash'),
('batash'),
('sagor'),
('nodi');

SELECT * FROM "user"

INSERT INTO post (title, user_id) VALUES
('Enjoying a sunny day with Akash! ☀️', 2),
('Batash just shared an amazing recipe! 🍲', 1),
('Exploring adventures with Sagor.🌟', 4),
('Nodi''s wisdom always leaves me inspired. 📚', 4);

SELECT * FROM post