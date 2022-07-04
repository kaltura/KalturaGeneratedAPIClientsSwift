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

/**  Distribution Profile service  */
public final class DistributionProfileService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func distributionProfile<T: DistributionProfile.DistributionProfileTokenizer>() -> T {
			return T(self.append("distributionProfile"))
		}
	}

	/**  Add new Distribution Profile  */
	public static func add(distributionProfile: DistributionProfile) -> RequestBuilder<DistributionProfile, DistributionProfile.DistributionProfileTokenizer, AddTokenizer> {
		let request: RequestBuilder<DistributionProfile, DistributionProfile.DistributionProfileTokenizer, AddTokenizer> = RequestBuilder<DistributionProfile, DistributionProfile.DistributionProfileTokenizer, AddTokenizer>(service: "contentdistribution_distributionprofile", action: "add")
			.setParam(key: "distributionProfile", value: distributionProfile)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete Distribution Profile by id  */
	public static func delete(id: Int) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "contentdistribution_distributionprofile", action: "delete")
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

	/**  Get Distribution Profile by id  */
	public static func get(id: Int) -> RequestBuilder<DistributionProfile, DistributionProfile.DistributionProfileTokenizer, GetTokenizer> {
		let request: RequestBuilder<DistributionProfile, DistributionProfile.DistributionProfileTokenizer, GetTokenizer> = RequestBuilder<DistributionProfile, DistributionProfile.DistributionProfileTokenizer, GetTokenizer>(service: "contentdistribution_distributionprofile", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: DistributionProfileFilter.DistributionProfileFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<DistributionProfileListResponse, DistributionProfileListResponse.DistributionProfileListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: DistributionProfileFilter?) -> RequestBuilder<DistributionProfileListResponse, DistributionProfileListResponse.DistributionProfileListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List all distribution providers  */
	public static func list(filter: DistributionProfileFilter?, pager: FilterPager?) -> RequestBuilder<DistributionProfileListResponse, DistributionProfileListResponse.DistributionProfileListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<DistributionProfileListResponse, DistributionProfileListResponse.DistributionProfileListResponseTokenizer, ListTokenizer> = RequestBuilder<DistributionProfileListResponse, DistributionProfileListResponse.DistributionProfileListResponseTokenizer, ListTokenizer>(service: "contentdistribution_distributionprofile", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class ListByPartnerTokenizer: ClientTokenizer  {
		
		public func filter<T: PartnerFilter.PartnerFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func listByPartner() -> RequestBuilder<DistributionProfileListResponse, DistributionProfileListResponse.DistributionProfileListResponseTokenizer, ListByPartnerTokenizer> {
		return listByPartner(filter: nil)
	}

	public static func listByPartner(filter: PartnerFilter?) -> RequestBuilder<DistributionProfileListResponse, DistributionProfileListResponse.DistributionProfileListResponseTokenizer, ListByPartnerTokenizer> {
		return listByPartner(filter: filter, pager: nil)
	}

	public static func listByPartner(filter: PartnerFilter?, pager: FilterPager?) -> RequestBuilder<DistributionProfileListResponse, DistributionProfileListResponse.DistributionProfileListResponseTokenizer, ListByPartnerTokenizer> {
		let request: RequestBuilder<DistributionProfileListResponse, DistributionProfileListResponse.DistributionProfileListResponseTokenizer, ListByPartnerTokenizer> = RequestBuilder<DistributionProfileListResponse, DistributionProfileListResponse.DistributionProfileListResponseTokenizer, ListByPartnerTokenizer>(service: "contentdistribution_distributionprofile", action: "listByPartner")
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
		
		public func distributionProfile<T: DistributionProfile.DistributionProfileTokenizer>() -> T {
			return T(self.append("distributionProfile"))
		}
	}

	/**  Update Distribution Profile by id  */
	public static func update(id: Int, distributionProfile: DistributionProfile) -> RequestBuilder<DistributionProfile, DistributionProfile.DistributionProfileTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<DistributionProfile, DistributionProfile.DistributionProfileTokenizer, UpdateTokenizer> = RequestBuilder<DistributionProfile, DistributionProfile.DistributionProfileTokenizer, UpdateTokenizer>(service: "contentdistribution_distributionprofile", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "distributionProfile", value: distributionProfile)

		return request
	}

	public class UpdateStatusTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
	}

	/**  Update Distribution Profile status by id  */
	public static func updateStatus(id: Int, status: DistributionProfileStatus) -> RequestBuilder<DistributionProfile, DistributionProfile.DistributionProfileTokenizer, UpdateStatusTokenizer> {
		let request: RequestBuilder<DistributionProfile, DistributionProfile.DistributionProfileTokenizer, UpdateStatusTokenizer> = RequestBuilder<DistributionProfile, DistributionProfile.DistributionProfileTokenizer, UpdateStatusTokenizer>(service: "contentdistribution_distributionprofile", action: "updateStatus")
			.setParam(key: "id", value: id)
			.setParam(key: "status", value: status.rawValue)

		return request
	}
}
