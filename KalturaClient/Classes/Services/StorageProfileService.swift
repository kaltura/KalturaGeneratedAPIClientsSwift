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

/**  Storage Profiles service  */
public final class StorageProfileService{

	/**  Adds a storage profile to the Kaltura DB.  */
	public static func add(storageProfile: StorageProfile) -> RequestBuilder<StorageProfile> {
		let request: RequestBuilder<StorageProfile> = RequestBuilder<StorageProfile>(service: "storageprofile", action: "add")
			.setBody(key: "storageProfile", value: storageProfile)

		return request
	}

	/**  Get storage profile by id  */
	public static func get(storageProfileId: Int) -> RequestBuilder<StorageProfile> {
		let request: RequestBuilder<StorageProfile> = RequestBuilder<StorageProfile>(service: "storageprofile", action: "get")
			.setBody(key: "storageProfileId", value: storageProfileId)

		return request
	}

	public static func list() -> RequestBuilder<StorageProfileListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: StorageProfileFilter?) -> RequestBuilder<StorageProfileListResponse> {
		return list(filter: filter, pager: nil)
	}

	public static func list(filter: StorageProfileFilter?, pager: FilterPager?) -> RequestBuilder<StorageProfileListResponse> {
		let request: RequestBuilder<StorageProfileListResponse> = RequestBuilder<StorageProfileListResponse>(service: "storageprofile", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Update storage profile by id  */
	public static func update(storageProfileId: Int, storageProfile: StorageProfile) -> RequestBuilder<StorageProfile> {
		let request: RequestBuilder<StorageProfile> = RequestBuilder<StorageProfile>(service: "storageprofile", action: "update")
			.setBody(key: "storageProfileId", value: storageProfileId)
			.setBody(key: "storageProfile", value: storageProfile)

		return request
	}

	public static func updateStatus(storageId: Int, status: StorageProfileStatus) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "storageprofile", action: "updateStatus")
			.setBody(key: "storageId", value: storageId)
			.setBody(key: "status", value: status.rawValue)

		return request
	}
}
