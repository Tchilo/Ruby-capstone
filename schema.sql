CREATE DATABASE 'catalog';

CREATE TABLE item(
  id INT GENERATED ALWAYS AS IDENTITY,
  source_id INT,
  publish_date DATE,
  archived BOOLEAN,
  PRIMARY KEY(id),
  FOREIGN KEY (source_id) REFERENCES sources (id),
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


