<?php

//require_once('custom/modules/VHT_VHPATIENT/VHT_VHPATIENT.php');
//require_once('include/MVC/View/views/view.list.php');

class VHT_VHPATIENTListView extends VHT_VHPATIENT{
	
	//function foo(){
    //     $xyz = 1;
    // }
	
	function create_new_list_query($order_by, $where,$filter=array(),$params=array(), $show_deleted = 0,$join_type='', $return_array = false,$parentbean=null, $singleSelect = false)
	{
		
		//$GLOBALS['log']->fatal('in query');
		//$where = ' 1 = 1 ';
		return $ert =  parent::create_new_list_query($order_by, $where, $filter, $params, $show_deleted, $join_type, $return_array, $parentbean, $singleSelect);
		//$GLOBALS['log']->fatal($ert);
		//$ret_array['select'] =  'SELECT  VHT_VHPATIENT.id id, VHT_VHPATIENT.name name, VHT_VHPATIENT.description  excellecy, VHT_VHPATIENT.description testfield, VHT_VHPATIENT.description assigned_user_name ';
		//$ret_array['from'] = ' FROM VHT_VHPATIENT ';
        //$ret_array['where'] = ' WHERE 1 = 1';
		//$ret_Array['order_by'] = ' ORDER BY VHT_VHPATIENT.name DESC ';
		//return $ret_array;

/*
SELECT date_entered, date_modified, next_refill, risklvl_c FROM ( SELECT  ENC_ID, next_rx_refill_due_c next_refill, risklvl_c FROM ( SELECT reg_patient_reg_encounterreg_patient_ida PAT_ID, reg_patient_reg_encounterreg_encounter_idb ENC_ID FROM reg_patient_reg_encounter_c WHERE reg_patient_reg_encounterreg_patient_ida = '$id_pat') PAT_ENC_REL, reg_encounter_cstm WHERE reg_encounter_cstm.ID_C = PAT_ENC_REL.ENC_ID ) PAT_ENC_REL1, reg_encounter WHERE PAT_ENC_REL1.ENC_ID = reg_encounter.id AND next_refill IS NOT NULL AND DATE_ENTERED =  (SELECT MAX(DATE_ENTERED) FROM (SELECT reg_patient_reg_encounterreg_encounter_idb ENC_ID FROM reg_patient_reg_encounter_c WHERE reg_patient_reg_encounterreg_patient_ida = '$id_pat') inner_tbl1 , reg_encounter WHERE inner_tbl1.ENC_ID = reg_encounter.id) */

	}
}

?>

