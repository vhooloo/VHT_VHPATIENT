<?PHP

require_once('include/MVC/View/views/view.list.php');
		
		
class VHT_VHPATIENTViewList extends ViewList {
 
	function VHT_VHPATIENTViewList(){
		parent::ViewList();
	}
	
	//function listViewProcess(){
		/*$this->processSearchForm();
		$this->searchColumns = $this->searchColumns;
		if(!$this->headers)
		return;
		if(empty($_REQUEST['search_form_only']) || $_REQUEST['search_form_only'] == false){ */
		    //$this->params['custom_where'] = '  AND VHT_VHPATIENT.NAME <> "PAT8" ORDER BY VHT_VHPATIENT.NAME DESC';

			//$this->lv->setup($this->seed, 'custom/modules/VHT_VHPATIENT/tpls/ListViewVHT_VHPATIENT.tpl', $this->where, $this->params);
			//$this->lv->setup($this->seed, 'include/ListView/ListViewGeneric.tpl', $this->where, $this->params);
			//var_dump ($this->where);
			
			//var_dump($_REQUEST);
			
			//$this->params['orderBy'] = 'VHT_VHPATIENT.NAME ASC';
			//var_dump( $this->params);
			//$savedSearchName = empty($_REQUEST['saved_search_select_name']) ? '' : (' - ' . $_REQUEST['saved_search_select_name']);
			//echo get_form_header($GLOBALS['mod_strings']['LBL_LIST_FORM_TITLE'] . $savedSearchName, '', false);
			//echo $this->lv->display();
		//}
	//}
	
	
	
	 function display(){
	    echo '<form method="POST" action="index.php?module=REG_Patient">Choose an option to filter:	<select name="mysort" onchange="this.form.submit()"><option value="none"></option><option value="all">All Refills</option><option value="week">Next Seven Days</option></select></form>';
		echo '<ul id="test1" class="clickMenu selectmenu" name ><li class="sugar_action_button" ><input title="Select all" type="checkbox" class="checkbox massall" name="massall" id="massall_top"  /> <a id="select_link"  href="javascript: void(0);"> </a><ul id class="subnav" ><li><a  name="thispage" id="button_select_this_page_top" class="menuItem"  href="#">First;</a></li>  </ul></li></ul>';
		$button_code = '<script type="text/javascript">	$(document).ready(function(){ var button = $("<li><a href=\"javascript:void(0)\" onclick=\"alert(\'Hello, world!\')\">New Button!</a></li>\")" ); $("#test1").sugarActionMenu(\'addItem\',{item:button});	$("#test1").sugarActionMenu(\'addItem\',{item:button});$("#test1").sugarActionMenu(\'addItem\',{item:button,index:1}); 	});	</script>';
		
        echo $button_code;
		
        parent::display();
		/*
         
         $smarty->assign("welcome", 'welcome');
		 $smarty->assign("britney", 'britney bitch');
		 $db = DBManagerFactory::getInstance();  
		 $myquery = 'SELECT tab4.first_name fname, tab4.last_name lname, tab1.date_modified, tab3.next_rx_refill_due_c refill, tab2.pat patid FROM reg_patient_reg_encounter_c tab1, ( SELECT max( date_modified ) dat, reg_patient_reg_encounterreg_patient_ida pat FROM reg_patient_reg_encounter_c GROUP BY reg_patient_reg_encounterreg_patient_ida) tab2, reg_encounter_cstm tab3, reg_patient tab4 WHERE tab1.date_modified = tab2.dat AND tab1.reg_patient_reg_encounterreg_patient_ida = tab2.pat AND tab3.id_c = tab1.reg_patient_reg_encounterreg_encounter_idb AND tab4.id = tab2.pat';
		 if ($_POST['mysort'] == 'week') {
		$result = $db->query($myquery." AND tab3.next_rx_refill_due_c BETWEEN NOW() AND DATE_ADD(NOW(), INTERVAL 20 DAY)   ") 	;    }   
        else		{
		$result = $db->query($myquery.' ORDER BY fname ASC');  }
		while($row = $db->fetchRow($result))
		{
			echo $row['fname'];
			echo 'xxxxx';
			$mydata[]=$row;
			$testdata = $row['name'];
		};	
		$smarty->assign("mydata", $mydata); 
        $smarty->display($this->lv->tpl);
        */
 
		
    }
	
}
?>