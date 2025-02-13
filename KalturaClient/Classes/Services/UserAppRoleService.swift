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
// Copyright (C) 2006-2023  Kaltura Inc.
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

/**  Manage application based roles for user  */
public final class UserAppRoleService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func userAppRole<T: UserAppRole.UserAppRoleTokenizer>() -> T {
			return T(self.append("userAppRole"))
		}
	}

	/**  Assign an application role for a user  */
	public static func add(userAppRole: UserAppRole) -> RequestBuilder<UserAppRole, UserAppRole.UserAppRoleTokenizer, AddTokenizer> {
		let request: RequestBuilder<UserAppRole, UserAppRole.UserAppRoleTokenizer, AddTokenizer> = RequestBuilder<UserAppRole, UserAppRole.UserAppRoleTokenizer, AddTokenizer>(service: "userapprole", action: "add")
			.setParam(key: "userAppRole", value: userAppRole)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var appGuid: BaseTokenizedObject {
			get {
				return self.append("appGuid") 
			}
		}
	}

	/**  Delete an application role for a user and app guid  */
	public static func delete(userId: String, appGuid: String) -> RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, DeleteTokenizer>(service: "userapprole", action: "delete")
			.setParam(key: "userId", value: userId)
			.setParam(key: "appGuid", value: appGuid)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var appGuid: BaseTokenizedObject {
			get {
				return self.append("appGuid") 
			}
		}
	}

	/**  Get an application role for a user and app guid  */
	public static func get(userId: String, appGuid: String) -> RequestBuilder<UserAppRole, UserAppRole.UserAppRoleTokenizer, GetTokenizer> {
		let request: RequestBuilder<UserAppRole, UserAppRole.UserAppRoleTokenizer, GetTokenizer> = RequestBuilder<UserAppRole, UserAppRole.UserAppRoleTokenizer, GetTokenizer>(service: "userapprole", action: "get")
			.setParam(key: "userId", value: userId)
			.setParam(key: "appGuid", value: appGuid)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: UserAppRoleFilter.UserAppRoleFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<UserAppRoleListResponse, UserAppRoleListResponse.UserAppRoleListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: UserAppRoleFilter?) -> RequestBuilder<UserAppRoleListResponse, UserAppRoleListResponse.UserAppRoleListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List an application roles by filter and pager  */
	public static func list(filter: UserAppRoleFilter?, pager: FilterPager?) -> RequestBuilder<UserAppRoleListResponse, UserAppRoleListResponse.UserAppRoleListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<UserAppRoleListResponse, UserAppRoleListResponse.UserAppRoleListResponseTokenizer, ListTokenizer> = RequestBuilder<UserAppRoleListResponse, UserAppRoleListResponse.UserAppRoleListResponseTokenizer, ListTokenizer>(service: "userapprole", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var appGuid: BaseTokenizedObject {
			get {
				return self.append("appGuid") 
			}
		}
		
		public func userAppRole<T: UserAppRole.UserAppRoleTokenizer>() -> T {
			return T(self.append("userAppRole"))
		}
	}

	/**  Update an application role for a user  */
	public static func update(userId: String, appGuid: String, userAppRole: UserAppRole) -> RequestBuilder<UserAppRole, UserAppRole.UserAppRoleTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<UserAppRole, UserAppRole.UserAppRoleTokenizer, UpdateTokenizer> = RequestBuilder<UserAppRole, UserAppRole.UserAppRoleTokenizer, UpdateTokenizer>(service: "userapprole", action: "update")
			.setParam(key: "userId", value: userId)
			.setParam(key: "appGuid", value: appGuid)
			.setParam(key: "userAppRole", value: userAppRole)

		return request
	}
}
