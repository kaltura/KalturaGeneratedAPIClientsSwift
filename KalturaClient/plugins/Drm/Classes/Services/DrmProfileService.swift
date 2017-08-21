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

public final class DrmProfileService{

	/**  Allows you to add a new DrmProfile object  */
	public static func add(drmProfile: DrmProfile) -> RequestBuilder<DrmProfile> {
		let request: RequestBuilder<DrmProfile> = RequestBuilder<DrmProfile>(service: "drm_drmprofile", action: "add")
			.setBody(key: "drmProfile", value: drmProfile)

		return request
	}

	/**  Mark the KalturaDrmProfile object as deleted  */
	public static func delete(drmProfileId: Int) -> RequestBuilder<DrmProfile> {
		let request: RequestBuilder<DrmProfile> = RequestBuilder<DrmProfile>(service: "drm_drmprofile", action: "delete")
			.setBody(key: "drmProfileId", value: drmProfileId)

		return request
	}

	/**  Retrieve a KalturaDrmProfile object by ID  */
	public static func get(drmProfileId: Int) -> RequestBuilder<DrmProfile> {
		let request: RequestBuilder<DrmProfile> = RequestBuilder<DrmProfile>(service: "drm_drmprofile", action: "get")
			.setBody(key: "drmProfileId", value: drmProfileId)

		return request
	}

	/**  Retrieve a KalturaDrmProfile object by provider, if no specific profile defined
	  return default profile  */
	public static func getByProvider(provider: DrmProviderType) -> RequestBuilder<DrmProfile> {
		let request: RequestBuilder<DrmProfile> = RequestBuilder<DrmProfile>(service: "drm_drmprofile", action: "getByProvider")
			.setBody(key: "provider", value: provider.rawValue)

		return request
	}

	public static func list() -> RequestBuilder<DrmProfileListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: DrmProfileFilter?) -> RequestBuilder<DrmProfileListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List KalturaDrmProfile objects  */
	public static func list(filter: DrmProfileFilter?, pager: FilterPager?) -> RequestBuilder<DrmProfileListResponse> {
		let request: RequestBuilder<DrmProfileListResponse> = RequestBuilder<DrmProfileListResponse>(service: "drm_drmprofile", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Update an existing KalturaDrmProfile object  */
	public static func update(drmProfileId: Int, drmProfile: DrmProfile) -> RequestBuilder<DrmProfile> {
		let request: RequestBuilder<DrmProfile> = RequestBuilder<DrmProfile>(service: "drm_drmprofile", action: "update")
			.setBody(key: "drmProfileId", value: drmProfileId)
			.setBody(key: "drmProfile", value: drmProfile)

		return request
	}
}
