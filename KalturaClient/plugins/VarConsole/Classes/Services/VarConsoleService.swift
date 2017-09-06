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

/**  Utility service for the Multi-publishers console  */
public final class VarConsoleService{

	public class GetPartnerUsageTokenizer: ClientTokenizer  {
		
		public func partnerFilter<T: PartnerFilter.PartnerFilterTokenizer>() -> T {
			return T(self.append("partnerFilter"))
		}
		
		public func usageFilter<T: ReportInputFilter.ReportInputFilterTokenizer>() -> T {
			return T(self.append("usageFilter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func getPartnerUsage() -> RequestBuilder<PartnerUsageListResponse, PartnerUsageListResponse.PartnerUsageListResponseTokenizer, GetPartnerUsageTokenizer> {
		return getPartnerUsage(partnerFilter: nil)
	}

	public static func getPartnerUsage(partnerFilter: PartnerFilter?) -> RequestBuilder<PartnerUsageListResponse, PartnerUsageListResponse.PartnerUsageListResponseTokenizer, GetPartnerUsageTokenizer> {
		return getPartnerUsage(partnerFilter: partnerFilter, usageFilter: nil)
	}

	public static func getPartnerUsage(partnerFilter: PartnerFilter?, usageFilter: ReportInputFilter?) -> RequestBuilder<PartnerUsageListResponse, PartnerUsageListResponse.PartnerUsageListResponseTokenizer, GetPartnerUsageTokenizer> {
		return getPartnerUsage(partnerFilter: partnerFilter, usageFilter: usageFilter, pager: nil)
	}

	/**  Function which calulates partner usage of a group of a VAR's sub-publishers  */
	public static func getPartnerUsage(partnerFilter: PartnerFilter?, usageFilter: ReportInputFilter?, pager: FilterPager?) -> RequestBuilder<PartnerUsageListResponse, PartnerUsageListResponse.PartnerUsageListResponseTokenizer, GetPartnerUsageTokenizer> {
		let request: RequestBuilder<PartnerUsageListResponse, PartnerUsageListResponse.PartnerUsageListResponseTokenizer, GetPartnerUsageTokenizer> = RequestBuilder<PartnerUsageListResponse, PartnerUsageListResponse.PartnerUsageListResponseTokenizer, GetPartnerUsageTokenizer>(service: "varconsole_varconsole", action: "getPartnerUsage")
			.setBody(key: "partnerFilter", value: partnerFilter)
			.setBody(key: "usageFilter", value: usageFilter)
			.setBody(key: "pager", value: pager)

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

	/**  Function to change a sub-publisher's status  */
	public static func updateStatus(id: Int, status: PartnerStatus) -> NullRequestBuilder<UpdateStatusTokenizer> {
		let request: NullRequestBuilder<UpdateStatusTokenizer> = NullRequestBuilder<UpdateStatusTokenizer>(service: "varconsole_varconsole", action: "updateStatus")
			.setBody(key: "id", value: id)
			.setBody(key: "status", value: status.rawValue)

		return request
	}
}
