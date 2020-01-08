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
// Copyright (C) 2006-2020  Kaltura Inc.
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

/**  api for getting analytics data  */
public final class AnalyticsService{

	public class QueryTokenizer: ClientTokenizer  {
		
		public func filter<T: AnalyticsFilter.AnalyticsFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func query(filter: AnalyticsFilter) -> RequestBuilder<ReportResponse, ReportResponse.ReportResponseTokenizer, QueryTokenizer> {
		return query(filter: filter, pager: nil)
	}

	/**  report query action allows to get a analytics data for specific query
	  dimensions, metrics and filters.  */
	public static func query(filter: AnalyticsFilter, pager: FilterPager?) -> RequestBuilder<ReportResponse, ReportResponse.ReportResponseTokenizer, QueryTokenizer> {
		let request: RequestBuilder<ReportResponse, ReportResponse.ReportResponseTokenizer, QueryTokenizer> = RequestBuilder<ReportResponse, ReportResponse.ReportResponseTokenizer, QueryTokenizer>(service: "analytics", action: "query")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}
}
