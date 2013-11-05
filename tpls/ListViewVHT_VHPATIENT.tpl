


<link type="text/css" rel="stylesheet" href="custom/topcarejs/jquery.dropdown.css" />
 <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<!-- --GRID -->
<link rel="stylesheet" href="custom/topcarejs/jqwidgets/styles/jqx.base.css" type="text/css" />

<script type="text/javascript" src="custom/topcarejs/jquery.dropdown.js"></script>

<script type="text/javascript">
{literal}
function loadUrl(location)
{
this.document.location.href = location;
}
{/literal}
</script>


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
    <!--script type="text/javascript" src="../../scripts/gettheme.js"></script>
    <script type="text/javascript" src="generatedata.js"></script-->
    


    



<!-- END GRID -->



<!-- -->

<body class='default'>
here
    
        <div id="jqxgrid"></div>
        

after
<input value = "Sort" type="button" onclick="$('#jqxgrid').jqxGrid('sortby', 'patientname', 'asc');">  </input>
<input id="refresh" type="button" value="Refresh Data" />
<input id="getrows" type="button" value="Row Info" />
<input type="button" id="saveState" value="Save State" />
<input type="button" id="loadState" value="Load State" />

<div id="patidxx"class="dropdown dropdown-tip"> <ul class="dropdown-menu"> <li><a href="./index.php?module=REG_Patient&action=PrescriptionRefill&record=1">Refill</a></li>  <li><a href="./index.php?module=REG_Patient&action=PatientEncounter&record=2">Encounter</a></li></ul> </div><input type="button" value="Action" data-dropdown="#patidxx" class="">
</body>

{literal}
	<script type="text/javascript">
	var refilldaysselect;
	function refillfilter(value) {
      refilldaysselect = parseInt(value);
	  alert(refilldaysselect);
	  var filtergroup = new $.jqx.filter();
	  var filterlo = filtergroup.createfilter('datefilter', '11/1/2013', 'GREATER_THAN_OR_EQUAL');
	  var filterhi = filtergroup.createfilter('datefilter', '11/10/2013', 'LESS_THAN_OR_EQUAL');
	  filtergroup.addfilter(0, filterlo);
	  filtergroup.addfilter(0, filterhi);
	  $('#jqxgrid').jqxGrid('addfilter', 'refill', filtergroup, true);

	}
	
	
		$(window).load(function() {
        //$(document).load(function () {

				
	var data = new Array();
	var i = 0
	var firstNames =
	[
		"Andrew", "Nancy", "Shelley", "Regina", "Yoshi", "Antoni", "Mayumi", "Ian", "Peter", "Lars", "Petra", "Martin", "Sven", "Elio", "Beate", "Cheryl", "Michael", "Guylene"
	];
	var lastNames =
	[
		"Fuller", "Davolio", "Burke", "Murphy", "Nagase", "Saavedra", "Ohno", "Devling", "Wilson", "Peterson", "Winkler", "Bein", "Petersen", "Rossi", "Vileid", "Saylor", "Bjorn", "Nodier"
	];
	var productNames =
	[
		"Black Tea", "Green Tea", "Caffe Espresso", "Doubleshot Espresso", "Caffe Latte", "White Chocolate Mocha", "Cramel Latte", "Caffe Americano", "Cappuccino", "Espresso Truffle", "Espresso con Panna", "Peppermint Mocha Twist"
	];
	var priceValues =
	[
		"2.25", "1.5", "3.0", "3.3", "4.5", "3.6", "3.8", "2.5", "5.0", "1.75", "3.25", "4.0"
	];
	{/literal}
	{foreach name=myrowIteration from=$mydata key=id item=myrowData}

 

		var row = {literal} {} {/literal};

		row["patientname"] = "{$myrowData.lname}, {$myrowData.fname}" ;
		row["mrn"] 			= "{$myrowData.mrn}";
		row["refill"] 		= "{$myrowData.refill|date_format:'%m/%d/%Y'}";
		row["uts"] 			= "{$myrowData.uts}";
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
                    { name: 'patientname', type: 'string' },
					{ name: 'mrn', type: 'string' },
                    { name: 'refill', type: 'date' },
                    { name: 'uts', type: 'string' },
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
	return '<div><select id="mysortabc" name="mysortabc" onchange="switch(document.getElementById(\'mysortabc\').selectedIndex) { case 0: $(\'#jqxgrid\').jqxGrid(\'removefilter\', \'refill\', true); break;  case 1: refillfilter(7); break;  case 2: refillfilter(14);break;}"> <option value="Action"  selected>ALL</option><option value="Refill7" >Next 7 Days</option><option value="Refill14" >Next 14 days</option>	</select></div>'
	}
	
	
			
	var dataAdapter = new $.jqx.dataAdapter(source);
	$("#jqxgrid").jqxGrid(
	{
		source: dataAdapter,
		showfilterrow: true,
		sortable: true,
		filterable: true,
		
		columns: [
			{ text: 'Patient Name', filtertype: 'textbox', filtercondition: 'starts_with', datafield: 'patientname', width: 100,sortable: true },
			{ text: 'MRN', filtertype: 'textbox', filtercondition: 'starts_with', datafield: 'mrn', width: 100},
			{ text: 'Refill Date', filtertype: 'date', datafield: 'refill', width: 180, cellsformat: 'd', renderer:columnsrenderer, sortable:false },
			{ text: 'UTS', datafield: 'uts', filtertype: 'list', filteritems: ['Next 7 Days'], width: 80, cellsalign: 'right' },
			{ text: 'PCP', datafield: 'pcp', filtertype: 'textbox', width: 90, cellsalign: 'right', cellsformat: 'c2' },
			{ text: 'Action', datafield: 'action',  width: 100,  cellsrenderer:linkrenderer }
		]
	})
	
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
		alert(refilldaysselect);
        if (refilldaysselect == 7) $("#mysortabc").val("Refill7");
	});
	
	}); //window load function

 </script>
	{/literal}
