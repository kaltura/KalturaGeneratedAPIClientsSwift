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

/**  Distribution Profile service  */
public final class DistributionProfileService{

	/**  Add new Distribution Profile  */
	public static func add(distributionProfile: DistributionProfile) -> RequestBuilder<DistributionProfile> {
		let request: RequestBuilder<DistributionProfile> = RequestBuilder<DistributionProfile>(service: "contentdistribution_distributionprofile", action: "add")
			.setBody(key: "distributionProfile", value: distributionProfile)

		return request
	}

	/**  Delete Distribution Profile by id  */
	public static func delete(id: Int) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "contentdistribution_distributionprofile", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Get Distribution Profile by id  */
	public static func get(id: Int) -> RequestBuilder<DistributionProfile> {
		let request: RequestBuilder<DistributionProfile> = RequestBuilder<DistributionProfile>(service: "contentdistribution_distributionprofile", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public static func list() -> RequestBuilder<DistributionProfileListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: DistributionProfileFilter?) -> RequestBuilder<DistributionProfileListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List all distribution providers  */
	public static func list(filter: DistributionProfileFilter?, pager: FilterPager?) -> RequestBuilder<DistributionProfileListResponse> {
		let request: RequestBuilder<DistributionProfileListResponse> = RequestBuilder<DistributionProfileListResponse>(service: "contentdistribution_distributionprofile", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public static func listByPartner() -> RequestBuilder<DistributionProfileListResponse> {
		return listByPartner(filter: nil)
	}

	public static func listByPartner(filter: PartnerFilter?) -> RequestBuilder<DistributionProfileListResponse> {
		return listByPartner(filter: filter, pager: nil)
	}

	public static func listByPartner(filter: PartnerFilter?, pager: FilterPager?) -> RequestBuilder<DistributionProfileListResponse> {
		let request: RequestBuilder<DistributionProfileListResponse> = RequestBuilder<DistributionProfileListResponse>(service: "contentdistribution_distributionprofile", action: "listByPartner")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Update Distribution Profile by id  */
	public static func update(id: Int, distributionProfile: DistributionProfile) -> RequestBuilder<DistributionProfile> {
		let request: RequestBuilder<DistributionProfile> = RequestBuilder<DistributionProfile>(service: "contentdistribution_distributionprofile", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "distributionProfile", value: distributionProfile)

		return request
	}

	/**  Update Distribution Profile status by id  */
	public static func updateStatus(id: Int, status: DistributionProfileStatus) -> RequestBuilder<DistributionProfile> {
		let request: RequestBuilder<DistributionProfile> = RequestBuilder<DistributionProfile>(service: "contentdistribution_distributionprofile", action: "updateStatus")
			.setBody(key: "id", value: id)
			.setBody(key: "status", value: status.rawValue)

		return request
	}
}
