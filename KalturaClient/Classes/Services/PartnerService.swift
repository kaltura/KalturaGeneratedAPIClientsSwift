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

/**  partner service allows you to change/manage your partner personal details and
  settings as well  */
public final class PartnerService{

	public static func count() -> RequestBuilder<Int> {
		return count(filter: nil)
	}

	/**  Count partner's existing sub-publishers (count includes the partner itself).  */
	public static func count(filter: PartnerFilter?) -> RequestBuilder<Int> {
		let request: RequestBuilder<Int> = RequestBuilder<Int>(service: "partner", action: "count")
			.setBody(key: "filter", value: filter)

		return request
	}

	public static func get() -> RequestBuilder<Partner> {
		return get(id: nil)
	}

	/**  Retrieve partner object by Id  */
	public static func get(id: Int?) -> RequestBuilder<Partner> {
		let request: RequestBuilder<Partner> = RequestBuilder<Partner>(service: "partner", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Retrieve all info attributed to the partner   This action expects no parameters.
	  It returns information for the current KS partnerId.  */
	public static func getInfo() -> RequestBuilder<Partner> {
		let request: RequestBuilder<Partner> = RequestBuilder<Partner>(service: "partner", action: "getInfo")

		return request
	}

	/**  Retrieve partner secret and admin secret  */
	public static func getSecrets(partnerId: Int, adminEmail: String, cmsPassword: String) -> RequestBuilder<Partner> {
		let request: RequestBuilder<Partner> = RequestBuilder<Partner>(service: "partner", action: "getSecrets")
			.setBody(key: "partnerId", value: partnerId)
			.setBody(key: "adminEmail", value: adminEmail)
			.setBody(key: "cmsPassword", value: cmsPassword)

		return request
	}

	/**  Get usage statistics for a partner   Calculation is done according to partner's
	  package  */
	public static func getStatistics() -> RequestBuilder<PartnerStatistics> {
		let request: RequestBuilder<PartnerStatistics> = RequestBuilder<PartnerStatistics>(service: "partner", action: "getStatistics")

		return request
	}

	public static func getUsage() -> RequestBuilder<PartnerUsage> {
		return getUsage(year: nil)
	}

	public static func getUsage(year: Int?) -> RequestBuilder<PartnerUsage> {
		return getUsage(year: year, month: 1)
	}

	public static func getUsage(year: Int?, month: Int?) -> RequestBuilder<PartnerUsage> {
		return getUsage(year: year, month: month, resolution: nil)
	}

	/**  Get usage statistics for a partner   Calculation is done according to partner's
	  package   Additional data returned is a graph points of streaming usage in a
	  timeframe   The resolution can be "days" or "months"  */
	public static func getUsage(year: Int?, month: Int?, resolution: ReportInterval?) -> RequestBuilder<PartnerUsage> {
		let request: RequestBuilder<PartnerUsage> = RequestBuilder<PartnerUsage>(service: "partner", action: "getUsage")
			.setBody(key: "year", value: year)
			.setBody(key: "month", value: month)
			.setBody(key: "resolution", value: resolution?.rawValue)

		return request
	}

	public static func list() -> RequestBuilder<PartnerListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: PartnerFilter?) -> RequestBuilder<PartnerListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List partners by filter with paging support   Current implementation will only
	  list the sub partners of the partner initiating the api call (using the current
	  KS).   This action is only partially implemented to support listing sub partners
	  of a VAR partner.  */
	public static func list(filter: PartnerFilter?, pager: FilterPager?) -> RequestBuilder<PartnerListResponse> {
		let request: RequestBuilder<PartnerListResponse> = RequestBuilder<PartnerListResponse>(service: "partner", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  List partner's current processes' statuses  */
	public static func listFeatureStatus() -> RequestBuilder<FeatureStatusListResponse> {
		let request: RequestBuilder<FeatureStatusListResponse> = RequestBuilder<FeatureStatusListResponse>(service: "partner", action: "listFeatureStatus")

		return request
	}

	public static func listPartnersForUser() -> RequestBuilder<PartnerListResponse> {
		return listPartnersForUser(partnerFilter: nil)
	}

	public static func listPartnersForUser(partnerFilter: PartnerFilter?) -> RequestBuilder<PartnerListResponse> {
		return listPartnersForUser(partnerFilter: partnerFilter, pager: nil)
	}

	/**  Retrieve a list of partner objects which the current user is allowed to access.  */
	public static func listPartnersForUser(partnerFilter: PartnerFilter?, pager: FilterPager?) -> RequestBuilder<PartnerListResponse> {
		let request: RequestBuilder<PartnerListResponse> = RequestBuilder<PartnerListResponse>(service: "partner", action: "listPartnersForUser")
			.setBody(key: "partnerFilter", value: partnerFilter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public static func register(partner: Partner) -> RequestBuilder<Partner> {
		return register(partner: partner, cmsPassword: "")
	}

	public static func register(partner: Partner, cmsPassword: String?) -> RequestBuilder<Partner> {
		return register(partner: partner, cmsPassword: cmsPassword, templatePartnerId: nil)
	}

	public static func register(partner: Partner, cmsPassword: String?, templatePartnerId: Int?) -> RequestBuilder<Partner> {
		return register(partner: partner, cmsPassword: cmsPassword, templatePartnerId: templatePartnerId, silent: false)
	}

	/**  Create a new Partner object  */
	public static func register(partner: Partner, cmsPassword: String?, templatePartnerId: Int?, silent: Bool?) -> RequestBuilder<Partner> {
		let request: RequestBuilder<Partner> = RequestBuilder<Partner>(service: "partner", action: "register")
			.setBody(key: "partner", value: partner)
			.setBody(key: "cmsPassword", value: cmsPassword)
			.setBody(key: "templatePartnerId", value: templatePartnerId)
			.setBody(key: "silent", value: silent)

		return request
	}

	public static func update(partner: Partner) -> RequestBuilder<Partner> {
		return update(partner: partner, allowEmpty: false)
	}

	/**  Update details and settings of an existing partner  */
	public static func update(partner: Partner, allowEmpty: Bool?) -> RequestBuilder<Partner> {
		let request: RequestBuilder<Partner> = RequestBuilder<Partner>(service: "partner", action: "update")
			.setBody(key: "partner", value: partner)
			.setBody(key: "allowEmpty", value: allowEmpty)

		return request
	}
}
