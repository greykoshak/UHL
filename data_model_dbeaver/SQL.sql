SELECT * FROM ln_equipment le 

SELECT * FROM ln_equipment le, dr_equipment_type det, dr_skate ds
where le.dr_eq_type_id = det.dr_equipment_type_id 
and le.dr_eq_id = ds.dr_eq_id 
and det.dr_equipment_type_id =ds.dr_eq_type_id
union all 
SELECT * FROM ln_equipment le, dr_equipment_type det, dr_stick ds2 
where le.dr_eq_type_id = det.dr_equipment_type_id 
and le.dr_eq_id = ds2.dr_eq_id 
and det.dr_equipment_type_id =ds2.dr_eq_type_id
 
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

select * from mv_equipment

select e.equipment_id, me.type_name, me.equip_name, ds.state_name, dp.person_name 
from equipment e, mv_equipment me, dr_state ds, dr_person dp 
where e.ln_equipment_id = me.ln_equipment_id 
and e.dr_state_id = ds.dr_state_id 
and e.dr_person_id = dp.dr_person_id 
union all 
select e.equipment_id, me.type_name, me.equip_name, ds.state_name, ds.state_name 
from equipment e, mv_equipment me, dr_state ds 
where e.ln_equipment_id = me.ln_equipment_id 
and e.dr_state_id = ds.dr_state_id 
and ds.dr_state_id = 1
order by 1