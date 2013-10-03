<?php
/*********************************************************************************
 * SugarCRM Community Edition is a customer relationship management program developed by
 * SugarCRM, Inc. Copyright (C) 2004-2012 SugarCRM Inc.
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Affero General Public License version 3 as published by the
 * Free Software Foundation with the addition of the following permission added
 * to Section 15 as permitted in Section 7(a): FOR ANY PART OF THE COVERED WORK
 * IN WHICH THE COPYRIGHT IS OWNED BY SUGARCRM, SUGARCRM DISCLAIMS THE WARRANTY
 * OF NON INFRINGEMENT OF THIRD PARTY RIGHTS.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE.  See the GNU Affero General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU Affero General Public License along with
 * this program; if not, see http://www.gnu.org/licenses or write to the Free
 * Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
 * 02110-1301 USA.
 * 
 * You can contact SugarCRM, Inc. headquarters at 10050 North Wolfe Road,
 * SW2-130, Cupertino, CA 95014, USA. or at email address contact@sugarcrm.com.
 * 
 * The interactive user interfaces in modified source and object code versions
 * of this program must display Appropriate Legal Notices, as required under
 * Section 5 of the GNU Affero General Public License version 3.
 * 
 * In accordance with Section 7(b) of the GNU Affero General Public License version 3,
 * these Appropriate Legal Notices must retain the display of the "Powered by
 * SugarCRM" logo. If the display of the logo is not reasonably feasible for
 * technical reasons, the Appropriate Legal Notices must display the words
 * "Powered by SugarCRM".
 ********************************************************************************/

$dictionary['VHT_VHPATIENT'] = array(
	'table'=>'vht_vhpatient',
	'audited'=>true,
		'duplicate_merge'=>true,
		'fields'=>array (
  'excellecy' => 
  array (
    'required' => false,
    'name' => 'excellecy',
    'vname' => 'LBL_EXCELLECY',
    'type' => 'varchar',
    'massupdate' => 0,
    'no_default' => false,
    'comments' => '',
    'help' => '',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => false,
    'reportable' => true,
    'unified_search' => false,
    'merge_filter' => 'disabled',
    'len' => '20',
    'size' => '20',
  ),
),
	'relationships'=>array (
),
	'optimistic_locking'=>true,
		'unified_search'=>true,
	);

$dictionary['VHT_VHPATIENT']['fields']['testfield'] = array( 
    'id' => 'Prospects_testfield', 
    'name' => 'testfield', 
    'label' => 'testfield', 
    'comments' => NULL, 
    'help' => NULL, 
    'type' => 'varchar', 
    'max_size' => '255', 
    'require_option' => '0', 
    'default_value' => NULL, 
    'date_modified' => '2009-08-20 12:30:51', 
    'deleted' => '0', 
    'audited' => '0', 
    'mass_update' => '0', 
    'duplicate_merge' => '0', 
    'reportable' => '1', 
    'importable' => 'true', 
    'ext1' => NULL, 
    'ext2' => NULL, 
    'ext3' => NULL, 
    'ext4' => NULL, 

);  	
	
if (!class_exists('VardefManager')){
        require_once('include/SugarObjects/VardefManager.php');
}
VardefManager::createVardef('VHT_VHPATIENT','VHT_VHPATIENT', array('basic','assignable'));