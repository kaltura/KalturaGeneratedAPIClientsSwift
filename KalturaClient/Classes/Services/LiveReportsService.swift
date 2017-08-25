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

public final class LiveReportsService{

	public class ExportToCsvTokenizer: ClientTokenizer  {
		
		public var reportType: BaseTokenizedObject {
			get {
				return self.append("reportType") 
			}
		}
		
		public var params: LiveReportExportParams.LiveReportExportParamsTokenizer {
			get {
				return LiveReportExportParams.LiveReportExportParamsTokenizer(self.append("params")) 
			}
		}
	}

	public static func exportToCsv(reportType: LiveReportExportType, params: LiveReportExportParams) -> RequestBuilder<LiveReportExportResponse, LiveReportExportResponse.LiveReportExportResponseTokenizer, ExportToCsvTokenizer> {
		let request: RequestBuilder<LiveReportExportResponse, LiveReportExportResponse.LiveReportExportResponseTokenizer, ExportToCsvTokenizer> = RequestBuilder<LiveReportExportResponse, LiveReportExportResponse.LiveReportExportResponseTokenizer, ExportToCsvTokenizer>(service: "livereports", action: "exportToCsv")
			.setBody(key: "reportType", value: reportType.rawValue)
			.setBody(key: "params", value: params)

		return request
	}

	public class GetEventsTokenizer: ClientTokenizer  {
		
		public var reportType: BaseTokenizedObject {
			get {
				return self.append("reportType") 
			}
		}
		
		public var filter: LiveReportInputFilter.LiveReportInputFilterTokenizer {
			get {
				return LiveReportInputFilter.LiveReportInputFilterTokenizer(self.append("filter")) 
			}
		}
		
		public var pager: FilterPager.FilterPagerTokenizer {
			get {
				return FilterPager.FilterPagerTokenizer(self.append("pager")) 
			}
		}
	}

	public static func getEvents(reportType: LiveReportType) -> ArrayRequestBuilder<ReportGraph, ArrayTokenizedObject<ReportGraph.ReportGraphTokenizer>, GetEventsTokenizer> {
		return getEvents(reportType: reportType, filter: nil)
	}

	public static func getEvents(reportType: LiveReportType, filter: LiveReportInputFilter?) -> ArrayRequestBuilder<ReportGraph, ArrayTokenizedObject<ReportGraph.ReportGraphTokenizer>, GetEventsTokenizer> {
		return getEvents(reportType: reportType, filter: filter, pager: nil)
	}

	public static func getEvents(reportType: LiveReportType, filter: LiveReportInputFilter?, pager: FilterPager?) -> ArrayRequestBuilder<ReportGraph, ArrayTokenizedObject<ReportGraph.ReportGraphTokenizer>, GetEventsTokenizer> {
		let request: ArrayRequestBuilder<ReportGraph, ArrayTokenizedObject<ReportGraph.ReportGraphTokenizer>, GetEventsTokenizer> = ArrayRequestBuilder<ReportGraph, ArrayTokenizedObject<ReportGraph.ReportGraphTokenizer>, GetEventsTokenizer>(service: "livereports", action: "getEvents")
			.setBody(key: "reportType", value: reportType.rawValue)
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public class GetReportTokenizer: ClientTokenizer  {
		
		public var reportType: BaseTokenizedObject {
			get {
				return self.append("reportType") 
			}
		}
		
		public var filter: LiveReportInputFilter.LiveReportInputFilterTokenizer {
			get {
				return LiveReportInputFilter.LiveReportInputFilterTokenizer(self.append("filter")) 
			}
		}
		
		public var pager: FilterPager.FilterPagerTokenizer {
			get {
				return FilterPager.FilterPagerTokenizer(self.append("pager")) 
			}
		}
	}

	public static func getReport(reportType: LiveReportType) -> RequestBuilder<LiveStatsListResponse, LiveStatsListResponse.LiveStatsListResponseTokenizer, GetReportTokenizer> {
		return getReport(reportType: reportType, filter: nil)
	}

	public static func getReport(reportType: LiveReportType, filter: LiveReportInputFilter?) -> RequestBuilder<LiveStatsListResponse, LiveStatsListResponse.LiveStatsListResponseTokenizer, GetReportTokenizer> {
		return getReport(reportType: reportType, filter: filter, pager: nil)
	}

	public static func getReport(reportType: LiveReportType, filter: LiveReportInputFilter?, pager: FilterPager?) -> RequestBuilder<LiveStatsListResponse, LiveStatsListResponse.LiveStatsListResponseTokenizer, GetReportTokenizer> {
		let request: RequestBuilder<LiveStatsListResponse, LiveStatsListResponse.LiveStatsListResponseTokenizer, GetReportTokenizer> = RequestBuilder<LiveStatsListResponse, LiveStatsListResponse.LiveStatsListResponseTokenizer, GetReportTokenizer>(service: "livereports", action: "getReport")
			.setBody(key: "reportType", value: reportType.rawValue)
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public class ServeReportTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Will serve a requested report  */
	public static func serveReport(id: String) -> RequestBuilder<String, BaseTokenizedObject, ServeReportTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, ServeReportTokenizer> = RequestBuilder<String, BaseTokenizedObject, ServeReportTokenizer>(service: "livereports", action: "serveReport")
			.setBody(key: "id", value: id)

		return request
	}
}
