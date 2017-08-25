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

	public class AddTokenizer: ClientTokenizer  {
		
		public var permission: Permission.PermissionTokenizer {
			get {
				return Permission.PermissionTokenizer(self.append("permission")) 
			}
		}
	}

	/**  Adds a new permission object to the account.  */
	public static func add(permission: Permission) -> RequestBuilder<Permission, Permission.PermissionTokenizer, AddTokenizer> {
		let request: RequestBuilder<Permission, Permission.PermissionTokenizer, AddTokenizer> = RequestBuilder<Permission, Permission.PermissionTokenizer, AddTokenizer>(service: "permission", action: "add")
			.setBody(key: "permission", value: permission)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var permissionName: BaseTokenizedObject {
			get {
				return self.append("permissionName") 
			}
		}
	}

	/**  Deletes an existing permission object.  */
	public static func delete(permissionName: String) -> RequestBuilder<Permission, Permission.PermissionTokenizer, DeleteTokenizer> {
		let request: RequestBuilder<Permission, Permission.PermissionTokenizer, DeleteTokenizer> = RequestBuilder<Permission, Permission.PermissionTokenizer, DeleteTokenizer>(service: "permission", action: "delete")
			.setBody(key: "permissionName", value: permissionName)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var permissionName: BaseTokenizedObject {
			get {
				return self.append("permissionName") 
			}
		}
	}

	/**  Retrieves a permission object using its ID.  */
	public static func get(permissionName: String) -> RequestBuilder<Permission, Permission.PermissionTokenizer, GetTokenizer> {
		let request: RequestBuilder<Permission, Permission.PermissionTokenizer, GetTokenizer> = RequestBuilder<Permission, Permission.PermissionTokenizer, GetTokenizer>(service: "permission", action: "get")
			.setBody(key: "permissionName", value: permissionName)

		return request
	}

	public class GetCurrentPermissionsTokenizer: ClientTokenizer  {
	}

	/**  Retrieves a list of permissions that apply to the current KS.  */
	public static func getCurrentPermissions() -> RequestBuilder<String, BaseTokenizedObject, GetCurrentPermissionsTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, GetCurrentPermissionsTokenizer> = RequestBuilder<String, BaseTokenizedObject, GetCurrentPermissionsTokenizer>(service: "permission", action: "getCurrentPermissions")

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public var filter: PermissionFilter.PermissionFilterTokenizer {
			get {
				return PermissionFilter.PermissionFilterTokenizer(self.append("filter")) 
			}
		}
		
		public var pager: FilterPager.FilterPagerTokenizer {
			get {
				return FilterPager.FilterPagerTokenizer(self.append("pager")) 
			}
		}
	}

	public static func list() -> RequestBuilder<PermissionListResponse, PermissionListResponse.PermissionListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: PermissionFilter?) -> RequestBuilder<PermissionListResponse, PermissionListResponse.PermissionListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  Lists permission objects that are associated with an account.   Blocked
	  permissions are listed unless you use a filter to exclude them.   Blocked
	  permissions are listed unless you use a filter to exclude them.  */
	public static func list(filter: PermissionFilter?, pager: FilterPager?) -> RequestBuilder<PermissionListResponse, PermissionListResponse.PermissionListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<PermissionListResponse, PermissionListResponse.PermissionListResponseTokenizer, ListTokenizer> = RequestBuilder<PermissionListResponse, PermissionListResponse.PermissionListResponseTokenizer, ListTokenizer>(service: "permission", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var permissionName: BaseTokenizedObject {
			get {
				return self.append("permissionName") 
			}
		}
		
		public var permission: Permission.PermissionTokenizer {
			get {
				return Permission.PermissionTokenizer(self.append("permission")) 
			}
		}
	}

	/**  Updates an existing permission object.  */
	public static func update(permissionName: String, permission: Permission) -> RequestBuilder<Permission, Permission.PermissionTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<Permission, Permission.PermissionTokenizer, UpdateTokenizer> = RequestBuilder<Permission, Permission.PermissionTokenizer, UpdateTokenizer>(service: "permission", action: "update")
			.setBody(key: "permissionName", value: permissionName)
			.setBody(key: "permission", value: permission)

		return request
	}
}
