CREATE TABLE hibernate_sequence
(
    sequence_name VARCHAR NOT NULL,
    last_value BIGINT NOT NULL,
    start_value BIGINT NOT NULL,
    increment_by BIGINT NOT NULL,
    max_value BIGINT NOT NULL,
    min_value BIGINT NOT NULL,
    cache_value BIGINT NOT NULL,
    log_cnt BIGINT NOT NULL,
    is_cycled BOOL NOT NULL,
    is_called BOOL NOT NULL
);
CREATE TABLE organisations
(
    id_organisation SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(200) NOT NULL
);
CREATE TABLE organisations_id_organisation_seq
(
    sequence_name VARCHAR NOT NULL,
    last_value BIGINT NOT NULL,
    start_value BIGINT NOT NULL,
    increment_by BIGINT NOT NULL,
    max_value BIGINT NOT NULL,
    min_value BIGINT NOT NULL,
    cache_value BIGINT NOT NULL,
    log_cnt BIGINT NOT NULL,
    is_cycled BOOL NOT NULL,
    is_called BOOL NOT NULL
);
CREATE TABLE point
(
    id_point SERIAL PRIMARY KEY NOT NULL,
    opening_times VARCHAR NOT NULL,
    address VARCHAR(200) NOT NULL,
    coordinates VARCHAR(200) NOT NULL,
    id_organisation INT
);
CREATE TABLE point_id_point_seq
(
    sequence_name VARCHAR NOT NULL,
    last_value BIGINT NOT NULL,
    start_value BIGINT NOT NULL,
    increment_by BIGINT NOT NULL,
    max_value BIGINT NOT NULL,
    min_value BIGINT NOT NULL,
    cache_value BIGINT NOT NULL,
    log_cnt BIGINT NOT NULL,
    is_cycled BOOL NOT NULL,
    is_called BOOL NOT NULL
);
CREATE TABLE service
(
    id_service SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(300) NOT NULL,
    price VARCHAR(20) NOT NULL
);
CREATE TABLE service_id_service_seq
(
    sequence_name VARCHAR NOT NULL,
    last_value BIGINT NOT NULL,
    start_value BIGINT NOT NULL,
    increment_by BIGINT NOT NULL,
    max_value BIGINT NOT NULL,
    min_value BIGINT NOT NULL,
    cache_value BIGINT NOT NULL,
    log_cnt BIGINT NOT NULL,
    is_cycled BOOL NOT NULL,
    is_called BOOL NOT NULL
);
CREATE TABLE service_point
(
    id SERIAL PRIMARY KEY NOT NULL,
    id_service INT NOT NULL,
    id_point INT NOT NULL
);
CREATE TABLE service_point_id_seq
(
    sequence_name VARCHAR NOT NULL,
    last_value BIGINT NOT NULL,
    start_value BIGINT NOT NULL,
    increment_by BIGINT NOT NULL,
    max_value BIGINT NOT NULL,
    min_value BIGINT NOT NULL,
    cache_value BIGINT NOT NULL,
    log_cnt BIGINT NOT NULL,
    is_cycled BOOL NOT NULL,
    is_called BOOL NOT NULL
);
CREATE TABLE users
(
    id INT NOT NULL,
    email VARCHAR(255) NOT NULL,
    fistname VARCHAR(255),
    "lastName" VARCHAR(255),
    login VARCHAR(255),
    password VARCHAR(255),
    PRIMARY KEY (id, email)
);
CREATE UNIQUE INDEX unique_id_organisation ON organisations (id_organisation);
ALTER TABLE point ADD FOREIGN KEY (id_organisation) REFERENCES organisations (id_organisation);
CREATE UNIQUE INDEX unique_id_point ON point (id_point);
CREATE UNIQUE INDEX unique_id_service ON service (id_service);
ALTER TABLE service_point ADD FOREIGN KEY (id_point) REFERENCES point (id_point);
ALTER TABLE service_point ADD FOREIGN KEY (id_service) REFERENCES service (id_service);
CREATE UNIQUE INDEX unique_id ON service_point (id);
