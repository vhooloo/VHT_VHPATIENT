


<link type="text/css" rel="stylesheet" href="custom/topcarejs/jquery.dropdown.css" />
 <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<!-- --GRID -->
<link rel="stylesheet" href="custom/topcarejs/jqwidgets/styles/jqx.base.css" type="text/css" />

<script type="text/javascript" src="custom/topcarejs/jquery.dropdown.js"></script>

<script type="text/javascript">
{literal}
function loadUrl(location)
{

	var state = $("#jqxgrid").jqxGrid('savestate');
	var viewcontent = JSON.stringify(state);
	//alert(viewcontent);
	var params = "id=jqxgridstate&value="+viewcontent;


//Send the proper header information along with the request


if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }

xmlhttp.onreadystatechange=function()
  {
  
  }
//xmlhttp.open("GET","index.php?module=REG_Patient&action=session_setting_variable&id=jqxgridstate&value=orepiya123",true);
xmlhttp.open("POST","index.php?entryPoint=session_setting_variable",false);
xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
xmlhttp.setRequestHeader("Content-length", params.length);
xmlhttp.setRequestHeader("Connection", "close");
xmlhttp.send(params);

//$.get("index.php?module=REG_Patient&action=session_setting_variable&id=jqxgridstate&value=orepiya123ajax");

  this.document.location.href = location;
}
{/literal}
</script>

{php}

//session_start();
// store session data
//if (!empty($_POST['regnamesort'])) $_SESSION['regnamesort']=$_POST['regnamesort'];
//echo "session >>>>>>>>";
//if (!empty($_SESSION['jqxgridstate'])) var_dump($_SESSION['jqxgridstate']);
//var_dump($_SESSION);
{/php}

  <script src="http://code.jquery.com/jquery-1.10.2.js"></script> 
  <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
 
  


    <!--script type="text/javascript" src="../../scripts/jquery-1.10.2.min.js"></script-->
    <script type="text/javascript" src="custom/topcarejs/jqwidgets/jqxcore.js"></script>
    <script type="text/javascript" src="custom/topcarejs/jqwidgets/jqxdata.js"></script>
    <script type="text/javascript" src="custom/topcarejs/jqwidgets/jqxbuttons.js"></script>
    <script type="text/javascript" src="custom/topcarejs/jqwidgets/jqxscrollbar.js"></script>
    <script type="text/javascript" src="custom/topcarejs/jqwidgets/jqxlistbox.js"></script>
    <script type="text/javascript" src="custom/topcarejs/jqwidgets/jqxdropdownlist.js"></script>
    <script type="text/javascript" src="custom/topcarejs/jqwidgets/jqxmenu.js"></script>
    <script type="text/javascript" src="custom/topcarejs/jqwidgets/jqxgrid.js"></script>
    <script type="text/javascript" src="custom/topcarejs/jqwidgets/jqxgrid.filter.js"></script>
	<script type="text/javascript" src="custom/topcarejs/jqwidgets/jqxgrid.storage.js"></script>
    <script type="text/javascript" src="custom/topcarejs/jqwidgets/jqxgrid.selection.js"></script>
    <script type="text/javascript" src="custom/topcarejs/jqwidgets/jqxcheckbox.js"></script>
	<script type="text/javascript" src="custom/topcarejs/jqwidgets/jqxgrid.sort.js"></script>
	<script type="text/javascript" src="custom/topcarejs/jqwidgets/jqxcalendar.js"></script>
    <script type="text/javascript" src="custom/topcarejs/jqwidgets/jqxdatetimeinput.js"></script>
	<script type="text/javascript" src="custom/topcarejs/jqwidgets/jqxgrid.grouping.js"></script>
	<!--[if IE 7]>
		<script type="text/javascript" src="custom/topcarejs/json2.js"></script>
	<![endif]--> 
    <!--script type="text/javascript" src="../../scripts/gettheme.js"></script>
    <script type="text/javascript" src="generatedata.js"></script-->
    


    



<!-- END GRID -->



<!-- -->

<body class='default'>

<input name="testjson" id = "testjson" type = "hidden"  value="{$smarty.session.jqxgridstate nofilter}">
  
        <div id="jqxgrid"></div>
        


<input value = "Sort" type="button" onclick="$('#jqxgrid').jqxGrid('sortby', 'patientname', 'asc');">  </input>
<input id="refresh" type="button" value="Refresh Data" />
<input id="activecheck" type="checkbox" value="inactive" onclick="activefilter(this.checked);"> Include Inactive patients </input>
<input type="button" id="saveState" value="Save State" />
<input type="button" id="loadState" value="Load State" />

<div id="patidxx"class="dropdown dropdown-tip"> <ul class="dropdown-menu"> <li><a href="./index.php?module=REG_Patient&action=PrescriptionRefill&record=1">Refill</a></li>  <li><a href="./index.php?module=REG_Patient&action=PatientEncounter&record=2">Encounter</a></li></ul> </div><input type="button" value="Action" data-dropdown="#patidxx" class="">
</body>


	<script type="text/javascript">
	var refilldaysselect;
	
	{literal}
	function refillfilter(value, type) {
	
      refilldaysselect = parseInt(value);

	  var filtergroup = new $.jqx.filter();
	  //var filterlo = filtergroup.createfilter('datefilter', '11/7/2013', 'GREATER_THAN_OR_EQUAL');
	  var filterhi = filtergroup.createfilter('datefilter', '11/14/2013', 'LESS_THAN_OR_EQUAL');
	  //var filterover = filtergroup.createfilter('datefilter', '11/7/2013', 'LESS_THAN_OR_EQUAL');
	  var filterbot  = filtergroup.createfilter('datefilter', '01/01/2013', 'GREATER_THAN_OR_EQUAL');
	  //filtergroup.addfilter(0, filterlo);

	  if (type == 'rx') { // add overdue as or condition for refill
	  	filtergroup.addfilter(0, filterbot);
		filtergroup.addfilter(0, filterhi);
		$('#jqxgrid').jqxGrid('addfilter', 'refill', filtergroup, true);
		return;
	 }
		
      
	  if (type == 'uts'){
	   //filtergroup.addfilter(0, filterlo);
	   //filtergroup.addfilter(0, filterhi);
		$('#jqxgrid').jqxGrid('addfilter', 'uts', filtergroup, true);}

	}
	
	function activefilter(inactiveflag) {
	
      
	  var filtergroup = new $.jqx.filter();
	  //actives;
	  var filteron = filtergroup.createfilter('stringfilter', '1', 'EQUAL');
	  
	  filtergroup.addfilter(0, filteron);
      if (!inactiveflag) {
		$('#jqxgrid').jqxGrid('addfilter', 'active', filtergroup, true);
		 }
	  else
	  { 
        $('#jqxgrid').jqxGrid('removefilter', 'active',  true);	  
		}
	 }
		
   
	
	
		$(window).load(function() {
        //$(document).load(function () {

				
	var data = new Array();
	var i = 0
	
	{/literal}
	{foreach name=myrowIteration from=$mydata key=id item=myrowData}

 

		var row = {literal} {} {/literal};
		row["active"]		= "{$myrowData.active}";
		row["location"] 	= "{$myrowData.location}";
		row["patientname"] 	= "{$myrowData.lname}, {$myrowData.fname}" ;
		row["mrn"] 			= "{$myrowData.mrn}";
		row["refill"] 		= "{$myrowData.refill}";
		row["uts"] 			= "{$myrowData.uts}";
		row["next_pcp"] 	= "{$myrowData.next_pcp}";
		row["pcp"] 			= "{$myrowData.provname}";
		row["action"] 		= "{$myrowData.patid}";
		data[i] = row;
	    i = i + 1;
	{/foreach}

	{literal}
	
	var source =
	{
		localdata: data,
		datafields:
                [
				    { name: 'active', type: 'string' },
					{ name: 'location', type: 'string' },
					{ name: 'patientname', type: 'string' },
					{ name: 'mrn', type: 'string' },
                    { name: 'refill', type: 'date' },
                    { name: 'uts', type: 'date' },
					 { name: 'next_pcp', type: 'date' },
                    { name: 'pcp', type: 'string'},
                    { name: 'action', type: 'string' }
                ],
		datatype: "array",
		sortcolumn: 'patientname',
		sortdirection: 'asc'
	};
	
	var linkrenderer = function (row, column, value) {
                
                //return '<div id="patid'+row+'"class="dropdown dropdown-tip"> <ul class="dropdown-menu"> <li><a href="./index.php?module=REG_Patient&action=PrescriptionRefill&record=1">Refill</a></li>  <li><a href="./index.php?module=REG_Patient&action=PatientEncounter&record=2">Encounter</a></li></ul> </div><input type="button" value="Action" data-dropdown="#patid'+row+'" class="">	';
				return '<select id="mysort'+row+'" name="mysort'+row+'" onchange="if (document.getElementById(\'mysort'+row+'\').selectedIndex ==1 ) loadUrl(\'./index.php?module=REG_Patient&action=PrescriptionRefill&record='+value+'\'); else loadUrl(\'./index.php?module=REG_Patient&action=PatientEncounter&record='+value+'\');"> <option value="Action"  selected>Action</option><option value="Refill" >Refill</option><option value="Enc" >Encounter</option>	</select>';
    }
	
	var columnsrenderer = function (value) {
	//return '<div style="text-align: center; margin-top: 5px;">' + value + '</div>';

	if (value == 'Refill')
		return '<div>Refill <select style="width:75px;" id="mysortrefill" name="mysortrefill" onchange="switch(document.getElementById(\'mysortrefill\').selectedIndex) { case 0: $(\'#jqxgrid\').jqxGrid(\'removefilter\', \'refill\', true); break;  case 1: refillfilter(7, \'rx\'); break;  case 2: refillfilter(14, \'rx\');break;}"> <option value="Action"  selected>ALL</option><option value="Refill7" >Next 7 Days</option><option value="Refill14" >Next 14 Days</option>&nbsp &nbsp</select> </div>&nbsp &nbsp';
	if (value == 'UTS')
		return '<div>UTS<select style="width:75px;" id="mysortuts" name="mysortuts" onchange="switch(document.getElementById(\'mysortuts\').selectedIndex) { case 0: $(\'#jqxgrid\').jqxGrid(\'removefilter\', \'uts\', true); break;  case 1: refillfilter(7, \'uts\'); break;  case 2: refillfilter(14, \'uts\');break;}"> <option value="Action"  selected>ALL</option><option value="Refill7" >Next 7 Days</option><option value="Refill14" >Next 14 Days</option>	</select></div>';
	}
	
	
			 
	var dataAdapter = new $.jqx.dataAdapter(source);
	$("#jqxgrid").jqxGrid(
	{
		width: 1200,
		source: dataAdapter,
		showfilterrow: true,
		groupable: true,
		sortable: true,
		filterable: true,
		
		columns: [
		    { text: 'Active', filtertype: 'textbox', hidden: true, filtercondition: 'starts_with', datafield: 'active', width: 20,sortable: true },
			{ text: 'Location', filtertype: 'textbox', filtercondition: 'starts_with', datafield: 'location', width: 60,sortable: true },
			{ text: 'Patient Name', filtertype: 'textbox', filtercondition: 'starts_with', datafield: 'patientname', width: 160,sortable: true },
			{ text: 'MRN', filtertype: 'textbox', filtercondition: 'starts_with', datafield: 'mrn', width: 100},
			{ text: 'Refill', filtertype: 'date', datafield: 'refill', width: 160, cellsformat: 'd', renderer:columnsrenderer, sortable:true },
			{ text: 'UTS', filtertype: 'date', datafield: 'uts',  width: 160,   cellsformat: 'd', renderer:columnsrenderer, sortable:false },
			{ text: 'Next PCP', filtertype: 'date', datafield: 'next_pcp',  width: 160,   cellsformat: 'd', renderer:columnsrenderer, sortable:false },
			{ text: 'PCP', datafield: 'pcp', filtertype: 'textbox', width: 160, cellsalign: 'right', cellsformat: 'c2' },
			{ text: 'Action', datafield: 'action',  width: 100,  cellsrenderer:linkrenderer }
		]//,			groups: ['PCP']
	})
	
	 
	$("#jqxgrid").jqxGrid('loadstate',JSON.parse(document.getElementById("testjson").value));
	 $("#refresh").jqxButton();
	data.sort(function(a,b) {
	 /*if (a.productname < b.productname)
	   return -1;
	 if (a.productname > b.productname)
	   return 1;
	 if (a.firstname < b.firstname)
	   return -1;
	 if (a.firstname > b.firstname)
	   return 1;  
	 */  
	 return 0;
	})
          
	$("#refresh").click(function () {
	    data.sort();
		source.localdata = data.slice(1);
		// passing "cells" to the 'updatebounddata' method will refresh only the cells values when the new rows count is equal to the previous rows count.
		$("#jqxgrid").jqxGrid('updatebounddata');
	});
	
	
	$("#getrows").click(function () {
	    var myrows = $("#jqxgrid").jqxGrid('getrows');
		alert(myrows[0].firstname);
		var filtergroup = new $.jqx.filter();
		var filtervalue = 10; // Each cell value is compared with the filter's value.
		// filtertype - numericfilter, stringfilter, datefilter or customfilter. 
		// condition
		// possible conditions for string filter: 'EMPTY', 'NOT_EMPTY', 'CONTAINS', 'CONTAINS_CASE_SENSITIVE',
		// 'DOES_NOT_CONTAIN', 'DOES_NOT_CONTAIN_CASE_SENSITIVE', 'STARTS_WITH', 'STARTS_WITH_CASE_SENSITIVE',
		// 'ENDS_WITH', 'ENDS_WITH_CASE_SENSITIVE', 'EQUAL', 'EQUAL_CASE_SENSITIVE', 'NULL', 'NOT_NULL'
		// possible conditions for numeric filter: 'EQUAL', 'NOT_EQUAL', 'LESS_THAN', 'LESS_THAN_OR_EQUAL', 'GREATER_THAN', 'GREATER_THAN_OR_EQUAL', 'NULL', 'NOT_NULL'
		// possible conditions for date filter: 'EQUAL', 'NOT_EQUAL', 'LESS_THAN', 'LESS_THAN_OR_EQUAL', 'GREATER_THAN', 'GREATER_THAN_OR_EQUAL', 'NULL', 'NOT_NULL'                         
		var filter = filtergroup.createfilter('stringfilter', 'A', 'STARTS_WITH');
		//var filter2 = filtergroup.createfilter(filtertype, filtervalue2, condition2);
		// To create a custom filter, you need to call the createfilter function and pass a custom callback function as a fourth parameter.
		// If the callback's name is 'customfilter', the Grid will pass 3 params to this function - filter's value, current cell value to evaluate and the condition.                        
		// operator - 0 for "and" and 1 for "or"
		filtergroup.addfilter(0, filter);
		//filtergroup.addfilter(0, filter2);
		// datafield is the bound field.
		// adds a filter to the grid.
		//$('#grid').jqxGrid('addfilter', datafield, filtergroup);
		// to add and apply the filter, use this:
		$('#jqxgrid').jqxGrid('addfilter', 'firstname', filtergroup, true);
	});
	
	var state = null;
	 $("#saveState").click(function () {
                // save the current state of jqxGrid.

                state = $("#jqxgrid").jqxGrid('savestate');
      });            
	$("#loadState").click(function () {
		// load the Grid's state.
		
		if (state) {
		  
			$("#jqxgrid").jqxGrid('loadstate', state);
		}
		else {
		 
			$("#jqxgrid").jqxGrid('loadstate');
		}
		
        if (refilldaysselect == 7) $("#mysortrx").val("Refill7");
	});
	
	}); //window load function

 </script>
	{/literal}
