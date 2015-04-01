DROP TABLE IF EXISTS ocean_grids;
DROP TABLE IF EXISTS ocean_spots;
DROP TABLE IF EXISTS ships;

CREATE TABLE ocean_grids(
  id SERIAL PRIMARY KEY,
  row_header INTEGER NOT NULL,
  row_arrays TEXT NOT NULL
  );

CREATE TABLE ocean_spots(
  id SERIAL PRIMARY KEY,
  ship_present BOOLEAN,
  symbol TEXT NOT NULL,
  row TEXT NOT NULL,
  column_num INTEGER NOT NULL,
  ships_id INTEGER,
  ocean_id INTEGER NOT NULL
  );

CREATE TABLE ships(
  id SERIAL PRIMARY KEY,
  ship_name TEXT,
  row_values TEXT NOT NULL,
  column_values INTEGER NOT NULL
);
