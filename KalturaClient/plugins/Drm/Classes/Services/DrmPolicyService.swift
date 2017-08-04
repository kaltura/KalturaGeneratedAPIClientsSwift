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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

public final class DrmPolicyService{

	/**  Allows you to add a new DrmPolicy object  */
	public static func add(drmPolicy: DrmPolicy) -> RequestBuilder<DrmPolicy> {
		let request: RequestBuilder<DrmPolicy> = RequestBuilder<DrmPolicy>(service: "drm_drmpolicy", action: "add")
			.setBody(key: "drmPolicy", value: drmPolicy)

		return request
	}

	/**  Mark the KalturaDrmPolicy object as deleted  */
	public static func delete(drmPolicyId: Int) -> RequestBuilder<DrmPolicy> {
		let request: RequestBuilder<DrmPolicy> = RequestBuilder<DrmPolicy>(service: "drm_drmpolicy", action: "delete")
			.setBody(key: "drmPolicyId", value: drmPolicyId)

		return request
	}

	/**  Retrieve a KalturaDrmPolicy object by ID  */
	public static func get(drmPolicyId: Int) -> RequestBuilder<DrmPolicy> {
		let request: RequestBuilder<DrmPolicy> = RequestBuilder<DrmPolicy>(service: "drm_drmpolicy", action: "get")
			.setBody(key: "drmPolicyId", value: drmPolicyId)

		return request
	}

	public static func list() -> RequestBuilder<DrmPolicyListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: DrmPolicyFilter?) -> RequestBuilder<DrmPolicyListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List KalturaDrmPolicy objects  */
	public static func list(filter: DrmPolicyFilter?, pager: FilterPager?) -> RequestBuilder<DrmPolicyListResponse> {
		let request: RequestBuilder<DrmPolicyListResponse> = RequestBuilder<DrmPolicyListResponse>(service: "drm_drmpolicy", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Update an existing KalturaDrmPolicy object  */
	public static func update(drmPolicyId: Int, drmPolicy: DrmPolicy) -> RequestBuilder<DrmPolicy> {
		let request: RequestBuilder<DrmPolicy> = RequestBuilder<DrmPolicy>(service: "drm_drmpolicy", action: "update")
			.setBody(key: "drmPolicyId", value: drmPolicyId)
			.setBody(key: "drmPolicy", value: drmPolicy)

		return request
	}
}
