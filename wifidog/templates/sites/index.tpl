{*

/* vim: set expandtab tabstop=4 shiftwidth=4 softtabstop=4: */

// +-------------------------------------------------------------------+
// | WiFiDog Authentication Server                                     |
// | =============================                                     |
// |                                                                   |
// | The WiFiDog Authentication Server is part of the WiFiDog captive  |
// | portal suite.                                                     |
// +-------------------------------------------------------------------+
// | PHP version 5 required.                                           |
// +-------------------------------------------------------------------+
// | Homepage:     http://www.wifidog.org/                             |
// | Source Forge: http://sourceforge.net/projects/wifidog/            |
// +-------------------------------------------------------------------+
// | This program is free software; you can redistribute it and/or     |
// | modify it under the terms of the GNU General Public License as    |
// | published by the Free Software Foundation; either version 2 of    |
// | the License, or (at your option) any later version.               |
// |                                                                   |
// | This program is distributed in the hope that it will be useful,   |
// | but WITHOUT ANY WARRANTY; without even the implied warranty of    |
// | MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the     |
// | GNU General Public License for more details.                      |
// |                                                                   |
// | You should have received a copy of the GNU General Public License |
// | along with this program; if not, contact:                         |
// |                                                                   |
// | Free Software Foundation           Voice:  +1-617-542-5942        |
// | 59 Temple Place - Suite 330        Fax:    +1-617-542-2652        |
// | Boston, MA  02111-1307,  USA       gnu@gnu.org                    |
// |                                                                   |
// +-------------------------------------------------------------------+

/**
 * WiFiDog Authentication Server home page
 *
 * @package    WiFiDogAuthServer
 * @subpackage Templates
 * @author     Max Horvath <max.horvath@maxspot.de>
 * @copyright  2006 Max Horvath, maxspot GmbH
 * @version    Subversion $Id: change_password.php 914 2006-01-23 05:25:43Z max-horvath $
 * @link       http://www.wifidog.org/
 */

*}

{if $sectionTOOLCONTENT}
{*
    BEGIN section TOOLCONTENT
*}
    <div id="login_form">
        <ul>
            <li><a href="{$base_ssl_path}change_password.php">{"Change password"|_}</a></li>
            <li><a href="{$base_ssl_path}faq.php">{"I have trouble connecting and I would like some help"|_}</a></li>
        </ul>
    </div>
{*
    END section TOOLCONTENT
*}
{/if}

{if $sectionMAINCONTENT}
{*
    BEGIN section MAINCONTENT
*}
    <p>
        {"The"|_} {$networkName}
        {"network currently has"|_} {$networkNumValidUsers} {"valid"|_}
        {if $networkNumValidUsers == 1}
            {"user,"|_}
        {else}
            {"users,"|_}
        {/if}
        {$networkNumOnlineUsers}
        {if $networkNumOnlineUsers == 1}
            {"user is"|_}
        {else}
            {"users are"|_}
        {/if}
        {"currently online"|_}.
        <br>
        {"It currently has"|_} {$networkNumDeployedNodes} {"deployed"|_}
        {if $networkNumDeployedNodes == 1}
            {"hotspot,"|_}
        {else}
            {"hotspots,"|_}
        {/if}
        {$networkNumOnlineNodes}
        {if $networkNumOnlineNodes == 1}
            {"hotspot is"|_}
        {else}
            {"hotspots are"|_}
        {/if}
        {"currently operational"|_}.
    </p>

    <ul>
        {if $googleMapsEnabled && !$userIsAtHotspot}
            <li><a href="{$base_ssl_path}hotspots_map.php">{"Deployed HotSpots map"|_}</a></li>
        {/if}
        <li><a href="{$base_ssl_path}hotspot_status.php">{"Deployed HotSpots status with coordinates"|_}</a></li>
        <li><a href="{$base_ssl_path}node_list.php">{"Full node technical status (includes non-deployed nodes)"|_}</a></li>
        <li><a href="{$base_ssl_path}admin/index.php">{"Administration"|_}</a></li>
    </ul>
{*
    END section MAINCONTENT
*}
{/if}