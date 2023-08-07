CREATE TABLE Customer1k (
	customer_id SERIAL PRIMARY KEY ,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE ,
    addresss VARCHAR(100),
    phone DECIMAL(10,0)
);

CREATE TABLE Customer50mNoIndex (
	customer_id SERIAL PRIMARY KEY ,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE ,
    addresss VARCHAR(100),
    phone DECIMAL(10,0)
);

CREATE TABLE Customer50mIndex (
	customer_id SERIAL PRIMARY KEY ,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE ,
    addresss VARCHAR(100),
    phone DECIMAL(10,0)
);
