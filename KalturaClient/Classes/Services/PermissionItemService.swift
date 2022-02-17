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
// Copyright (C) 2006-2022  Kaltura Inc.
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

/**  PermissionItem service lets you create and manage permission items  */
public final class PermissionItemService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func permissionItem<T: PermissionItem.PermissionItemTokenizer>() -> T {
			return T(self.append("permissionItem"))
		}
	}

	/**  Adds a new permission item object to the account.   This action is available
	  only to Kaltura system administrators.  */
	public static func add(permissionItem: PermissionItem) -> RequestBuilder<PermissionItem, PermissionItem.PermissionItemTokenizer, AddTokenizer> {
		let request: RequestBuilder<PermissionItem, PermissionItem.PermissionItemTokenizer, AddTokenizer> = RequestBuilder<PermissionItem, PermissionItem.PermissionItemTokenizer, AddTokenizer>(service: "permissionitem", action: "add")
			.setParam(key: "permissionItem", value: permissionItem)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var permissionItemId: BaseTokenizedObject {
			get {
				return self.append("permissionItemId") 
			}
		}
	}

	/**  Deletes an existing permission item object.   This action is available only to
	  Kaltura system administrators.  */
	public static func delete(permissionItemId: Int) -> RequestBuilder<PermissionItem, PermissionItem.PermissionItemTokenizer, DeleteTokenizer> {
		let request: RequestBuilder<PermissionItem, PermissionItem.PermissionItemTokenizer, DeleteTokenizer> = RequestBuilder<PermissionItem, PermissionItem.PermissionItemTokenizer, DeleteTokenizer>(service: "permissionitem", action: "delete")
			.setParam(key: "permissionItemId", value: permissionItemId)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var permissionItemId: BaseTokenizedObject {
			get {
				return self.append("permissionItemId") 
			}
		}
	}

	/**  Retrieves a permission item object using its ID.  */
	public static func get(permissionItemId: Int) -> RequestBuilder<PermissionItem, PermissionItem.PermissionItemTokenizer, GetTokenizer> {
		let request: RequestBuilder<PermissionItem, PermissionItem.PermissionItemTokenizer, GetTokenizer> = RequestBuilder<PermissionItem, PermissionItem.PermissionItemTokenizer, GetTokenizer>(service: "permissionitem", action: "get")
			.setParam(key: "permissionItemId", value: permissionItemId)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: PermissionItemFilter.PermissionItemFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<PermissionItemListResponse, PermissionItemListResponse.PermissionItemListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: PermissionItemFilter?) -> RequestBuilder<PermissionItemListResponse, PermissionItemListResponse.PermissionItemListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  Lists permission item objects that are associated with an account.  */
	public static func list(filter: PermissionItemFilter?, pager: FilterPager?) -> RequestBuilder<PermissionItemListResponse, PermissionItemListResponse.PermissionItemListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<PermissionItemListResponse, PermissionItemListResponse.PermissionItemListResponseTokenizer, ListTokenizer> = RequestBuilder<PermissionItemListResponse, PermissionItemListResponse.PermissionItemListResponseTokenizer, ListTokenizer>(service: "permissionitem", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var permissionItemId: BaseTokenizedObject {
			get {
				return self.append("permissionItemId") 
			}
		}
		
		public func permissionItem<T: PermissionItem.PermissionItemTokenizer>() -> T {
			return T(self.append("permissionItem"))
		}
	}

	/**  Updates an existing permission item object.   This action is available only to
	  Kaltura system administrators.  */
	public static func update(permissionItemId: Int, permissionItem: PermissionItem) -> RequestBuilder<PermissionItem, PermissionItem.PermissionItemTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<PermissionItem, PermissionItem.PermissionItemTokenizer, UpdateTokenizer> = RequestBuilder<PermissionItem, PermissionItem.PermissionItemTokenizer, UpdateTokenizer>(service: "permissionitem", action: "update")
			.setParam(key: "permissionItemId", value: permissionItemId)
			.setParam(key: "permissionItem", value: permissionItem)

		return request
	}
}
