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
// Copyright (C) 2006-2018  Kaltura Inc.
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

/**  partner service allows you to change/manage your partner personal details and
  settings as well  */
public final class PartnerService{

	public class CountTokenizer: ClientTokenizer  {
		
		public func filter<T: PartnerFilter.PartnerFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	public static func count() -> RequestBuilder<Int, BaseTokenizedObject, CountTokenizer> {
		return count(filter: nil)
	}

	/**  Count partner's existing sub-publishers (count includes the partner itself).  */
	public static func count(filter: PartnerFilter?) -> RequestBuilder<Int, BaseTokenizedObject, CountTokenizer> {
		let request: RequestBuilder<Int, BaseTokenizedObject, CountTokenizer> = RequestBuilder<Int, BaseTokenizedObject, CountTokenizer>(service: "partner", action: "count")
			.setParam(key: "filter", value: filter)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	public static func get() -> RequestBuilder<Partner, Partner.PartnerTokenizer, GetTokenizer> {
		return get(id: nil)
	}

	/**  Retrieve partner object by Id  */
	public static func get(id: Int?) -> RequestBuilder<Partner, Partner.PartnerTokenizer, GetTokenizer> {
		let request: RequestBuilder<Partner, Partner.PartnerTokenizer, GetTokenizer> = RequestBuilder<Partner, Partner.PartnerTokenizer, GetTokenizer>(service: "partner", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class GetInfoTokenizer: ClientTokenizer  {
	}

	/**  Retrieve all info attributed to the partner   This action expects no parameters.
	  It returns information for the current KS partnerId.  */
	public static func getInfo() -> RequestBuilder<Partner, Partner.PartnerTokenizer, GetInfoTokenizer> {
		let request: RequestBuilder<Partner, Partner.PartnerTokenizer, GetInfoTokenizer> = RequestBuilder<Partner, Partner.PartnerTokenizer, GetInfoTokenizer>(service: "partner", action: "getInfo")

		return request
	}

	public class GetSecretsTokenizer: ClientTokenizer  {
		
		public override var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var adminEmail: BaseTokenizedObject {
			get {
				return self.append("adminEmail") 
			}
		}
		
		public var cmsPassword: BaseTokenizedObject {
			get {
				return self.append("cmsPassword") 
			}
		}
	}

	/**  Retrieve partner secret and admin secret  */
	public static func getSecrets(partnerId: Int, adminEmail: String, cmsPassword: String) -> RequestBuilder<Partner, Partner.PartnerTokenizer, GetSecretsTokenizer> {
		let request: RequestBuilder<Partner, Partner.PartnerTokenizer, GetSecretsTokenizer> = RequestBuilder<Partner, Partner.PartnerTokenizer, GetSecretsTokenizer>(service: "partner", action: "getSecrets")
			.setParam(key: "partnerId", value: partnerId)
			.setParam(key: "adminEmail", value: adminEmail)
			.setParam(key: "cmsPassword", value: cmsPassword)

		return request
	}

	public class GetStatisticsTokenizer: ClientTokenizer  {
	}

	/**  Get usage statistics for a partner   Calculation is done according to partner's
	  package  */
	public static func getStatistics() -> RequestBuilder<PartnerStatistics, PartnerStatistics.PartnerStatisticsTokenizer, GetStatisticsTokenizer> {
		let request: RequestBuilder<PartnerStatistics, PartnerStatistics.PartnerStatisticsTokenizer, GetStatisticsTokenizer> = RequestBuilder<PartnerStatistics, PartnerStatistics.PartnerStatisticsTokenizer, GetStatisticsTokenizer>(service: "partner", action: "getStatistics")

		return request
	}

	public class GetUsageTokenizer: ClientTokenizer  {
		
		public var year: BaseTokenizedObject {
			get {
				return self.append("year") 
			}
		}
		
		public var month: BaseTokenizedObject {
			get {
				return self.append("month") 
			}
		}
		
		public var resolution: BaseTokenizedObject {
			get {
				return self.append("resolution") 
			}
		}
	}

	public static func getUsage() -> RequestBuilder<PartnerUsage, PartnerUsage.PartnerUsageTokenizer, GetUsageTokenizer> {
		return getUsage(year: nil)
	}

	public static func getUsage(year: Int?) -> RequestBuilder<PartnerUsage, PartnerUsage.PartnerUsageTokenizer, GetUsageTokenizer> {
		return getUsage(year: year, month: 1)
	}

	public static func getUsage(year: Int?, month: Int?) -> RequestBuilder<PartnerUsage, PartnerUsage.PartnerUsageTokenizer, GetUsageTokenizer> {
		return getUsage(year: year, month: month, resolution: nil)
	}

	/**  Get usage statistics for a partner   Calculation is done according to partner's
	  package   Additional data returned is a graph points of streaming usage in a
	  timeframe   The resolution can be "days" or "months"  */
	public static func getUsage(year: Int?, month: Int?, resolution: ReportInterval?) -> RequestBuilder<PartnerUsage, PartnerUsage.PartnerUsageTokenizer, GetUsageTokenizer> {
		let request: RequestBuilder<PartnerUsage, PartnerUsage.PartnerUsageTokenizer, GetUsageTokenizer> = RequestBuilder<PartnerUsage, PartnerUsage.PartnerUsageTokenizer, GetUsageTokenizer>(service: "partner", action: "getUsage")
			.setParam(key: "year", value: year)
			.setParam(key: "month", value: month)
			.setParam(key: "resolution", value: resolution?.rawValue)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: PartnerFilter.PartnerFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<PartnerListResponse, PartnerListResponse.PartnerListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: PartnerFilter?) -> RequestBuilder<PartnerListResponse, PartnerListResponse.PartnerListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List partners by filter with paging support   Current implementation will only
	  list the sub partners of the partner initiating the api call (using the current
	  KS).   This action is only partially implemented to support listing sub partners
	  of a VAR partner.  */
	public static func list(filter: PartnerFilter?, pager: FilterPager?) -> RequestBuilder<PartnerListResponse, PartnerListResponse.PartnerListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<PartnerListResponse, PartnerListResponse.PartnerListResponseTokenizer, ListTokenizer> = RequestBuilder<PartnerListResponse, PartnerListResponse.PartnerListResponseTokenizer, ListTokenizer>(service: "partner", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class ListFeatureStatusTokenizer: ClientTokenizer  {
	}

	/**  List partner's current processes' statuses  */
	public static func listFeatureStatus() -> RequestBuilder<FeatureStatusListResponse, FeatureStatusListResponse.FeatureStatusListResponseTokenizer, ListFeatureStatusTokenizer> {
		let request: RequestBuilder<FeatureStatusListResponse, FeatureStatusListResponse.FeatureStatusListResponseTokenizer, ListFeatureStatusTokenizer> = RequestBuilder<FeatureStatusListResponse, FeatureStatusListResponse.FeatureStatusListResponseTokenizer, ListFeatureStatusTokenizer>(service: "partner", action: "listFeatureStatus")

		return request
	}

	public class ListPartnersForUserTokenizer: ClientTokenizer  {
		
		public func partnerFilter<T: PartnerFilter.PartnerFilterTokenizer>() -> T {
			return T(self.append("partnerFilter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func listPartnersForUser() -> RequestBuilder<PartnerListResponse, PartnerListResponse.PartnerListResponseTokenizer, ListPartnersForUserTokenizer> {
		return listPartnersForUser(partnerFilter: nil)
	}

	public static func listPartnersForUser(partnerFilter: PartnerFilter?) -> RequestBuilder<PartnerListResponse, PartnerListResponse.PartnerListResponseTokenizer, ListPartnersForUserTokenizer> {
		return listPartnersForUser(partnerFilter: partnerFilter, pager: nil)
	}

	/**  Retrieve a list of partner objects which the current user is allowed to access.  */
	public static func listPartnersForUser(partnerFilter: PartnerFilter?, pager: FilterPager?) -> RequestBuilder<PartnerListResponse, PartnerListResponse.PartnerListResponseTokenizer, ListPartnersForUserTokenizer> {
		let request: RequestBuilder<PartnerListResponse, PartnerListResponse.PartnerListResponseTokenizer, ListPartnersForUserTokenizer> = RequestBuilder<PartnerListResponse, PartnerListResponse.PartnerListResponseTokenizer, ListPartnersForUserTokenizer>(service: "partner", action: "listPartnersForUser")
			.setParam(key: "partnerFilter", value: partnerFilter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class RegisterTokenizer: ClientTokenizer  {
		
		public func partner<T: Partner.PartnerTokenizer>() -> T {
			return T(self.append("partner"))
		}
		
		public var cmsPassword: BaseTokenizedObject {
			get {
				return self.append("cmsPassword") 
			}
		}
		
		public var templatePartnerId: BaseTokenizedObject {
			get {
				return self.append("templatePartnerId") 
			}
		}
		
		public var silent: BaseTokenizedObject {
			get {
				return self.append("silent") 
			}
		}
	}

	public static func register(partner: Partner) -> RequestBuilder<Partner, Partner.PartnerTokenizer, RegisterTokenizer> {
		return register(partner: partner, cmsPassword: "")
	}

	public static func register(partner: Partner, cmsPassword: String?) -> RequestBuilder<Partner, Partner.PartnerTokenizer, RegisterTokenizer> {
		return register(partner: partner, cmsPassword: cmsPassword, templatePartnerId: nil)
	}

	public static func register(partner: Partner, cmsPassword: String?, templatePartnerId: Int?) -> RequestBuilder<Partner, Partner.PartnerTokenizer, RegisterTokenizer> {
		return register(partner: partner, cmsPassword: cmsPassword, templatePartnerId: templatePartnerId, silent: false)
	}

	/**  Create a new Partner object  */
	public static func register(partner: Partner, cmsPassword: String?, templatePartnerId: Int?, silent: Bool?) -> RequestBuilder<Partner, Partner.PartnerTokenizer, RegisterTokenizer> {
		let request: RequestBuilder<Partner, Partner.PartnerTokenizer, RegisterTokenizer> = RequestBuilder<Partner, Partner.PartnerTokenizer, RegisterTokenizer>(service: "partner", action: "register")
			.setParam(key: "partner", value: partner)
			.setParam(key: "cmsPassword", value: cmsPassword)
			.setParam(key: "templatePartnerId", value: templatePartnerId)
			.setParam(key: "silent", value: silent)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public func partner<T: Partner.PartnerTokenizer>() -> T {
			return T(self.append("partner"))
		}
		
		public var allowEmpty: BaseTokenizedObject {
			get {
				return self.append("allowEmpty") 
			}
		}
	}

	public static func update(partner: Partner) -> RequestBuilder<Partner, Partner.PartnerTokenizer, UpdateTokenizer> {
		return update(partner: partner, allowEmpty: false)
	}

	/**  Update details and settings of an existing partner  */
	public static func update(partner: Partner, allowEmpty: Bool?) -> RequestBuilder<Partner, Partner.PartnerTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<Partner, Partner.PartnerTokenizer, UpdateTokenizer> = RequestBuilder<Partner, Partner.PartnerTokenizer, UpdateTokenizer>(service: "partner", action: "update")
			.setParam(key: "partner", value: partner)
			.setParam(key: "allowEmpty", value: allowEmpty)

		return request
	}
}
