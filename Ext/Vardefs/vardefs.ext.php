<?php 
 //WARNING: The contents of this file are auto-generated


 // created: 2013-09-30 20:32:34

 

// created: 2013-10-03 11:23:32
$dictionary["VHT_VHPATIENT"]["fields"]["vht_vhpatient_reg_provider_1"] = array (
  'name' => 'vht_vhpatient_reg_provider_1',
  'type' => 'link',
  'relationship' => 'vht_vhpatient_reg_provider_1',
  'source' => 'non-db',
  'vname' => 'LBL_VHT_VHPATIENT_REG_PROVIDER_1_FROM_REG_PROVIDER_TITLE',
  'id_name' => 'vht_vhpatient_reg_provider_1reg_provider_idb',
);
$dictionary["VHT_VHPATIENT"]["fields"]["vht_vhpatient_reg_provider_1_name"] = array (
  'name' => 'vht_vhpatient_reg_provider_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_VHT_VHPATIENT_REG_PROVIDER_1_FROM_REG_PROVIDER_TITLE',
  'save' => true,
  'id_name' => 'vht_vhpatient_reg_provider_1reg_provider_idb',
  'link' => 'vht_vhpatient_reg_provider_1',
  'table' => 'reg_provider',
  'module' => 'REG_Provider',
  'rname' => 'name',
);
$dictionary["VHT_VHPATIENT"]["fields"]["vht_vhpatient_reg_provider_1reg_provider_idb"] = array (
  'name' => 'vht_vhpatient_reg_provider_1reg_provider_idb',
  'type' => 'link',
  'relationship' => 'vht_vhpatient_reg_provider_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_VHT_VHPATIENT_REG_PROVIDER_1_FROM_REG_PROVIDER_TITLE',
);

?>