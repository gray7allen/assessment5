CREATE TABLE owners(
  owner_id SERIAL PRIMARY KEY,
  ownername VARCHAR(30),
  email_address VARCHAR(50)
);

CREATE TABLE owner_password(
  owner_password_id SERIAL PRIMARY KEY,
  owner_id INT NOT NULL REFERENCES owners(owner_id),
  password VARCHAR(100)
);

CREATE TABLE animals(
  animal_id SERIAL PRIMARY KEY,
  species_id INT NOT NULL REFERENCES animal_species(species_id),
  owner_id INT NOT NULL REFERENCES owners(owner_id),
  animal_desrciption VARCHAR(1000),
  animal_image TEXT
);

CREATE TABLE animal_species(
  species_id SERIAL PRIMARY KEY
);