<?PHP

class VHT_VHPATIENTController extends SugarController {
/*** when we call MassUpdate with $addAllBeanFields then it will use this in the query.
*
* @param
*/
	function action_listview() {
		require_once “custom/modules/VHT_VHPATIENT/VHT_VHPATIENTListView.php”;
		$this->view = ‘list’;
		$this->bean = new CaseListView();
	}
}
?>