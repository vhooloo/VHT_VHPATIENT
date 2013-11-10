<?PHP

require_once('include/MVC/View/views/view.list.php');
		
		
class VHT_VHPATIENTViewTopList extends ViewList {
 
	function VHT_VHPATIENTViewTopList(){
		parent::ViewList();
	}
	
	function listViewProcess(){
		//$this->processSearchForm();
		//$this->searchColumns = $this->searchColumns;
		//if(!$this->headers)
		//return;
		//if(empty($_REQUEST['search_form_only']) || $_REQUEST['search_form_only'] == false){ 
		    //$this->params['custom_where'] = ' AND VHT_VHPATIENT.NAME <> "PAT2" ';

			$this->lv->setup($this->seed, 'custom/modules/VHT_VHPATIENT/tpls/ListViewVHT_VHPATIENT.tpl', $this->where, $this->params);
			
			//var_dump ($this->where);
			
			//var_dump($_REQUEST);
			
			//$this->params['orderBy'] = 'VHT_VHPATIENT.NAME DESC';
			//var_dump( $this->params);
			//$savedSearchName = empty($_REQUEST['saved_search_select_name']) ? '' : (' - ' . $_REQUEST['saved_search_select_name']);
			//echo get_form_header($GLOBALS['mod_strings']['LBL_LIST_FORM_TITLE'] . $savedSearchName, '', false);
			//echo $this->lv->display();
		//}
		//parent::listViewProcess();
	}
	
	function listViewPrepare() { 
	  
	  //$_REQUEST['orderBy'] = 'reg_patient.last_name DESC'; 
	  //$GLOBALS['log']->fatal('in order by'); 

	  parent::listViewPrepare(); 
	}  
	
	
	 function display(){
	 			//$this->lv->setup($this->seed, 'custom/modules/VHT_VHPATIENT/tpls/ListViewVHT_VHPATIENT.tpl', $this->where, $this->params);

         $smarty = new Sugar_Smarty();
         parent::display();
         $smarty->assign("welcome", 'welcome');
		 $smarty->assign("britney", 'britney bitch');
		 $db = DBManagerFactory::getInstance();  
		 $myquery = 'SELECT tab4.first_name fname, tab4.last_name lname,  tab5.mrn_c mrn, tab4.id patid, tab5.location_c location, tab5.active_c active, ( SELECT tab1.reg_patient_reg_encounterreg_encounter_idb enclink  FROM reg_patient_reg_encounter_c tab1 WHERE  tab1.reg_patient_reg_encounterreg_patient_ida = patid AND tab1.date_modified = (SELECT max( date_modified ) dat FROM reg_patient_reg_encounter_c enc1 WHERE  enc1.reg_patient_reg_encounterreg_patient_ida = patid) )  enclink, ( SELECT DATE_FORMAT(tab3.next_rx_refill_due_c,"%m/%d/%Y") ref1 FROM reg_encounter_cstm tab3 where tab3.id_c = enclink )  refill,  ( SELECT DATE_FORMAT(tab3.next_uts_due_c,"%m/%d/%Y") uts11 FROM reg_encounter_cstm tab3 where tab3.id_c = enclink )  uts ,  (SELECT DATE_FORMAT(tab3.next_pcp_visit_c,"%m/%d/%Y") pcp11 FROM reg_encounter_cstm tab3 where tab3.id_c = enclink )  next_pcp,  (SELECT p1b.name provname  from reg_provider p1b, reg_provider_reg_patient_c p2b  WHERE p2b.reg_provider_reg_patientreg_provider_ida = p1b.id  AND p2b.reg_provider_reg_patientreg_patient_idb = patid) provname, ( SELECT risklvl_c risk1 FROM reg_encounter_cstm tab3 where tab3.id_c = enclink )  risk
FROM reg_patient tab4, reg_patient_cstm tab5, reg_patient_reg_encounter_c tab1, ( SELECT max( date_modified ) dat, reg_patient_reg_encounterreg_patient_ida pat FROM reg_patient_reg_encounter_c GROUP BY reg_patient_reg_encounterreg_patient_ida) tab2, reg_encounter_cstm tab3 WHERE  tab5.id_c = tab4.id  AND tab1.date_modified = tab2.dat AND tab1.reg_patient_reg_encounterreg_patient_ida = tab2.pat AND tab3.id_c = tab1.reg_patient_reg_encounterreg_encounter_idb  AND tab4.id = tab2.pat';
		 if ($_POST['mysort'] == 'week') {
		$result = $db->query($myquery) 	;    }   
        else		{
		$result = $db->query($myquery);  }
		while($row = $db->fetchRow($result))
		{

			$mydata[]=$row;
			$testdata = $row['name'];
		};	
		$smarty->assign("mydata", $mydata); 
        $smarty->display($this->lv->tpl);

 
		
    }
	
}
?>