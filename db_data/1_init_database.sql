CREATE TABLE IF NOT EXISTS dr_equip_type (
    ID   SERIAL,
    type_name VARCHAR(50),
    CONSTRAINT dr_equip_type_pkey PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS dr_skate (
    id   SERIAL,
    eq_type_ID   SERIAL,
    title VARCHAR(50),
    sk_size VARCHAR(10),
    sk_fit VARCHAR(10),
    CONSTRAINT dr_skate_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS dr_stick (
    id   SERIAL,
    eq_type_ID   SERIAL,
    stick_name VARCHAR(50),
    hand VARCHAR(30),
    flex VARCHAR(20),
    band  VARCHAR(20),
    CONSTRAINT dr_stick_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS dr_pant (
    id   SERIAL,
    eq_type_ID   SERIAL,
    pant_name VARCHAR(50),
    pant_model VARCHAR(10),
    pant_size VARCHAR(10),
    pant_color VARCHAR(10),
    CONSTRAINT dr_pant_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS dr_state (
    ID   SERIAL,
    state_name VARCHAR(50),
    CONSTRAINT dr_state_pkey PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS dr_person (
    ID   SERIAL,
    person_name VARCHAR(50),
    first_name  VARCHAR(20),
    surname VARCHAR(20),
    last_name       VARCHAR(20),
    passport_info   VARCHAR(30),
    address VARCHAR(30),
    phone   VARCHAR(20),
    birthday    DATE,
    sex VARCHAR(1),
    CONSTRAINT dr_person_pkey PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS equip (
    id   SERIAL,
    eq_id SERIAL,
    eq_type_id SERIAL,
    state_id SERIAL,
    person_id SERIAL,
    doc_ext_in_id   SERIAL,
    doc_int_id   SERIAL,
    eq_price numeric,
    eq_person_oper VARCHAR(20),
	eq_date_creat TIMESTAMP,
    CONSTRAINT equip_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS doc_ext_in (
    id   SERIAL,
    doc_name VARCHAR(20),
    doc_from VARCHAR(20),
    doc_date DATE,
    doc_person VARCHAR(20),
    doc_person_oper VARCHAR(20),
    doc_price_all numeric,
    doc_date_creation TIMESTAMP,
    CONSTRAINT doc_ext_in_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS doc_int (
    id   SERIAL,
    doc_name VARCHAR(20),
    person_from VARCHAR(20),
    person_to VARCHAR(20),
    doc_person_oper VARCHAR(20),
    doc_int_date_cr TIMESTAMP,
    CONSTRAINT doc_int_pkey PRIMARY KEY (id)
);
