// ===================================================================================================
//                           _  __     _ _
//                          | |/ /__ _| | |_ _  _ _ _ __ _
//                          | ' </ _` | |  _| || | '_/ _` |
//                          |_|\_\__,_|_|\__|\_,_|_| \__,_|
//
// This file is part of the Kaltura Collaborative Media Suite which allows users
// to do with audio, video, and animation what Wiki platfroms allow them to do with
// text.
//
// Copyright (C) 2006-2017  Kaltura Inc.
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as
// published by the Free Software Foundation, either version 3 of the
// License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
// @ignore
// ===================================================================================================

/**
 * This class was generated using generate.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

/**  Permission service lets you create and manage user permissions  */
public final class PermissionService{

	/**  Adds a new permission object to the account.  */
	public static func add(permission: Permission) -> RequestBuilder<Permission> {
		let request: RequestBuilder<Permission> = RequestBuilder<Permission>(service: "permission", action: "add")
			.setBody(key: "permission", value: permission)

		return request
	}

	/**  Deletes an existing permission object.  */
	public static func delete(permissionName: String) -> RequestBuilder<Permission> {
		let request: RequestBuilder<Permission> = RequestBuilder<Permission>(service: "permission", action: "delete")
			.setBody(key: "permissionName", value: permissionName)

		return request
	}

	/**  Retrieves a permission object using its ID.  */
	public static func get(permissionName: String) -> RequestBuilder<Permission> {
		let request: RequestBuilder<Permission> = RequestBuilder<Permission>(service: "permission", action: "get")
			.setBody(key: "permissionName", value: permissionName)

		return request
	}

	/**  Retrieves a list of permissions that apply to the current KS.  */
	public static func getCurrentPermissions() -> RequestBuilder<String> {
		let request: RequestBuilder<String> = RequestBuilder<String>(service: "permission", action: "getCurrentPermissions")

		return request
	}

	public static func list() -> RequestBuilder<PermissionListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: PermissionFilter?) -> RequestBuilder<PermissionListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  Lists permission objects that are associated with an account.   Blocked
	  permissions are listed unless you use a filter to exclude them.   Blocked
	  permissions are listed unless you use a filter to exclude them.  */
	public static func list(filter: PermissionFilter?, pager: FilterPager?) -> RequestBuilder<PermissionListResponse> {
		let request: RequestBuilder<PermissionListResponse> = RequestBuilder<PermissionListResponse>(service: "permission", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Updates an existing permission object.  */
	public static func update(permissionName: String, permission: Permission) -> RequestBuilder<Permission> {
		let request: RequestBuilder<Permission> = RequestBuilder<Permission>(service: "permission", action: "update")
			.setBody(key: "permissionName", value: permissionName)
			.setBody(key: "permission", value: permission)

		return request
	}
}
