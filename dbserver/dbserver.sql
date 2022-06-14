DROP DATABASE IF EXISTS gruzdev_2;
DROP USER IF EXISTS web_server_gruzdev;

CREATE USER web_server_gruzdev WITH PASSWORD 'achive_2';
CREATE DATABASE achive_2 WITH OWNER web_server_gruzdev;

\c gruzdev_2 web_server_gruzdev

CREATE TABLE IF NOT EXISTS numbers (
    id serial NOT NULL PRIMARY KEY,
    num int NOT NULL
    );