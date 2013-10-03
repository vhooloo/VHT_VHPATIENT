<?PHP

require_once('custom/modules/VHT_VHPATIENT/VHT_VHPATIENTTopListView.php');
require_once('custom/modules/VHT_VHPATIENT/VHT_VHPATIENTListView.php');
//require_once('custom/modules/VHT_VHPATIENT/VHT_VHPATIENT.php');
require_once('include/MVC/View/views/view.list.php');

class VHT_VHPATIENTController extends SugarController {
/*** when we call MassUpdate with $addAllBeanFields then it will use this in the query.
*
* @param
*/
	function action_listview() {
		
		$this->view = 'list';
	//	$x=1;
	//	$GLOBALS['log']->fatal('in controller');
		$this->bean = new VHT_VHPATIENTListView();
	}
	
	function action_topcare() {
		
		$this->view = 'toplist';
	    $this->bean = new VHT_VHPATIENTListView();
	}
	
}
?>