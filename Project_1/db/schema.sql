DROP TABLE IF EXISTS targets;
DROP TABLE IF EXISTS ships;

CREATE TABLE targets (
  id SERIAL PRIMARY KEY,
  row TEXT NOT NULL,
  row_num INTEGER NOT NULL,
  col_num INTEGER NOT NULL,
  shown_char VARCHAR(5) NOT NULL,
  ship_id INTEGER
  -- REFERENCES ship(id)
);

CREATE TABLE ships (
  id SERIAL PRIMARY KEY,
  row TEXT,
  row_num INTEGER,
  col_num INTEGER,
  length INTEGER
);

-- DROP TABLE IF EXISTS ocean_grids;
-- DROP TABLE IF EXISTS ocean_spots;
-- DROP TABLE IF EXISTS ships;
--
-- CREATE TABLE ocean_grids(
--   id SERIAL PRIMARY KEY,
--   col_header INTEGER NOT NULL,
--   row_arrays TEXT NOT NULL
--   );
--
-- CREATE TABLE ocean_spots(
--   id SERIAL PRIMARY KEY,
--   ship_present BOOLEAN,
--   symbol TEXT NOT NULL,
--   row_name TEXT NOT NULL,
--   column_num INTEGER NOT NULL,
--   ships_id INTEGER,
--   ocean_id INTEGER NOT NULL
--   );
--
-- CREATE TABLE ships(
--   id SERIAL PRIMARY KEY,
--   ship_name TEXT,
--   row_values TEXT NOT NULL,
--   column_values INTEGER NOT NULL
-- );
