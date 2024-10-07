const db = require("../db/db");

exports.findDashboard = async () => {
  const res = await db.ExecDataNoIndex(
    `select 
		ROUND((select count(ifnull(id,0)) as all_farmer from tbl_farmer),2) as all_farmer,
		ROUND((select sum(ifnull(plot_area,0)) as all_area from tbl_gis_plot where gis_sta = "Y"),2) as all_area,
		ROUND((select sum(ifnull(plot_area,0)) as all_area from tbl_gis_plot where gis_sta = "Y" and cane_type_id = 1),2) as plant_area,
		ROUND((select sum(ifnull(plot_area,0)) as all_area from tbl_gis_plot where gis_sta = "Y" and cane_type_id <> 1),2) as ratoon_area`
  );

  return res;
};

exports.findReportAllArea = async () => {
  const res = await db.ExecDataNoIndex(
    `select f.id,f.quota_id,CONCAT(f.farmer_pre, ' ', f.farmer_name, ' ', f.farmer_lname) as full_name ,  ifnull(gp1.plot_area,0) as plot_area_1,  ifnull(gp2.plot_area,0) as plot_area_2
		from tbl_farmer f
		left join (select quota_id ,ROUND(sum(plot_area),2) as plot_area
						from tbl_gis_plot gp
						left join tbl_cane_type ct
						on gp.cane_type_id = ct.id
						where cane_type_id = 1 and quota_id <> 0 and gis_sta='Y'
						group by quota_id
					) gp1
		on gp1.quota_id = f.id
		left join (select quota_id ,ROUND(sum(plot_area),2) as plot_area
						from tbl_gis_plot gp
						left join tbl_cane_type ct
						on gp.cane_type_id = ct.id
						where cane_type_id <> 1 and quota_id <> 0 and gis_sta='Y'
						group by quota_id
					) gp2
		on gp2.quota_id = f.id
		group by f.quota_id`
  );

  return res;
};

exports.findReportPlotDetail = async (id) => {
  const res = await db.ExecDataNoIndex(
    `SELECT gp.id,f.quota_id ,CONCAT(f.farmer_pre, ' ', f.farmer_name, ' ', f.farmer_lname) as full_name ,plot_no , ct.cane_type_name , plot_area 
			FROM tbl_gis_plot gp
			left join tbl_farmer f
			on gp.quota_id=f.id
			left join tbl_cane_type ct
			on gp.cane_type_id=ct.id
			WHERE gp.quota_id = '${id}' and gis_sta = 'Y'`
  );

  return res;
};

exports.insertPlot = async (data) => {
  await db.ExecDataNoIndex(
    `insert into tbl_gis_plot (plot_key, plot_no,farmer_id, plot_polygon, plot_geometry, plot_x, plot_y, plot_address,
		plot_area, cropyear_id, cane_type_id, cane_owner_id, land_rent_space_id, land_document_license_type_id,
		plot_deed_no, cane_varieties_id, plot_waypoint, plot_cost_per_rai, plot_cost_avg, quota_id,
		user_created, user_updated,
		image)
		values ('${data.plot_key}', '${data.plot_no}', '${data.farmer_id}', '${data.plot_polygon}',
		ST_GeomFromText('${data.plot_geometry}'), '${data.plot_x}', '${data.plot_y}', '${data.plot_address}',
			'${data.plot_area}', '${data.cropyear_id}', '${data.cane_type_id}', '${data.cane_owner_id}', '${data.land_rent_space_id}',
			'${data.land_document_license_type_id}', '${data.plot_deed_no}', '${data.cane_varieties_id}', '${data.plot_waypoint}', '${data.plot_cost_per_rai}',
			'${data.plot_cost_avg}', '${data.quota_id}', '${data.user_created}', '${data.user_updated}', 
			'${data.image}')`
  );
};

exports.findAllMapByExtend = async (maxLon, minLon, maxLat, minLat) => {
  let q_index = [maxLon, minLon, maxLat, minLat];

  const res = await db.ExecDataByIndex(
    `select plot_key,plot_no,REPLACE(plot_polygon, "POLYGON ((", "POLYGON((") as plot_polygon ,plot_address,plot_area,
			cropyear_id,ccy.cane_cropyear_name as cane_cropyear_name,
			cane_type_id,ct.cane_type_name as cane_type_name,
			cane_owner_id,co.cane_owner_name as cane_owner_name,
			land_rent_space_id,lrs.land_rent_space_name as land_rent_space_name,
			land_document_license_type_id,ldlt.ldlt_name as ldlt_name,
			plot_deed_no,
			cane_varieties_id,cv.varieties_name as varieties_name,
			plot_waypoint,
			plot_cost_per_rai,
			plot_cost_avg
			from tbl_gis_plot gp
			left join tbl_cane_cropyear ccy
			on gp.cropyear_id=ccy.id
			left join tbl_cane_type ct
			on gp.cane_type_id=ct.id
			left join tbl_cane_owner co
			on gp.cane_owner_id=co.id
			left join tbl_land_rent_space lrs
			on gp.land_rent_space_id=lrs.id
			left join tbl_land_document_license_type ldlt
			on gp.land_document_license_type_id=ldlt.id
			left join tbl_cane_varieties cv
			on gp.cane_varieties_id=cv.id
			where plot_x <= ? and plot_x >= ?
			and plot_y <= ? and plot_y >= ? and gis_sta = "Y"`,
    q_index
  );

  return res;
};

// map_event maxLat: 17.20231704652261
// Map.vue?89fd:223 map_event maxLon: 101.83373585343361
// Map.vue?89fd:224 map_event minLat: 17.177226047629112
// Map.vue?89fd:225 map_event minLon: 101.80279389023781
