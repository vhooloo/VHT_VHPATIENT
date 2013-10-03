{literal}
<style type="text/css">

    .ItemActionButtons{}
    .ItemActionButtons .SaveExtraOptions
    {
        display: none; list-style-type: none; padding: 5px; margin: 0; border: 1px solid #DCDCDC; background-color: #fff; z-index: 999; position: absolute;
    }
    .ItemActionButtons .SaveExtraOptions li
    {
        padding: 5px 3px 5px 3px; margin: 0; width: 150px; border: 1px solid #fff;
    }
    .ItemActionButtons .SaveExtraOptions li:hover
    {
        cursor: pointer;
        background-color: #DCDCDC;
    }
    .ItemActionButtons .SaveExtraOptions li a
    {
        text-transform: none;
    }
	 .ui-menu { position: absolute; width: 100px; }
</style>
{/literal}

<link type="text/css" rel="stylesheet" href="custom/topcarejs/jquery.dropdown.css" />
<script type="text/javascript" src="custom/topcarejs/jquery.dropdown.js"></script>
<!--div id="dropdown-1" class="dropdown dropdown-tip"> <ul class="dropdown-menu">  <li><a href="./index.php?module=REG_Patient">Item 1</a></li>  <li><a href="#2">Item 2</a></li> </ul> </div><input type="button" value="Dropdown" data-dropdown="#dropdown-1" class=""-->



<p>test9</p>
<!-- all variables -->
<pre> 
{php} 
	//$db = DBManagerFactory::getInstance();  
	//$result = $db->query('SELECT * FROM VHT_VHPATIENT order by NAME DESC');        
	//while($row = $db->fetchRow($result))
	//{
		//echo $row['name'];
		//echo '+++++';
		//$mydata[]=$row;
		//$testdata = $row['name'];
	//};	
	$vhpatient = BeanFactory::getBean('VHT_VHPATIENT')->retrieve_by_string_fields(array('name'=>'PAT3'));
	$this->assign("testdata", 'so of a gun');
	//echo $vhpatient;
 //print_r(get_defined_vars());
var_dump($_POST['name']); 
{/php} 
</pre> 
<!-- -->

<form method="POST" action="index.php?module=VHT_VHPATIENT">
Choose an option:	
<select name="mysort" onchange="this.form.submit()">
<option value="none"></option>
<option value="all">ALL</option>
<option value="week">Next Seven Days</option>

</select>

</form>


{foreach name=myrowIteration from=$mydata key=id item=myrowData}
	 
	    
	     
	  <p>   {$myrowData.fname}  {$myrowData.lname} {$myrowData.refill}   </p>
	  
	  <div id="{$myrowData.patid}" class="dropdown dropdown-tip"> <ul class="dropdown-menu">  
	  <li><a href="./index.php?module=REG_Patient&action=PrescriptionRefill&record={$myrowData.patid}">Refill</a></li>  
	  <li><a href="./index.php?module=REG_Patient&action=PatientEncounter&record={$myrowData.patid}">Encounter</a></li> </ul> </div><input type="button" value="Dropdown" data-dropdown="#{$myrowData.patid}" class="">	
      
   
	
{/foreach}


{foreach name=rowIteration from=$data key=id item=rowData}
	 
	     <div>

	  <div>
	     
	     {$rowData.ID} {$sugar_info.sugar_version}  {$rowData.NAME} {$rowData.EXCELLECY} {$rowData.FIRST_NAME}
		<boom>Run last action</boom>
		<boom2>Select an action</boom2>
	  </div>
	          <ul>
    <li><a href="./index.php?action=ajaxui#ajaxUILoc=index.php%3Fmodule%3DVHT_VHPATIENT%26action%3DDetailView%26record%3D{$rowData.ID}">Open...</a></li>
    <li><a href="#">Save</a></li>
    <li><a href="#">Delete</a></li>
  </ul>
  </div>
 
   
	
{/foreach}


<!-- -->

</script>
  <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
  <script src="http://code.jquery.com/jquery-1.9.1.js"></script> 
  <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css" />
  <script>
{literal}  
  $(function() {
    $( "#tabs" ).tabs();
  });
{/literal} 
    </script>
<p>&nbsp;</p>
    <div>	 
	 <div>
		<boom>boom1</boom>
		<boom2>boom2</boom2>
	  </div>
        <ul>
    <li><a href="./index.php?action=ajaxui#ajaxUILoc=index.php%3Fmodule%3DVHT_VHPATIENT%26action%3DDetailView%26record%3D{$rowData.ID}">Open...</a></li>
    <li><a href="#">Save</a></li>
    <li><a href="#">Delete</a></li>
  </ul>
  </div>
{literal} 
 <script>
$( "boom" ) 
      .button()
      .click(function() {
        alert( "Running the last action" );
      })
      .next()
        .button({
          text: false,
          icons: {
            primary: "ui-icon-triangle-1-s"
          }
        })
        .click(function() {
          var menu = $( this ).parent().next().show().position({
            my: "left top",
            at: "left bottom",
            of: this
          });
           
    
        })
	  .parent()
          .buttonset()
          .next()
            .hide()
            .menu();	

			
  $("rerun").button();
  
  $(function() {
   $( "#rerun" ) 
      .button()
      .click(function() {
        alert( "Running the last action" );
      })
      .next()
        .button({
          text: false,
          icons: {
            primary: "ui-icon-triangle-1-s"
          }
        })
        .click(function() {
          var menu = $( this ).parent().next().show().position({
            my: "left top",
            at: "left bottom",
            of: this
          });
          $( document ).one( "click", function() {
            menu.hide();
          });
          return false;
        })
        .parent()
          .buttonset()
          .next()
            .hide()
            .menu();
  });
  </script>
{/literal} 

<div id="tabs">
  <ul>
    <li><a href="#tabs-1">Nunc tincidunt</a></li>
    <li><a href="#tabs-2">Proin dolor</a></li>
    <li><a href="#tabs-3">Aenean lacinia</a></li>
  </ul>
  <div id="tabs-1">
    <!--{php}
    $vhpatient = BeanFactory::getBean('VHT_VHPATIENT')->retrieve_by_string_fields(array('name'=>'PAT1'));	
	var_dump($vhpatient->name);
	{/php} -->
	test
  </div>
  <div id="tabs-2">
    {php}
    $vhpatient = BeanFactory::getBean('VHT_VHPATIENT')->retrieve_by_string_fields(array('name'=>'PAT2'));	
	var_dump($vhpatient->name);
	while($row = $db->fetchRow($result))
	{
		echo $row['name'];
		echo '<<<<>>>>>>';
	};	
	{/php}
    {foreach name=rowIteration from=$data key=id item=rowData}
	<p> {$rowData.NAME} {$sugar_info.sugar_version}  {$rowData.ASSIGNED_USER_NAME}  
	     <a href="./index.php?action=ajaxui#ajaxUILoc=index.php%3Fmodule%3DVHT_VHPATIENT%26action%3DDetailView%26record%3D{$rowData.ID}">&nbsp; Patient &nbsp;</a>
	</p>
	{/foreach}
  </div>
  <div id="tabs-3">
        {foreach name=rowIteration from=$data key=id item=rowData}
	<p> {$rowData.NAME} {$sugar_info.sugar_version}  {$rowData.ASSIGNED_USER_NAME}  
	     <a href="./index.php?action=ajaxui#ajaxUILoc=index.php%3Fmodule%3DVHT_VHPATIENT%26action%3DDetailView%26record%3D{$rowData.ID}">&nbsp; Patient &nbsp;</a>
	</p>
	{/foreach}
  </div>
</div>

<div>
  <div>
     how are you mate? 
    <button id="rerun">Run last action</button>
    <button id="select">Select an action</button>
  </div>
  <ul>
    <li><a href="#">Open...</a></li>
    <li><a href="#">Save</a></li>
    <li><a href="#">Delete</a></li>
  </ul>
</div>

{literal}
<script type="text/javascript">

    $(document).delegate('#btnSaveExtra', 'mouseleave', function () { setTimeout(function(){ if (!ItemActionButtons.isHoverMenu) { $('#btnSaveExtraOptions').hide(); }}, 100, 1) });
    $(document).delegate('#btnSaveExtraOptions', 'mouseenter', function () { ItemActionButtons.isHoverMenu = true; });
    $(document).delegate('#btnSaveExtraOptions', 'mouseleave', function () { $('#btnSaveExtraOptions').hide(); ItemActionButtons.isHoverMenu = false; });

    var $IsHoverExtraOptionsFlag = 0;
    $(document).ready(function () {
        $(".button").button();
        $(".buttonset").buttonset();
        $('#btnSaveExtra').button({ icons: { primary: "ui-icon-plusthick" } });
        $('#btnSaveExtraOptions li').addClass('ui-corner-all ui-widget');
        $('#btnSaveExtraOptions li').hover(
            function () { $(this).addClass('ui-state-default'); },
            function () { $(this).removeClass('ui-state-default'); }
        );
        $('#btnSaveExtraOptions li').mousedown(function () { $(this).addClass('ui-state-active'); });
        $('#btnSaveExtraOptions li').mouseup(function () { $(this).removeClass('ui-state-active'); });
    });

    var ItemActionButtons = {
        isHoverMenu: false,

        AllowDelete: function (value) { value ? $("#btnDelete").show() : $("#btnDelete").hide() },
        AllowCancel: function (value) { value ? $("#btnCancel").show() : $("#btnCancel").hide(); },
        AllowSave: function (value) { value ? $("#btnSave").show() : $("#btnSave").hide() },
        AllowSaveExtra: function (value) { value ? $("#btnSaveExtra").show() : $("#btnSaveExtra").hide() },

        onDeleteClick: function () { },
        onCancelClick: function () { },
        onSaveClick: function () { },
        onSaveExtraClick: function () {
            $('#btnSaveExtraOptions').toggle();

            var btnLeft = $('#divSaveButton').offset().left;
            var btnTop = $('#divSaveButton').offset().top + $('#divSaveButton').outerHeight(); // +$('#divSaveButton').css('padding');
            var btnWidth = $('#divSaveButton').outerWidth();
            $('#btnSaveExtraOptions').css('left', btnLeft).css('top', btnTop);
        },
        SaveAndNewClick: function () { },
        SaveAndCopyClick: function () { }
    }

</script>
{/literal}


