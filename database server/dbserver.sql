DROP DATABASE IF EXISTS hse_achievment_2;
DROP USER IF EXISTS main_user;

CREATE USER main_user WITH PASSWORD 'hse';
CREATE DATABASE hse_achievment_2 WITH OWNER main)user;

\c achive_2 web_server

CREATE TABLE IF NOT EXISTS numbers (
    id serial NOT NULL PRIMARY KEY,
    num int NOT NULL
    );
