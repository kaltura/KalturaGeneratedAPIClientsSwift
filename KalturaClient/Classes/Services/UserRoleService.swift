// ===================================================================================================
//                           _  __     _ _
//                          | |/ /__ _| | |_ _  _ _ _ __ _
//                          | ' </ _` | |  _| || | '_/ _` |
//                          |_|\_\__,_|_|\__|\_,_|_| \__,_|
//
// This file is part of the Kaltura Collaborative Media Suite which allows users
// to do with audio, video, and animation what Wiki platforms allow them to do with
// text.
//
// Copyright (C) 2006-2021  Kaltura Inc.
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

	public class AddTokenizer: ClientTokenizer  {
		
		public func userRole<T: UserRole.UserRoleTokenizer>() -> T {
			return T(self.append("userRole"))
		}
	}

	/**  Adds a new user role object to the account.  */
	public static func add(userRole: UserRole) -> RequestBuilder<UserRole, UserRole.UserRoleTokenizer, AddTokenizer> {
		let request: RequestBuilder<UserRole, UserRole.UserRoleTokenizer, AddTokenizer> = RequestBuilder<UserRole, UserRole.UserRoleTokenizer, AddTokenizer>(service: "userrole", action: "add")
			.setParam(key: "userRole", value: userRole)

		return request
	}

	public class CloneTokenizer: ClientTokenizer  {
		
		public var userRoleId: BaseTokenizedObject {
			get {
				return self.append("userRoleId") 
			}
		}
	}

	/**  Creates a new user role object that is a duplicate of an existing role.  */
	public static func clone(userRoleId: Int) -> RequestBuilder<UserRole, UserRole.UserRoleTokenizer, CloneTokenizer> {
		let request: RequestBuilder<UserRole, UserRole.UserRoleTokenizer, CloneTokenizer> = RequestBuilder<UserRole, UserRole.UserRoleTokenizer, CloneTokenizer>(service: "userrole", action: "clone")
			.setParam(key: "userRoleId", value: userRoleId)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var userRoleId: BaseTokenizedObject {
			get {
				return self.append("userRoleId") 
			}
		}
	}

	/**  Deletes an existing user role object.  */
	public static func delete(userRoleId: Int) -> RequestBuilder<UserRole, UserRole.UserRoleTokenizer, DeleteTokenizer> {
		let request: RequestBuilder<UserRole, UserRole.UserRoleTokenizer, DeleteTokenizer> = RequestBuilder<UserRole, UserRole.UserRoleTokenizer, DeleteTokenizer>(service: "userrole", action: "delete")
			.setParam(key: "userRoleId", value: userRoleId)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var userRoleId: BaseTokenizedObject {
			get {
				return self.append("userRoleId") 
			}
		}
	}

	/**  Retrieves a user role object using its ID.  */
	public static func get(userRoleId: Int) -> RequestBuilder<UserRole, UserRole.UserRoleTokenizer, GetTokenizer> {
		let request: RequestBuilder<UserRole, UserRole.UserRoleTokenizer, GetTokenizer> = RequestBuilder<UserRole, UserRole.UserRoleTokenizer, GetTokenizer>(service: "userrole", action: "get")
			.setParam(key: "userRoleId", value: userRoleId)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: UserRoleFilter.UserRoleFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<UserRoleListResponse, UserRoleListResponse.UserRoleListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: UserRoleFilter?) -> RequestBuilder<UserRoleListResponse, UserRoleListResponse.UserRoleListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  Lists user role objects that are associated with an account.   Blocked user
	  roles are listed unless you use a filter to exclude them.   Deleted user roles
	  are not listed unless you use a filter to include them.  */
	public static func list(filter: UserRoleFilter?, pager: FilterPager?) -> RequestBuilder<UserRoleListResponse, UserRoleListResponse.UserRoleListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<UserRoleListResponse, UserRoleListResponse.UserRoleListResponseTokenizer, ListTokenizer> = RequestBuilder<UserRoleListResponse, UserRoleListResponse.UserRoleListResponseTokenizer, ListTokenizer>(service: "userrole", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var userRoleId: BaseTokenizedObject {
			get {
				return self.append("userRoleId") 
			}
		}
		
		public func userRole<T: UserRole.UserRoleTokenizer>() -> T {
			return T(self.append("userRole"))
		}
	}

	/**  Updates an existing user role object.  */
	public static func update(userRoleId: Int, userRole: UserRole) -> RequestBuilder<UserRole, UserRole.UserRoleTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<UserRole, UserRole.UserRoleTokenizer, UpdateTokenizer> = RequestBuilder<UserRole, UserRole.UserRoleTokenizer, UpdateTokenizer>(service: "userrole", action: "update")
			.setParam(key: "userRoleId", value: userRoleId)
			.setParam(key: "userRole", value: userRole)

		return request
	}
}
