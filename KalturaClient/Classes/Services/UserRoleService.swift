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

/**  UserRole service lets you create and manage user roles  */
public final class UserRoleService{

	/**  Adds a new user role object to the account.  */
	public static func add(userRole: UserRole) -> RequestBuilder<UserRole> {
		let request: RequestBuilder<UserRole> = RequestBuilder<UserRole>(service: "userrole", action: "add")
			.setBody(key: "userRole", value: userRole)

		return request
	}

	/**  Creates a new user role object that is a duplicate of an existing role.  */
	public static func clone(userRoleId: Int) -> RequestBuilder<UserRole> {
		let request: RequestBuilder<UserRole> = RequestBuilder<UserRole>(service: "userrole", action: "clone")
			.setBody(key: "userRoleId", value: userRoleId)

		return request
	}

	/**  Deletes an existing user role object.  */
	public static func delete(userRoleId: Int) -> RequestBuilder<UserRole> {
		let request: RequestBuilder<UserRole> = RequestBuilder<UserRole>(service: "userrole", action: "delete")
			.setBody(key: "userRoleId", value: userRoleId)

		return request
	}

	/**  Retrieves a user role object using its ID.  */
	public static func get(userRoleId: Int) -> RequestBuilder<UserRole> {
		let request: RequestBuilder<UserRole> = RequestBuilder<UserRole>(service: "userrole", action: "get")
			.setBody(key: "userRoleId", value: userRoleId)

		return request
	}

	public static func list() -> RequestBuilder<UserRoleListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: UserRoleFilter?) -> RequestBuilder<UserRoleListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  Lists user role objects that are associated with an account.   Blocked user
	  roles are listed unless you use a filter to exclude them.   Deleted user roles
	  are not listed unless you use a filter to include them.  */
	public static func list(filter: UserRoleFilter?, pager: FilterPager?) -> RequestBuilder<UserRoleListResponse> {
		let request: RequestBuilder<UserRoleListResponse> = RequestBuilder<UserRoleListResponse>(service: "userrole", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Updates an existing user role object.  */
	public static func update(userRoleId: Int, userRole: UserRole) -> RequestBuilder<UserRole> {
		let request: RequestBuilder<UserRole> = RequestBuilder<UserRole>(service: "userrole", action: "update")
			.setBody(key: "userRoleId", value: userRoleId)
			.setBody(key: "userRole", value: userRole)

		return request
	}
}
