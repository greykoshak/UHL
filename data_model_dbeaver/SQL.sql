
SELECT e.equipment_id as equipment_id, det.type_name as type_name, ds.skate_name as equip_name 
FROM equipment e, dr_equipment_type det, dr_skate ds
where e.dr_eq_type_id = det.dr_equipment_type_id 
and e.dr_eq_id = ds.dr_eq_id 
and det.dr_equipment_type_id =ds.dr_eq_type_id
union all 
SELECT e.equipment_id as equipment_id, det.type_name as type_name, ds2.stick_name  as equip_name 
FROM equipment e, dr_equipment_type det, dr_stick ds2
where e.dr_eq_type_id = det.dr_equipment_type_id 
and e.dr_eq_id = ds2.dr_eq_id 
and det.dr_equipment_type_id =ds2.dr_eq_type_id
union all 
SELECT e.equipment_id as equipment_id, det.type_name as type_name, dg.glove_name  as equip_name 
FROM equipment e, dr_equipment_type det, dr_glove dg
where e.dr_eq_type_id = det.dr_equipment_type_id 
and e.dr_eq_id = dg.dr_eq_id 
and det.dr_equipment_type_id =dg.dr_eq_type_id
order by equipment_id

CREATE MATERIALIZED VIEW IF NOT EXISTS mv_equipment
AS
SELECT e.equipment_id as equipment_id, det.type_name as type_name, ds.skate_name as equip_name 
FROM equipment e, dr_equipment_type det, dr_skate ds
where e.dr_eq_type_id = det.dr_equipment_type_id 
and e.dr_eq_id = ds.dr_eq_id 
and det.dr_equipment_type_id =ds.dr_eq_type_id
union all 
SELECT e.equipment_id as equipment_id, det.type_name as type_name, ds2.stick_name  as equip_name 
FROM equipment e, dr_equipment_type det, dr_stick ds2
where e.dr_eq_type_id = det.dr_equipment_type_id 
and e.dr_eq_id = ds2.dr_eq_id 
and det.dr_equipment_type_id =ds2.dr_eq_type_id
union all 
SELECT e.equipment_id as equipment_id, det.type_name as type_name, dg.glove_name  as equip_name 
FROM equipment e, dr_equipment_type det, dr_glove dg
where e.dr_eq_type_id = det.dr_equipment_type_id 
and e.dr_eq_id = dg.dr_eq_id 
and det.dr_equipment_type_id =dg.dr_eq_type_id
order by equipment_id
WITH DATA;

select * from mv_equipment

select e.equipment_id, me.type_name, me.equip_name, ds.state_name, dp.person_name, e.eq_price, e.eq_date_creat
from equipment e, mv_equipment me, dr_state ds, dr_person dp 
where e.equipment_id  = me.equipment_id  
and e.dr_state_id = ds.dr_state_id 
and e.dr_person_id = dp.dr_person_id 
union all 
select e.equipment_id, me.type_name, me.equip_name, ds.state_name, 'Stock', e.eq_price, e.eq_date_creat
from equipment e, mv_equipment me, dr_state ds 
where e.equipment_id = me.equipment_id 
and e.dr_state_id = ds.dr_state_id 
and ds.dr_state_id = 1
order by 1

select e.eq_date_creat , to_char(e.eq_date_creat, 'yyyy-mm-dd hh24:mi:ss')
from equipment e 