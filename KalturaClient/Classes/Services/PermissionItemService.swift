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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

/**  PermissionItem service lets you create and manage permission items  */
public final class PermissionItemService{

	/**  Adds a new permission item object to the account.   This action is available
	  only to Kaltura system administrators.  */
	public static func add(permissionItem: PermissionItem) -> RequestBuilder<PermissionItem> {
		let request: RequestBuilder<PermissionItem> = RequestBuilder<PermissionItem>(service: "permissionitem", action: "add")
			.setBody(key: "permissionItem", value: permissionItem)

		return request
	}

	/**  Deletes an existing permission item object.   This action is available only to
	  Kaltura system administrators.  */
	public static func delete(permissionItemId: Int) -> RequestBuilder<PermissionItem> {
		let request: RequestBuilder<PermissionItem> = RequestBuilder<PermissionItem>(service: "permissionitem", action: "delete")
			.setBody(key: "permissionItemId", value: permissionItemId)

		return request
	}

	/**  Retrieves a permission item object using its ID.  */
	public static func get(permissionItemId: Int) -> RequestBuilder<PermissionItem> {
		let request: RequestBuilder<PermissionItem> = RequestBuilder<PermissionItem>(service: "permissionitem", action: "get")
			.setBody(key: "permissionItemId", value: permissionItemId)

		return request
	}

	public static func list() -> RequestBuilder<PermissionItemListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: PermissionItemFilter?) -> RequestBuilder<PermissionItemListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  Lists permission item objects that are associated with an account.  */
	public static func list(filter: PermissionItemFilter?, pager: FilterPager?) -> RequestBuilder<PermissionItemListResponse> {
		let request: RequestBuilder<PermissionItemListResponse> = RequestBuilder<PermissionItemListResponse>(service: "permissionitem", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Updates an existing permission item object.   This action is available only to
	  Kaltura system administrators.  */
	public static func update(permissionItemId: Int, permissionItem: PermissionItem) -> RequestBuilder<PermissionItem> {
		let request: RequestBuilder<PermissionItem> = RequestBuilder<PermissionItem>(service: "permissionitem", action: "update")
			.setBody(key: "permissionItemId", value: permissionItemId)
			.setBody(key: "permissionItem", value: permissionItem)

		return request
	}
}
