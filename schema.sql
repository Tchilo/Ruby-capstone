CREATE DATABASE 'catalog';

CREATE TABLE item(
  id INT GENERATED ALWAYS AS IDENTITY,
  source_id INT,
  author_id INT,
  publish_date DATE,
  archived BOOLEAN,
  PRIMARY KEY(id),
  FOREIGN KEY (source_id) REFERENCES sources (id),
  FOREIGN KEY (author_id) REFERENCES authors (id)
);

CREATE TABLE sources(
  id INT GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(255)
  PRIMARY KEY(id)
);

CREATE TABLE movies(
  id INT,
  silet BOOLEAN,
  FOREIGN KEY(id) REFERENCES item(id)
);

CREATE TABLE author(
  id INT GENERATED ALWAYS AS IDENTITY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  PRIMARY KEY(id)
);

CREATE TABLE games(
  id INT GENERATED ALWAYS AS IDENTITY,
  multiplayer BOOLEAN,
  last_played_at DATE,
  FOREIGN KEY(id) REFERENCES item(id)
);



