INSERT INTO dr_equip_type (dr_equip_type_id, type_name) VALUES(1, 'Stick');
INSERT INTO dr_equip_type (dr_equip_type_id, type_name) VALUES(2, 'Skate');
INSERT INTO dr_equip_type (dr_equip_type_id, type_name) VALUES(3, 'Pant');

-- INSERT INTO public.dr_stick (dr_eq_id, dr_eq_type_id, stick_name, hand, flex, band) VALUES(1, 1, 'BAUER VAPOR X4.0 GRIP', 'L', '98', '65');
-- INSERT INTO public.dr_stick (dr_eq_id, dr_eq_type_id, stick_name, hand, flex, band) VALUES(2, 1, 'BAUER VAPOR X2.0 GRIP', 'R', '76', '80');

-- INSERT INTO public.dr_skate (dr_eq_id, dr_eq_type_id, title, sk_size, sk_fit) VALUES(1, 2, 'Bauer Vapor 3X Pro Sr', '8', 'Fit 1');
-- INSERT INTO public.dr_skate (dr_eq_id, dr_eq_type_id, title, sk_size, sk_fit) VALUES(2, 2, 'Bauer Supreme M5 Pro Sr', '9', 'Fit 3');

-- INSERT INTO dr_glove (dr_eq_id, glove_name, dr_eq_type_ID) VALUES(1, 'Bauer Vapor Hyperlite Sr', 3);
-- INSERT INTO dr_glove (dr_eq_id, glove_name, dr_eq_type_ID) VALUES(2, 'Bauer Supreme Mach Sr', 3);

INSERT INTO dr_state (dr_state_id, state_name) VALUES(1, 'stock');
INSERT INTO dr_state (dr_state_id, state_name) VALUES(2, 'player');

-- INSERT INTO dr_person (dr_person_id, first_name, surname, last_name, passport_info, address, phone, birthday, sex, person_name) VALUES(1, 'Павло', NULL, 'Таран', NULL, NULL, NULL, NULL, 'M', 'Павло Таран');
-- INSERT INTO dr_person (dr_person_id, first_name, surname, last_name, passport_info, address, phone, birthday, sex, person_name) VALUES(2, 'Данило', NULL, 'Бабчук', NULL, NULL, NULL, NULL, 'M', 'Данило Бабчук');
-- INSERT INTO dr_person (dr_person_id, first_name, surname, last_name, passport_info, address, phone, birthday, sex, person_name) VALUES(3, 'Микола', '', 'Дворник', NULL, NULL, NULL, NULL, 'M', 'Микола Дворник');

-- INSERT INTO public.dr_person (dr_person_id, first_name, surname, last_name, passport_info, address, phone, birthday, sex, person_name) VALUES(1, 'Павло', NULL, 'Таран', NULL, NULL, NULL, NULL, 'M', 'Павло Таран');
-- INSERT INTO public.dr_person (dr_person_id, first_name, surname, last_name, passport_info, address, phone, birthday, sex, person_name) VALUES(2, 'Данило', NULL, 'Бабчук', NULL, NULL, NULL, NULL, 'M', 'Данило Бабчук');
-- INSERT INTO public.dr_person (dr_person_id, first_name, surname, last_name, passport_info, address, phone, birthday, sex, person_name) VALUES(3, 'Микола', '', 'Дворник', NULL, NULL, NULL, NULL, 'M', 'Микола Дворник');
-- INSERT INTO public.dr_person (dr_person_id, first_name, surname, last_name, passport_info, address, phone, birthday, sex, person_name) VALUES(0, 'Админ', NULL, NULL, NULL, NULL, NULL, NULL, 'M', 'Админ');

INSERT INTO document_ext_in (doc_ext_in_id, doc_name, doc_from, doc_date, doc_person, doc_person_oper, doc_price_all, doc_date_creation) VALUES(1, 'Invoice #12', 'Shop', CURRENT_TIMESTAMP, 'Admin2', 'Admin1', 13900, CURRENT_TIMESTAMP);
INSERT INTO document_ext_in (doc_ext_in_id, doc_name, doc_from, doc_date, doc_person, doc_person_oper, doc_price_all, doc_date_creation) VALUES(2, 'Invoice 15', 'Shop', CURRENT_TIMESTAMP, 'Admin2', 'Admin1', 25800, CURRENT_TIMESTAMP);
INSERT INTO document_ext_in (doc_ext_in_id, doc_name, doc_from, doc_date, doc_person, doc_person_oper, doc_price_all, doc_date_creation) VALUES(3, 'Invoice 221', 'Internet shop', CURRENT_TIMESTAMP, 'Admin2', 'Admin1', 6700, CURRENT_TIMESTAMP);

INSERT INTO equipment (equipment_id, dr_eq_id, dr_eq_type_id, dr_state_id, dr_person_id, doc_ext_in_id, eq_price, eq_person_oper, eq_date_creat) VALUES(1, 1, 1, 1, 0, 1, 6700, 'Admin1', CURRENT_TIMESTAMP);
INSERT INTO equipment (equipment_id, dr_eq_id, dr_eq_type_id, dr_state_id, dr_person_id, doc_ext_in_id, eq_price, eq_person_oper, eq_date_creat) VALUES(2, 2, 1, 2, 2, 2, 7200, 'Admin1', CURRENT_TIMESTAMP);
INSERT INTO equipment (equipment_id, dr_eq_id, dr_eq_type_id, dr_state_id, dr_person_id, doc_ext_in_id, eq_price, eq_person_oper, eq_date_creat) VALUES(3, 1, 2, 2, 1, 3, 12300, 'Admin1', CURRENT_TIMESTAMP);
INSERT INTO equipment (equipment_id, dr_eq_id, dr_eq_type_id, dr_state_id, dr_person_id, doc_ext_in_id, eq_price, eq_person_oper, eq_date_creat) VALUES(4, 2, 2, 1, 0, 4, 13500, 'Admin1', CURRENT_TIMESTAMP);
INSERT INTO equipment (equipment_id, dr_eq_id, dr_eq_type_id, dr_state_id, dr_person_id, doc_ext_in_id, eq_price, eq_person_oper, eq_date_creat) VALUES(5, 1, 3, 2, 2, 5, 3500, 'Admin1', CURRENT_TIMESTAMP);
INSERT INTO equipment (equipment_id, dr_eq_id, dr_eq_type_id, dr_state_id, dr_person_id, doc_ext_in_id, eq_price, eq_person_oper, eq_date_creat) VALUES(6, 2, 3, 2, 3, 6, 3200, 'Admin1', CURRENT_TIMESTAMP);

INSERT INTO public.doc_int (doc_int_id, doc_name, person_from, person_to, doc_person_oper, doc_int_date_cr) VALUES(1, 'OUT', '0', '2', '0', CURRENT_TIMESTAMP);
INSERT INTO public.doc_int (doc_int_id, doc_name, person_from, person_to, doc_person_oper, doc_int_date_cr) VALUES(2, 'OUT', '0', '1', '0', CURRENT_TIMESTAMP);
INSERT INTO public.doc_int (doc_int_id, doc_name, person_from, person_to, doc_person_oper, doc_int_date_cr) VALUES(3, 'OUT', '0', '2', '0', CURRENT_TIMESTAMP);
INSERT INTO public.doc_int (doc_int_id, doc_name, person_from, person_to, doc_person_oper, doc_int_date_cr) VALUES(4, 'OUT', '0', '3', '0', CURRENT_TIMESTAMP);

CREATE MATERIALIZED VIEW IF NOT EXISTS mv_equipment
AS
SELECT e.equipment_id as equipment_id, det.type_name as type_name, ds.title as equip_name 
FROM equipment e, dr_equip_type det, dr_skate ds
where e.dr_eq_type_id = det.dr_equip_type_id 
and e.dr_eq_id = ds.dr_eq_id 
and det.dr_equip_type_id =ds.dr_eq_type_id
union all 
SELECT e.equipment_id as equipment_id, det.type_name as type_name, ds2.stick_name  as equip_name 
FROM equipment e, dr_equip_type det, dr_stick ds2
where e.dr_eq_type_id = det.dr_equip_type_id 
and e.dr_eq_id = ds2.dr_eq_id 
and det.dr_equip_type_id =ds2.dr_eq_type_id
union all 
SELECT e.equipment_id as equipment_id, det.type_name as type_name, dg.pant_name  as equip_name 
FROM equipment e, dr_equip_type det, dr_pant dg
where e.dr_eq_type_id = det.dr_equip_type_id 
and e.dr_eq_id = dg.dr_eq_id 
and det.dr_equip_type_id =dg.dr_eq_type_id
order by equipment_id
WITH DATA;