
CREATE TABLE dr_equipment_type (
    dr_equipment_type_ID   SERIAL,
    type_name VARCHAR(50),
    CONSTRAINT dr_equipment_type_pkey PRIMARY KEY (dr_equipment_type_ID)
);

CREATE TABLE dr_skate (
    dr_eq_id   SERIAL,
    dr_eq_type_ID   SERIAL,
    skate_name VARCHAR(50),
    CONSTRAINT dr_skate_pkey PRIMARY KEY (dr_eq_id)
);

CREATE TABLE dr_stick (
    dr_eq_id   SERIAL,
    dr_eq_type_ID   SERIAL,
    stick_name VARCHAR(50),
    CONSTRAINT dr_stick_pkey PRIMARY KEY (dr_eq_id)
);

CREATE TABLE dr_glove (
    dr_eq_id   SERIAL,
    dr_eq_type_ID   SERIAL,
    glove_name VARCHAR(50),
    CONSTRAINT dr_glove_pkey PRIMARY KEY (dr_eq_id)
);

CREATE TABLE dr_state (
    dr_state_ID   SERIAL,
    state_name VARCHAR(50),
    CONSTRAINT dr_state_pkey PRIMARY KEY (dr_state_ID)
);

CREATE TABLE dr_person (
    dr_person_ID   SERIAL,
    first_name  VARCHAR(20),
    surname VARCHAR(20),
    last_name       VARCHAR(20),
    passport_info   VARCHAR(30),
    address VARCHAR(30),
    phone   VARCHAR(20),
    birthday    DATE,
    sex VARCHAR(1),
    person_name VARCHAR(50),
    CONSTRAINT dr_person_pkey PRIMARY KEY (dr_person_ID)
);

CREATE TABLE ln_equipment (
    ln_equipment_id   SERIAL,
    dr_eq_id SERIAL,
    dr_eq_type_id SERIAL,
    CONSTRAINT ln_equipment_pkey PRIMARY KEY (ln_equipment_id)
);

CREATE TABLE equipment (
    equipment_id   SERIAL,
    ln_equipment_id SERIAL,
    dr_state_id SERIAL,
    dr_person_id SERIAL,
    -- eq_price,
    CONSTRAINT equipment_pkey PRIMARY KEY (equipment_id)
    -- CONSTRAINT fk_dr_ln_equipment FOREIGN KEY(ln_equipment_id) REFERENCES ln_equipment(ln_equipment_ID)
);

-- CREATE TABLE document_in (
--     document_in_id   SERIAL,
--     doc_name VARCHAR(20),
--     doc_from VARCHAR(20),
--     doc_date DATA,
--     doc_person VARCHAR(20),
--     doc_price_all VARCHAR(20),
--     CONSTRAINT document_in_pkey PRIMARY KEY (document_in_id)
--     -- CONSTRAINT fk_dr_ln_document_in FOREIGN KEY(ln_document_in_id) REFERENCES ln_document_in(ln_document_in_ID)
-- );


INSERT INTO dr_equipment_type (dr_equipment_type_id, type_name) VALUES(1, 'Stick');
INSERT INTO dr_equipment_type (dr_equipment_type_id, type_name) VALUES(2, 'Skate');
INSERT INTO dr_equipment_type (dr_equipment_type_id, type_name) VALUES(3, 'Gloves');

INSERT INTO dr_stick (dr_eq_id, stick_name, dr_eq_type_ID) VALUES(1, 'BAUER VAPOR X4.0 GRIP', 1);
INSERT INTO dr_stick (dr_eq_id, stick_name, dr_eq_type_ID) VALUES(2, 'BAUER VAPOR X2.0 GRIP', 1);

INSERT INTO dr_skate (dr_eq_id, skate_name, dr_eq_type_ID) VALUES(1, 'Bauer Vapor 3X Pro Sr', 2);
INSERT INTO dr_skate (dr_eq_id, skate_name, dr_eq_type_ID) VALUES(2, 'Bauer Supreme M5 Pro Sr', 2);

INSERT INTO dr_glove (dr_eq_id, glove_name, dr_eq_type_ID) VALUES(1, 'Bauer Vapor Hyperlite Sr', 3);
INSERT INTO dr_glove (dr_eq_id, glove_name, dr_eq_type_ID) VALUES(2, 'Bauer Supreme Mach Sr', 3);

INSERT INTO dr_state (dr_state_id, state_name) VALUES(1, 'stock');
INSERT INTO dr_state (dr_state_id, state_name) VALUES(2, 'at the player');

INSERT INTO public.dr_person (dr_person_id, first_name, surname, last_name, passport_info, address, phone, birthday, sex, person_name) VALUES(1, 'Павло', NULL, 'Таран', NULL, NULL, NULL, NULL, 'M', 'Павло Таран');
INSERT INTO public.dr_person (dr_person_id, first_name, surname, last_name, passport_info, address, phone, birthday, sex, person_name) VALUES(2, 'Данило', NULL, 'Бабчук', NULL, NULL, NULL, NULL, 'M', 'Данило Бабчук');
INSERT INTO public.dr_person (dr_person_id, first_name, surname, last_name, passport_info, address, phone, birthday, sex, person_name) VALUES(3, 'Микола', '', 'Дворник', NULL, NULL, NULL, NULL, 'M', 'Микола Дворник');

INSERT INTO ln_equipment (ln_equipment_id, dr_eq_type_id, dr_eq_id) VALUES(1, 1, 1);
INSERT INTO ln_equipment (ln_equipment_id, dr_eq_type_id, dr_eq_id) VALUES(2, 1, 2);
INSERT INTO ln_equipment (ln_equipment_id, dr_eq_type_id, dr_eq_id) VALUES(3, 2, 1);
INSERT INTO ln_equipment (ln_equipment_id, dr_eq_type_id, dr_eq_id) VALUES(4, 2, 2);
INSERT INTO ln_equipment (ln_equipment_id, dr_eq_type_id, dr_eq_id) VALUES(5, 3, 1);
INSERT INTO ln_equipment (ln_equipment_id, dr_eq_type_id, dr_eq_id) VALUES(6, 3, 2);

INSERT INTO equipment (equipment_id, ln_equipment_id, dr_state_id, dr_person_id) VALUES(1, 1, 1, 0);
INSERT INTO equipment (equipment_id, ln_equipment_id, dr_state_id, dr_person_id) VALUES(2, 2, 2, 2);
INSERT INTO equipment (equipment_id, ln_equipment_id, dr_state_id, dr_person_id) VALUES(3, 3, 2, 1);
INSERT INTO equipment (equipment_id, ln_equipment_id, dr_state_id, dr_person_id) VALUES(4, 4, 1, 0);
INSERT INTO equipment (equipment_id, ln_equipment_id, dr_state_id, dr_person_id) VALUES(5, 5, 2, 2);
INSERT INTO equipment (equipment_id, ln_equipment_id, dr_state_id, dr_person_id) VALUES(6, 6, 2, 3);

CREATE MATERIALIZED VIEW IF NOT EXISTS mv_equipment
AS
SELECT le.ln_equipment_id as ln_equipment_id, det.type_name as type_name, ds.skate_name as equip_name 
FROM ln_equipment le, dr_equipment_type det, dr_skate ds
where le.dr_eq_type_id = det.dr_equipment_type_id 
and le.dr_eq_id = ds.dr_eq_id 
and det.dr_equipment_type_id =ds.dr_eq_type_id
union all 
SELECT le.ln_equipment_id as ln_equipment_id, det.type_name as type_name, ds2.stick_name  as equip_name 
FROM ln_equipment le, dr_equipment_type det, dr_stick ds2
where le.dr_eq_type_id = det.dr_equipment_type_id 
and le.dr_eq_id = ds2.dr_eq_id 
and det.dr_equipment_type_id =ds2.dr_eq_type_id
union all 
SELECT le.ln_equipment_id as ln_equipment_id, det.type_name as type_name, dg.glove_name  as equip_name 
FROM ln_equipment le, dr_equipment_type det, dr_glove dg
where le.dr_eq_type_id = det.dr_equipment_type_id 
and le.dr_eq_id = dg.dr_eq_id 
and det.dr_equipment_type_id =dg.dr_eq_type_id
order by ln_equipment_id
WITH DATA;