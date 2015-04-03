DROP TABLE IF EXISTS targets;
DROP TABLE IF EXISTS ships;
DROP TABLE IF EXISTS ocean_grids;


CREATE TABLE targets (
  id SERIAL PRIMARY KEY,
  row_num INTEGER NOT NULL,
  col_num INTEGER NOT NULL,
  hit BOOLEAN,
  called BOOLEAN,
  ocean_grid_id INTEGER,
  ship_id INTEGER
  -- REFERENCES ship(id)
);

CREATE TABLE ships (
  id SERIAL PRIMARY KEY,
  length INTEGER
);

CREATE TABLE ocean_grids (
  id SERIAL PRIMARY KEY
)
