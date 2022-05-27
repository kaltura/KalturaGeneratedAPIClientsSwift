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

/**  Manage access control profiles  */
public final class AccessControlProfileService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func accessControlProfile<T: AccessControlProfile.AccessControlProfileTokenizer>() -> T {
			return T(self.append("accessControlProfile"))
		}
	}

	/**  Add new access control profile  */
	public static func add(accessControlProfile: AccessControlProfile) -> RequestBuilder<AccessControlProfile, AccessControlProfile.AccessControlProfileTokenizer, AddTokenizer> {
		let request: RequestBuilder<AccessControlProfile, AccessControlProfile.AccessControlProfileTokenizer, AddTokenizer> = RequestBuilder<AccessControlProfile, AccessControlProfile.AccessControlProfileTokenizer, AddTokenizer>(service: "accesscontrolprofile", action: "add")
			.setParam(key: "accessControlProfile", value: accessControlProfile)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete access control profile by id  */
	public static func delete(id: Int64) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "accesscontrolprofile", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Get access control profile by id  */
	public static func get(id: Int64) -> RequestBuilder<AccessControlProfile, AccessControlProfile.AccessControlProfileTokenizer, GetTokenizer> {
		let request: RequestBuilder<AccessControlProfile, AccessControlProfile.AccessControlProfileTokenizer, GetTokenizer> = RequestBuilder<AccessControlProfile, AccessControlProfile.AccessControlProfileTokenizer, GetTokenizer>(service: "accesscontrolprofile", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: AccessControlProfileFilter.AccessControlProfileFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<AccessControlProfileListResponse, AccessControlProfileListResponse.AccessControlProfileListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: AccessControlProfileFilter?) -> RequestBuilder<AccessControlProfileListResponse, AccessControlProfileListResponse.AccessControlProfileListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List access control profiles by filter and pager  */
	public static func list(filter: AccessControlProfileFilter?, pager: FilterPager?) -> RequestBuilder<AccessControlProfileListResponse, AccessControlProfileListResponse.AccessControlProfileListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<AccessControlProfileListResponse, AccessControlProfileListResponse.AccessControlProfileListResponseTokenizer, ListTokenizer> = RequestBuilder<AccessControlProfileListResponse, AccessControlProfileListResponse.AccessControlProfileListResponseTokenizer, ListTokenizer>(service: "accesscontrolprofile", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func accessControlProfile<T: AccessControlProfile.AccessControlProfileTokenizer>() -> T {
			return T(self.append("accessControlProfile"))
		}
	}

	/**  Update access control profile by id  */
	public static func update(id: Int64, accessControlProfile: AccessControlProfile) -> RequestBuilder<AccessControlProfile, AccessControlProfile.AccessControlProfileTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<AccessControlProfile, AccessControlProfile.AccessControlProfileTokenizer, UpdateTokenizer> = RequestBuilder<AccessControlProfile, AccessControlProfile.AccessControlProfileTokenizer, UpdateTokenizer>(service: "accesscontrolprofile", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "accessControlProfile", value: accessControlProfile)

		return request
	}
}
