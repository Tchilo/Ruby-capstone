CREATE DATABASE 'catalog';

CREATE TABLE item(
  id INT GENERATED ALWAYS AS IDENTITY,
  label_id INT,
  source_id INT,
  author_id INT,
  publish_date DATE,
  archived BOOLEAN,
  PRIMARY KEY(id),
  FOREIGN KEY (source_id) REFERENCES sources (id),
<<<<<<< HEAD
  FOREIGN KEY (label_id) REFERENCES labels (id)
=======
  FOREIGN KEY (author_id) REFERENCES authors (id)
>>>>>>> 751c710d1ce4935f1717366e6d99ca9f1845a9a8
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

CREATE TABLE books(
  id INT GENERATED ALWAYS AS IDENTITY,
  publisher VARCHAR(255),
  cover_state VARCHAR(255),
  FOREIGN KEY(id) REFERENCES item(id)
);

CREATE TABLE labels(
  id INT GENERATED ALWAYS AS IDENTITY,
  title VARCHAR(255),
  color VARCHAR(255),
  PRIMARY KEY(id)
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



