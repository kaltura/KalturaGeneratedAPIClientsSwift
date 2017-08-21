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

/**  Manage response profiles  */
public final class ResponseProfileService{

	/**  Add new response profile  */
	public static func add(addResponseProfile: ResponseProfile) -> RequestBuilder<ResponseProfile> {
		let request: RequestBuilder<ResponseProfile> = RequestBuilder<ResponseProfile>(service: "responseprofile", action: "add")
			.setBody(key: "addResponseProfile", value: addResponseProfile)

		return request
	}

	/**  Clone an existing response profile  */
	public static func clone(id: Int, profile: ResponseProfile) -> RequestBuilder<ResponseProfile> {
		let request: RequestBuilder<ResponseProfile> = RequestBuilder<ResponseProfile>(service: "responseprofile", action: "clone")
			.setBody(key: "id", value: id)
			.setBody(key: "profile", value: profile)

		return request
	}

	/**  Delete response profile by id  */
	public static func delete(id: Int) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "responseprofile", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Get response profile by id  */
	public static func get(id: Int) -> RequestBuilder<ResponseProfile> {
		let request: RequestBuilder<ResponseProfile> = RequestBuilder<ResponseProfile>(service: "responseprofile", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public static func list() -> RequestBuilder<ResponseProfileListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: ResponseProfileFilter?) -> RequestBuilder<ResponseProfileListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List response profiles by filter and pager  */
	public static func list(filter: ResponseProfileFilter?, pager: FilterPager?) -> RequestBuilder<ResponseProfileListResponse> {
		let request: RequestBuilder<ResponseProfileListResponse> = RequestBuilder<ResponseProfileListResponse>(service: "responseprofile", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Recalculate response profile cached objects  */
	public static func recalculate(options: ResponseProfileCacheRecalculateOptions) -> RequestBuilder<ResponseProfileCacheRecalculateResults> {
		let request: RequestBuilder<ResponseProfileCacheRecalculateResults> = RequestBuilder<ResponseProfileCacheRecalculateResults>(service: "responseprofile", action: "recalculate")
			.setBody(key: "options", value: options)

		return request
	}

	/**  Update response profile by id  */
	public static func update(id: Int, updateResponseProfile: ResponseProfile) -> RequestBuilder<ResponseProfile> {
		let request: RequestBuilder<ResponseProfile> = RequestBuilder<ResponseProfile>(service: "responseprofile", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "updateResponseProfile", value: updateResponseProfile)

		return request
	}

	/**  Update response profile status by id  */
	public static func updateStatus(id: Int, status: ResponseProfileStatus) -> RequestBuilder<ResponseProfile> {
		let request: RequestBuilder<ResponseProfile> = RequestBuilder<ResponseProfile>(service: "responseprofile", action: "updateStatus")
			.setBody(key: "id", value: id)
			.setBody(key: "status", value: status.rawValue)

		return request
	}
}
