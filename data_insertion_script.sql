INSERT INTO Customer10mIndex (first_name, last_name, date_of_birth, addresss, phone)
SELECT
    'John' || (i),
    'Smith' || (i),
    '1980-01-01'::DATE + (i % 3650),
    '123 Main St, Anytown, USA',
    (1000000000 + i)::DECIMAL(10,0)
FROM generate_series(1, 10000000) AS i;

INSERT INTO Customer10mNoIndex (first_name, last_name, date_of_birth, addresss, phone)
SELECT
    'John' || (i),
    'Smith' || (i),
    '1980-01-01'::DATE + (i % 3650),
    '123 Main St, Anytown, USA',
    (1000000000 + i)::DECIMAL(10,0)
FROM generate_series(1, 10000000) AS i;


INSERT INTO Customer1k (first_name, last_name, date_of_birth, addresss, phone)
SELECT
    'John' || (i % 1000),
    'Smith' || (i % 1000),
    '1980-01-01'::DATE + (i % 3650),
    '123 Main St, Anytown, USA',
    (1000000000 + i)::DECIMAL(10,0)
FROM generate_series(1, 1000) AS i;


INSERT INTO Customer1k (first_name, last_name, date_of_birth, addresss, phone) VALUES ('Abhi', 'Zanzarukiya', '1998-09-09', '123 Main St, Anytown, USA', 1212121212);
INSERT INTO Customer10mIndex (first_name, last_name, date_of_birth, addresss, phone) VALUES ('Abhi', 'Zanzarukiya', '1998-09-09', '123 Main St, Anytown, USA', 1212121212);
INSERT INTO Customer10mNoIndex (first_name, last_name, date_of_birth, addresss, phone) VALUES ('Abhi', 'Zanzarukiya', '1998-09-09', '123 Main St, Anytown, USA', 1212121212);