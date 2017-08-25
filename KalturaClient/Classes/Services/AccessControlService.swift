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

/**  Add &amp; Manage Access Controls  */
public final class AccessControlService{

	public class AddTokenizer: ClientTokenizer  {
		
		public var accessControl: AccessControl.AccessControlTokenizer {
			get {
				return AccessControl.AccessControlTokenizer(self.append("accessControl")) 
			}
		}
	}

	/**  Add new Access Control Profile  */
	public static func add(accessControl: AccessControl) -> RequestBuilder<AccessControl, AccessControl.AccessControlTokenizer, AddTokenizer> {
		let request: RequestBuilder<AccessControl, AccessControl.AccessControlTokenizer, AddTokenizer> = RequestBuilder<AccessControl, AccessControl.AccessControlTokenizer, AddTokenizer>(service: "accesscontrol", action: "add")
			.setBody(key: "accessControl", value: accessControl)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete Access Control Profile by id  */
	public static func delete(id: Int) -> NullRequestBuilder {
		let request: NullRequestBuilder = NullRequestBuilder(service: "accesscontrol", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Get Access Control Profile by id  */
	public static func get(id: Int) -> RequestBuilder<AccessControl, AccessControl.AccessControlTokenizer, GetTokenizer> {
		let request: RequestBuilder<AccessControl, AccessControl.AccessControlTokenizer, GetTokenizer> = RequestBuilder<AccessControl, AccessControl.AccessControlTokenizer, GetTokenizer>(service: "accesscontrol", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public var filter: AccessControlFilter.AccessControlFilterTokenizer {
			get {
				return AccessControlFilter.AccessControlFilterTokenizer(self.append("filter")) 
			}
		}
		
		public var pager: FilterPager.FilterPagerTokenizer {
			get {
				return FilterPager.FilterPagerTokenizer(self.append("pager")) 
			}
		}
	}

	public static func list() -> RequestBuilder<AccessControlListResponse, AccessControlListResponse.AccessControlListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: AccessControlFilter?) -> RequestBuilder<AccessControlListResponse, AccessControlListResponse.AccessControlListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List Access Control Profiles by filter and pager  */
	public static func list(filter: AccessControlFilter?, pager: FilterPager?) -> RequestBuilder<AccessControlListResponse, AccessControlListResponse.AccessControlListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<AccessControlListResponse, AccessControlListResponse.AccessControlListResponseTokenizer, ListTokenizer> = RequestBuilder<AccessControlListResponse, AccessControlListResponse.AccessControlListResponseTokenizer, ListTokenizer>(service: "accesscontrol", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var accessControl: AccessControl.AccessControlTokenizer {
			get {
				return AccessControl.AccessControlTokenizer(self.append("accessControl")) 
			}
		}
	}

	/**  Update Access Control Profile by id  */
	public static func update(id: Int, accessControl: AccessControl) -> RequestBuilder<AccessControl, AccessControl.AccessControlTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<AccessControl, AccessControl.AccessControlTokenizer, UpdateTokenizer> = RequestBuilder<AccessControl, AccessControl.AccessControlTokenizer, UpdateTokenizer>(service: "accesscontrol", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "accessControl", value: accessControl)

		return request
	}
}
