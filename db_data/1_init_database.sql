CREATE TABLE IF NOT EXISTS dr_equip_type (
    dr_equip_type_ID   SERIAL,
    type_name VARCHAR(50),
    CONSTRAINT dr_equip_type_pkey PRIMARY KEY (dr_equip_type_ID)
);

CREATE TABLE IF NOT EXISTS dr_skate (
    dr_eq_id   SERIAL,
    dr_eq_type_ID   SERIAL,
    title VARCHAR(50),
    sk_size VARCHAR(10),
    sk_fit VARCHAR(10),
    CONSTRAINT dr_skate_pkey PRIMARY KEY (dr_eq_id)
);

CREATE TABLE IF NOT EXISTS dr_stick (
    dr_eq_id   SERIAL,
    dr_eq_type_ID   SERIAL,
    stick_name VARCHAR(50),
    hand VARCHAR(30),
    flex VARCHAR(20),
    band  VARCHAR(20),
    CONSTRAINT dr_stick_pkey PRIMARY KEY (dr_eq_id)
);

CREATE TABLE IF NOT EXISTS dr_pant (
    dr_eq_id   SERIAL,
    dr_eq_type_ID   SERIAL,
    pant_name VARCHAR(50),
    pant_model VARCHAR(10),
    pant_size VARCHAR(10),
    pant_color VARCHAR(10),
    CONSTRAINT dr_pant_pkey PRIMARY KEY (dr_eq_id)
);

CREATE TABLE IF NOT EXISTS dr_state (
    dr_state_ID   SERIAL,
    state_name VARCHAR(50),
    CONSTRAINT dr_state_pkey PRIMARY KEY (dr_state_ID)
);

CREATE TABLE IF NOT EXISTS dr_person (
    dr_person_ID   SERIAL,
    person_name VARCHAR(50),
    first_name  VARCHAR(20),
    surname VARCHAR(20),
    last_name       VARCHAR(20),
    passport_info   VARCHAR(30),
    address VARCHAR(30),
    phone   VARCHAR(20),
    birthday    DATE,
    sex VARCHAR(1),
    CONSTRAINT dr_person_pkey PRIMARY KEY (dr_person_ID)
);

CREATE TABLE IF NOT EXISTS equipment (
    equipment_id   SERIAL,
    dr_eq_id SERIAL,
    dr_eq_type_id SERIAL,
    dr_state_id SERIAL,
    dr_person_id SERIAL,
    doc_ext_in_id   SERIAL,
    doc_int_id   SERIAL,
    eq_price numeric,
    eq_person_oper VARCHAR(20),
	eq_date_creat TIMESTAMP,
    CONSTRAINT equipment_pkey PRIMARY KEY (equipment_id)
);

CREATE TABLE IF NOT EXISTS document_ext_in (
    doc_ext_in_id   SERIAL,
    doc_name VARCHAR(20),
    doc_from VARCHAR(20),
    doc_date DATE,
    doc_person VARCHAR(20),
    doc_person_oper VARCHAR(20),
    doc_price_all numeric,
    doc_date_creation TIMESTAMP,
    CONSTRAINT document_ext_in_pkey PRIMARY KEY (doc_ext_in_id)
);

CREATE TABLE IF NOT EXISTS doc_int (
    doc_int_id   SERIAL,
    doc_name VARCHAR(20),
    person_from VARCHAR(20),
    person_to VARCHAR(20),
    doc_person_oper VARCHAR(20),
    doc_int_date_cr TIMESTAMP,
    CONSTRAINT doc_int_pkey PRIMARY KEY (doc_int_id)
);
