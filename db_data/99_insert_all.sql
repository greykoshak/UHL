INSERT INTO dr_equip_type (id, type_name) VALUES(nextval('dr_equip_type_id_seq'::regclass), 'Stick');
INSERT INTO dr_equip_type (id, type_name) VALUES(nextval('dr_equip_type_id_seq'::regclass), 'Skate');
INSERT INTO dr_equip_type (id, type_name) VALUES(nextval('dr_equip_type_id_seq'::regclass), 'Pant');

INSERT INTO dr_state (ID, state_name) VALUES(nextval('dr_state_id_seq'::regclass), 'stock');
INSERT INTO dr_state (ID, state_name) VALUES(nextval('dr_state_id_seq'::regclass), 'player');

INSERT INTO doc_ext_in (id, doc_name, doc_from, doc_date, doc_person, doc_person_oper, doc_price_all, doc_date_creation) VALUES(nextval('doc_ext_in_id_seq'::regclass), 'Invoice 4', 'Ice shop', '2023-08-31', '17', '17', 650, CURRENT_TIMESTAMP);
INSERT INTO doc_ext_in (id, doc_name, doc_from, doc_date, doc_person, doc_person_oper, doc_price_all, doc_date_creation) VALUES(nextval('doc_ext_in_id_seq'::regclass), 'Invoice 12', 'Ice shop', '2023-07-08', '17', '17', 1300, CURRENT_TIMESTAMP);
INSERT INTO doc_ext_in (id, doc_name, doc_from, doc_date, doc_person, doc_person_oper, doc_price_all, doc_date_creation) VALUES(nextval('doc_ext_in_id_seq'::regclass), 'Invoice 32', 'Ice shop', '2023-07-02', '17', '17', 1900, CURRENT_TIMESTAMP);

INSERT INTO equip (id, eq_id, eq_type_id, state_id, person_id, doc_ext_in_id, doc_int_id, eq_price, eq_person_oper, eq_date_creat) VALUES(nextval('equip_id_seq'::regclass), 9, 2, 2, 13, 1, 1, 650, 17, CURRENT_TIMESTAMP);
INSERT INTO equip (id, eq_id, eq_type_id, state_id, person_id, doc_ext_in_id, doc_int_id, eq_price, eq_person_oper, eq_date_creat) VALUES(nextval('equip_id_seq'::regclass), 11, 2, 2, 29, 1, 2, 650, 17, CURRENT_TIMESTAMP);
INSERT INTO equip (id, eq_id, eq_type_id, state_id, person_id, doc_ext_in_id, doc_int_id, eq_price, eq_person_oper, eq_date_creat) VALUES(nextval('equip_id_seq'::regclass), 3, 3, 2, 13, 2, 3, 150, 17, CURRENT_TIMESTAMP);
INSERT INTO equip (id, eq_id, eq_type_id, state_id, person_id, doc_ext_in_id, doc_int_id, eq_price, eq_person_oper, eq_date_creat) VALUES(nextval('equip_id_seq'::regclass), 5, 3, 2, 29, 2, 4, 115, 17, CURRENT_TIMESTAMP);
INSERT INTO equip (id, eq_id, eq_type_id, state_id, person_id, doc_ext_in_id, doc_int_id, eq_price, eq_person_oper, eq_date_creat) VALUES(nextval('equip_id_seq'::regclass), 38, 1, 1, 17, 3, 0, 195, 17, CURRENT_TIMESTAMP);
INSERT INTO equip (id, eq_id, eq_type_id, state_id, person_id, doc_ext_in_id, doc_int_id, eq_price, eq_person_oper, eq_date_creat) VALUES(nextval('equip_id_seq'::regclass), 38, 1, 1, 17, 3, 0, 195, 17, CURRENT_TIMESTAMP);
INSERT INTO equip (id, eq_id, eq_type_id, state_id, person_id, doc_ext_in_id, doc_int_id, eq_price, eq_person_oper, eq_date_creat) VALUES(nextval('equip_id_seq'::regclass), 38, 1, 1, 17, 3, 0, 195, 17, CURRENT_TIMESTAMP);
INSERT INTO equip (id, eq_id, eq_type_id, state_id, person_id, doc_ext_in_id, doc_int_id, eq_price, eq_person_oper, eq_date_creat) VALUES(nextval('equip_id_seq'::regclass), 38, 1, 1, 17, 3, 0, 195, 17, CURRENT_TIMESTAMP);
INSERT INTO equip (id, eq_id, eq_type_id, state_id, person_id, doc_ext_in_id, doc_int_id, eq_price, eq_person_oper, eq_date_creat) VALUES(nextval('equip_id_seq'::regclass), 30, 1, 1, 17, 3, 0, 190, 17, CURRENT_TIMESTAMP);
INSERT INTO equip (id, eq_id, eq_type_id, state_id, person_id, doc_ext_in_id, doc_int_id, eq_price, eq_person_oper, eq_date_creat) VALUES(nextval('equip_id_seq'::regclass), 30, 1, 1, 17, 3, 0, 190, 17, CURRENT_TIMESTAMP);
INSERT INTO equip (id, eq_id, eq_type_id, state_id, person_id, doc_ext_in_id, doc_int_id, eq_price, eq_person_oper, eq_date_creat) VALUES(nextval('equip_id_seq'::regclass), 29, 1, 1, 17, 3, 0, 190, 17, CURRENT_TIMESTAMP);
INSERT INTO equip (id, eq_id, eq_type_id, state_id, person_id, doc_ext_in_id, doc_int_id, eq_price, eq_person_oper, eq_date_creat) VALUES(nextval('equip_id_seq'::regclass), 29, 1, 1, 17, 3, 0, 190, 17, CURRENT_TIMESTAMP);
INSERT INTO equip (id, eq_id, eq_type_id, state_id, person_id, doc_ext_in_id, doc_int_id, eq_price, eq_person_oper, eq_date_creat) VALUES(nextval('equip_id_seq'::regclass), 31, 1, 1, 17, 3, 0, 190, 17, CURRENT_TIMESTAMP);
INSERT INTO equip (id, eq_id, eq_type_id, state_id, person_id, doc_ext_in_id, doc_int_id, eq_price, eq_person_oper, eq_date_creat) VALUES(nextval('equip_id_seq'::regclass), 31, 1, 1, 17, 3, 0, 190, 17, CURRENT_TIMESTAMP);
INSERT INTO equip (id, eq_id, eq_type_id, state_id, person_id, doc_ext_in_id, doc_int_id, eq_price, eq_person_oper, eq_date_creat) VALUES(nextval('equip_id_seq'::regclass), 31, 1, 1, 17, 3, 0, 190, 17, CURRENT_TIMESTAMP);
INSERT INTO equip (id, eq_id, eq_type_id, state_id, person_id, doc_ext_in_id, doc_int_id, eq_price, eq_person_oper, eq_date_creat) VALUES(nextval('equip_id_seq'::regclass), 31, 1, 1, 17, 3, 0, 190, 17, CURRENT_TIMESTAMP);
INSERT INTO equip (id, eq_id, eq_type_id, state_id, person_id, doc_ext_in_id, doc_int_id, eq_price, eq_person_oper, eq_date_creat) VALUES(nextval('equip_id_seq'::regclass), 31, 1, 1, 17, 3, 0, 190, 17, CURRENT_TIMESTAMP);
INSERT INTO equip (id, eq_id, eq_type_id, state_id, person_id, doc_ext_in_id, doc_int_id, eq_price, eq_person_oper, eq_date_creat) VALUES(nextval('equip_id_seq'::regclass), 31, 1, 1, 17, 3, 0, 190, 17, CURRENT_TIMESTAMP);


CREATE MATERIALIZED VIEW IF NOT EXISTS mv_equip as
SELECT e.id as equip_id, det.type_name as type_name, ds.title as equip_name 
FROM equip e, dr_equip_type det, dr_skate ds
where e.eq_type_id = det.id 
and e.eq_id  = ds.id 
and det.id =ds.eq_type_ID
union all 
SELECT e.id as equip_id, det.type_name as type_name, ds2.stick_name  as equip_name 
FROM equip e, dr_equip_type det, dr_stick ds2
where e.eq_type_id = det.id 
and e.eq_id = ds2.id 
and det.id = ds2.eq_type_ID
union all 
SELECT e.id as equip_id, det.type_name as type_name, dg.pant_name  as equip_name 
FROM equip e, dr_equip_type det, dr_pant dg
where e.eq_type_id = det.id 
and e.eq_id = dg.id 
and det.id = dg.eq_type_ID
order by equip_id
WITH DATA;