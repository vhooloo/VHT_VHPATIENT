<?PHP

require_once('include/MVC/View/views/view.edit.php');
//require_once('custom/modules/REG_Patient/RiskEvaluation.php');

class REGR_TopReportsViewReportMedd extends ViewEdit {
 
	function REGR_TopReportsViewReportMedd(){
		parent::ViewEdit();
	}
	

	
	function display(){
	 
	     $provid = '0';
		 $provname = "";
		 
		 //var_dump($_GET);
		 
	     if(isset($_GET['provid']) &&  !empty($_GET['provid']) )
			$provid = $_GET['provid'];
			
		$datalist = Array();
        $smarty = new Sugar_Smarty();
		
        //parent::display();
 		$db = DBManagerFactory::getInstance();  
		
		$queryprov = "select prov.name provname, p1.last_name lname, p1.first_name, p1c.mrn_c, p1.phone_home, r.finalscore,  r.ortsum ortsum, r.short_opioid, prov.name, r.medd, r.short_opioid sop, r.long_opioid lop 
		FROM reg_provider prov, reg_provider_reg_patient_c provpat, 
		reg_patient p1, reg_patient_cstm p1c, reg_patient_risk r
		WHERE prov.id = '{$provid}' AND
		prov.id = provpat.reg_provider_reg_patientreg_provider_ida AND
		p1.id = provpat.reg_provider_reg_patientreg_patient_idb AND
		p1.id = p1c.id_c AND p1c.active_c = '1' AND
		p1.id = r.pid AND r.medd in ('0-3', '4-7', 'gt7')
		ORDER BY r.medd, p1.last_name, p1.first_name";
		
		$sql = $db->query($queryprov);
		while ( ($a = $db->fetchByAssoc($sql)) != null) {
		    $provname = $a["provname"];
			$datalist[] = Array("lname"=> $a["lname"], "fname"=> $a["first_name"], "mrn"=> $a["mrn_c"],"phone"=> $a["phone_home"], 
								"ncm" => $a["finalscore"] , "medd" => $a["medd"], "ortsum" => $a["ortsum"],
								"lop" => $a["lop"] , "sop" => $a["sop"]);

		}
		
		//echo "here with provid " . $provid;
		//echo "<p>".$queryprov."</p>";
		$smarty->assign("datalist", $datalist);
		$smarty->assign("provname", $provname);
		
        $smarty->display('custom/modules/REGR_TopReports/tpls/ReportMedd.tpl');
		
    }
}
?>