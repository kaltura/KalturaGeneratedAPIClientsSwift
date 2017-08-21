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

/**  Manage access control profiles  */
public final class AccessControlProfileService{

	/**  Add new access control profile  */
	public static func add(accessControlProfile: AccessControlProfile) -> RequestBuilder<AccessControlProfile> {
		let request: RequestBuilder<AccessControlProfile> = RequestBuilder<AccessControlProfile>(service: "accesscontrolprofile", action: "add")
			.setBody(key: "accessControlProfile", value: accessControlProfile)

		return request
	}

	/**  Delete access control profile by id  */
	public static func delete(id: Int) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "accesscontrolprofile", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Get access control profile by id  */
	public static func get(id: Int) -> RequestBuilder<AccessControlProfile> {
		let request: RequestBuilder<AccessControlProfile> = RequestBuilder<AccessControlProfile>(service: "accesscontrolprofile", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public static func list() -> RequestBuilder<AccessControlProfileListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: AccessControlProfileFilter?) -> RequestBuilder<AccessControlProfileListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List access control profiles by filter and pager  */
	public static func list(filter: AccessControlProfileFilter?, pager: FilterPager?) -> RequestBuilder<AccessControlProfileListResponse> {
		let request: RequestBuilder<AccessControlProfileListResponse> = RequestBuilder<AccessControlProfileListResponse>(service: "accesscontrolprofile", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Update access control profile by id  */
	public static func update(id: Int, accessControlProfile: AccessControlProfile) -> RequestBuilder<AccessControlProfile> {
		let request: RequestBuilder<AccessControlProfile> = RequestBuilder<AccessControlProfile>(service: "accesscontrolprofile", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "accessControlProfile", value: accessControlProfile)

		return request
	}
}
