<?php
  /********************************************************************\
   * This program is free software; you can redistribute it and/or    *
   * modify it under the terms of the GNU General Public License as   *
   * published by the Free Software Foundation; either version 2 of   *
   * the License, or (at your option) any later version.              *
   *                                                                  *
   * This program is distributed in the hope that it will be useful,  *
   * but WITHOUT ANY WARRANTY; without even the implied warranty of   *
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the    *
   * GNU General Public License for more details.                     *
   *                                                                  *
   * You should have received a copy of the GNU General Public License*
   * along with this program; if not, contact:                        *
   *                                                                  *
   * Free Software Foundation           Voice:  +1-617-542-5942       *
   * 59 Temple Place - Suite 330        Fax:    +1-617-542-2652       *
   * Boston, MA  02111-1307,  USA       gnu@gnu.org                   *
   *                                                                  *
   \********************************************************************/
  /**@file Session.php
   * @author Copyright (C) 2004 Technologies Coeus inc.
   */
class Session{
  
  function Session() {
    $session_id = session_id();
    if(empty($session_id)) {
	session_start();
      }
  }
  
  /**
   * Sets a session variable
   * @param string name of variable
   * @param mixed value of variable
   * @return void
   */
  function set($name,$value) {
    $_SESSION[$name] = $value;
  }
  
  /**
   * Fetches a session variable
   * @param string name of variable
   * @return mixed value of session varaible
   */
  function get($name) {
    if (isset($_SESSION[$name])) {
	return $_SESSION[$name];
    } else {
	return false;
    }
  }

  /**
   * Deletes a session variable
   * @param string name of variable
   * @return boolean
   */
  function remove($name) {
    if (isset($_SESSION[$name])) {
	unset($_SESSION[$name]);
	return true;
    } else {
	return false;
    }
  }

  /**
   * Delete the whole session
   * @return void
   */
  function destroy() {
    $_SESSION = array();
    session_destroy();
  }

  /**
   * Delete the whole session
   * @return void
   */
  function dump() {
    echo "<pre>";
    print_r($_SESSION);
    echo "</pre>\n";
  }
}//End class
?>