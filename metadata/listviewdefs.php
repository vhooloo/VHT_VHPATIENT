<?php
$module_name = 'VHT_VHPATIENT';
$listViewDefs [$module_name] = 
array (
  'NAME' => 
  array (
    'width' => '32%',
    'label' => 'LBL_NAME',
    'default' => true,
    'link' => true,
	'orderBy' => 'NAME', 
	'sort_order' => 'DESC',	
  ),
  'ASSIGNED_USER_NAME' => 
  array (
    'width' => '9%',
    'label' => 'LBL_ASSIGNED_TO_NAME',
    'module' => 'Employees',
    'id' => 'ASSIGNED_USER_ID',
    'default' => true,
  ),
  'EXCELLECY' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_EXCELLECY',
    'width' => '10%',
    'default' => true,
  ),
  'TESTFIELD' =>  
  array ( 

    'type' => 'varchar', 
    'default' => true, 
    'label' => 'testfield', 
    'sortable' => false, 
    'width' => '10%', 
  ), 
);
?>
