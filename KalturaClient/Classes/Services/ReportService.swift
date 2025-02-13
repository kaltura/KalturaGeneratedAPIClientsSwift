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
// Copyright (C) 2006-2023  Kaltura Inc.
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

/**  api for getting reports data by the report type and some inputFilter  */
public final class ReportService{

	public class ExecuteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var params: ArrayTokenizedObject<KeyValue.KeyValueTokenizer> {
			get {
				return ArrayTokenizedObject<KeyValue.KeyValueTokenizer>(self.append("params"))
			} 
		}
	}

	public static func execute(id: Int64) -> RequestBuilder<ReportResponse, ReportResponse.ReportResponseTokenizer, ExecuteTokenizer> {
		return execute(id: id, params: nil)
	}

	public static func execute(id: Int64, params: Array<KeyValue>?) -> RequestBuilder<ReportResponse, ReportResponse.ReportResponseTokenizer, ExecuteTokenizer> {
		let request: RequestBuilder<ReportResponse, ReportResponse.ReportResponseTokenizer, ExecuteTokenizer> = RequestBuilder<ReportResponse, ReportResponse.ReportResponseTokenizer, ExecuteTokenizer>(service: "report", action: "execute")
			.setParam(key: "id", value: id)
			.setParam(key: "params", value: params)

		return request
	}

	public class ExportToCsvTokenizer: ClientTokenizer  {
		
		public func params<T: ReportExportParams.ReportExportParamsTokenizer>() -> T {
			return T(self.append("params"))
		}
	}

	public static func exportToCsv(params: ReportExportParams) -> RequestBuilder<ReportExportResponse, ReportExportResponse.ReportExportResponseTokenizer, ExportToCsvTokenizer> {
		let request: RequestBuilder<ReportExportResponse, ReportExportResponse.ReportExportResponseTokenizer, ExportToCsvTokenizer> = RequestBuilder<ReportExportResponse, ReportExportResponse.ReportExportResponseTokenizer, ExportToCsvTokenizer>(service: "report", action: "exportToCsv")
			.setParam(key: "params", value: params)

		return request
	}

	public class GetBaseTotalTokenizer: ClientTokenizer  {
		
		public var reportType: BaseTokenizedObject {
			get {
				return self.append("reportType") 
			}
		}
		
		public func reportInputFilter<T: ReportInputFilter.ReportInputFilterTokenizer>() -> T {
			return T(self.append("reportInputFilter"))
		}
		
		public var objectIds: BaseTokenizedObject {
			get {
				return self.append("objectIds") 
			}
		}
		
		public func responseOptions<T: ReportResponseOptions.ReportResponseOptionsTokenizer>() -> T {
			return T(self.append("responseOptions"))
		}
	}

	public static func getBaseTotal(reportType: ReportType, reportInputFilter: ReportInputFilter) -> ArrayRequestBuilder<ReportBaseTotal, ArrayTokenizedObject<ReportBaseTotal.ReportBaseTotalTokenizer>, GetBaseTotalTokenizer> {
		return getBaseTotal(reportType: reportType, reportInputFilter: reportInputFilter, objectIds: nil)
	}

	public static func getBaseTotal(reportType: ReportType, reportInputFilter: ReportInputFilter, objectIds: String?) -> ArrayRequestBuilder<ReportBaseTotal, ArrayTokenizedObject<ReportBaseTotal.ReportBaseTotalTokenizer>, GetBaseTotalTokenizer> {
		return getBaseTotal(reportType: reportType, reportInputFilter: reportInputFilter, objectIds: objectIds, responseOptions: nil)
	}

	/**  report getBaseTotal action allows to get the total base for storage reports  */
	public static func getBaseTotal(reportType: ReportType, reportInputFilter: ReportInputFilter, objectIds: String?, responseOptions: ReportResponseOptions?) -> ArrayRequestBuilder<ReportBaseTotal, ArrayTokenizedObject<ReportBaseTotal.ReportBaseTotalTokenizer>, GetBaseTotalTokenizer> {
		let request: ArrayRequestBuilder<ReportBaseTotal, ArrayTokenizedObject<ReportBaseTotal.ReportBaseTotalTokenizer>, GetBaseTotalTokenizer> = ArrayRequestBuilder<ReportBaseTotal, ArrayTokenizedObject<ReportBaseTotal.ReportBaseTotalTokenizer>, GetBaseTotalTokenizer>(service: "report", action: "getBaseTotal")
			.setParam(key: "reportType", value: reportType.rawValue)
			.setParam(key: "reportInputFilter", value: reportInputFilter)
			.setParam(key: "objectIds", value: objectIds)
			.setParam(key: "responseOptions", value: responseOptions)

		return request
	}

	public class GetGraphsTokenizer: ClientTokenizer  {
		
		public var reportType: BaseTokenizedObject {
			get {
				return self.append("reportType") 
			}
		}
		
		public func reportInputFilter<T: ReportInputFilter.ReportInputFilterTokenizer>() -> T {
			return T(self.append("reportInputFilter"))
		}
		
		public var dimension: BaseTokenizedObject {
			get {
				return self.append("dimension") 
			}
		}
		
		public var objectIds: BaseTokenizedObject {
			get {
				return self.append("objectIds") 
			}
		}
		
		public func responseOptions<T: ReportResponseOptions.ReportResponseOptionsTokenizer>() -> T {
			return T(self.append("responseOptions"))
		}
	}

	public static func getGraphs(reportType: ReportType, reportInputFilter: ReportInputFilter) -> ArrayRequestBuilder<ReportGraph, ArrayTokenizedObject<ReportGraph.ReportGraphTokenizer>, GetGraphsTokenizer> {
		return getGraphs(reportType: reportType, reportInputFilter: reportInputFilter, dimension: nil)
	}

	public static func getGraphs(reportType: ReportType, reportInputFilter: ReportInputFilter, dimension: String?) -> ArrayRequestBuilder<ReportGraph, ArrayTokenizedObject<ReportGraph.ReportGraphTokenizer>, GetGraphsTokenizer> {
		return getGraphs(reportType: reportType, reportInputFilter: reportInputFilter, dimension: dimension, objectIds: nil)
	}

	public static func getGraphs(reportType: ReportType, reportInputFilter: ReportInputFilter, dimension: String?, objectIds: String?) -> ArrayRequestBuilder<ReportGraph, ArrayTokenizedObject<ReportGraph.ReportGraphTokenizer>, GetGraphsTokenizer> {
		return getGraphs(reportType: reportType, reportInputFilter: reportInputFilter, dimension: dimension, objectIds: objectIds, responseOptions: nil)
	}

	/**  report getGraphs action allows to get a graph data for a specific report.  */
	public static func getGraphs(reportType: ReportType, reportInputFilter: ReportInputFilter, dimension: String?, objectIds: String?, responseOptions: ReportResponseOptions?) -> ArrayRequestBuilder<ReportGraph, ArrayTokenizedObject<ReportGraph.ReportGraphTokenizer>, GetGraphsTokenizer> {
		let request: ArrayRequestBuilder<ReportGraph, ArrayTokenizedObject<ReportGraph.ReportGraphTokenizer>, GetGraphsTokenizer> = ArrayRequestBuilder<ReportGraph, ArrayTokenizedObject<ReportGraph.ReportGraphTokenizer>, GetGraphsTokenizer>(service: "report", action: "getGraphs")
			.setParam(key: "reportType", value: reportType.rawValue)
			.setParam(key: "reportInputFilter", value: reportInputFilter)
			.setParam(key: "dimension", value: dimension)
			.setParam(key: "objectIds", value: objectIds)
			.setParam(key: "responseOptions", value: responseOptions)

		return request
	}

	public class GetTableTokenizer: ClientTokenizer  {
		
		public var reportType: BaseTokenizedObject {
			get {
				return self.append("reportType") 
			}
		}
		
		public func reportInputFilter<T: ReportInputFilter.ReportInputFilterTokenizer>() -> T {
			return T(self.append("reportInputFilter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
		
		public var order: BaseTokenizedObject {
			get {
				return self.append("order") 
			}
		}
		
		public var objectIds: BaseTokenizedObject {
			get {
				return self.append("objectIds") 
			}
		}
		
		public func responseOptions<T: ReportResponseOptions.ReportResponseOptionsTokenizer>() -> T {
			return T(self.append("responseOptions"))
		}
	}

	public static func getTable(reportType: ReportType, reportInputFilter: ReportInputFilter, pager: FilterPager) -> RequestBuilder<ReportTable, ReportTable.ReportTableTokenizer, GetTableTokenizer> {
		return getTable(reportType: reportType, reportInputFilter: reportInputFilter, pager: pager, order: nil)
	}

	public static func getTable(reportType: ReportType, reportInputFilter: ReportInputFilter, pager: FilterPager, order: String?) -> RequestBuilder<ReportTable, ReportTable.ReportTableTokenizer, GetTableTokenizer> {
		return getTable(reportType: reportType, reportInputFilter: reportInputFilter, pager: pager, order: order, objectIds: nil)
	}

	public static func getTable(reportType: ReportType, reportInputFilter: ReportInputFilter, pager: FilterPager, order: String?, objectIds: String?) -> RequestBuilder<ReportTable, ReportTable.ReportTableTokenizer, GetTableTokenizer> {
		return getTable(reportType: reportType, reportInputFilter: reportInputFilter, pager: pager, order: order, objectIds: objectIds, responseOptions: nil)
	}

	/**  report getTable action allows to get a graph data for a specific report.  */
	public static func getTable(reportType: ReportType, reportInputFilter: ReportInputFilter, pager: FilterPager, order: String?, objectIds: String?, responseOptions: ReportResponseOptions?) -> RequestBuilder<ReportTable, ReportTable.ReportTableTokenizer, GetTableTokenizer> {
		let request: RequestBuilder<ReportTable, ReportTable.ReportTableTokenizer, GetTableTokenizer> = RequestBuilder<ReportTable, ReportTable.ReportTableTokenizer, GetTableTokenizer>(service: "report", action: "getTable")
			.setParam(key: "reportType", value: reportType.rawValue)
			.setParam(key: "reportInputFilter", value: reportInputFilter)
			.setParam(key: "pager", value: pager)
			.setParam(key: "order", value: order)
			.setParam(key: "objectIds", value: objectIds)
			.setParam(key: "responseOptions", value: responseOptions)

		return request
	}

	public class GetTotalTokenizer: ClientTokenizer  {
		
		public var reportType: BaseTokenizedObject {
			get {
				return self.append("reportType") 
			}
		}
		
		public func reportInputFilter<T: ReportInputFilter.ReportInputFilterTokenizer>() -> T {
			return T(self.append("reportInputFilter"))
		}
		
		public var objectIds: BaseTokenizedObject {
			get {
				return self.append("objectIds") 
			}
		}
		
		public func responseOptions<T: ReportResponseOptions.ReportResponseOptionsTokenizer>() -> T {
			return T(self.append("responseOptions"))
		}
	}

	public static func getTotal(reportType: ReportType, reportInputFilter: ReportInputFilter) -> RequestBuilder<ReportTotal, ReportTotal.ReportTotalTokenizer, GetTotalTokenizer> {
		return getTotal(reportType: reportType, reportInputFilter: reportInputFilter, objectIds: nil)
	}

	public static func getTotal(reportType: ReportType, reportInputFilter: ReportInputFilter, objectIds: String?) -> RequestBuilder<ReportTotal, ReportTotal.ReportTotalTokenizer, GetTotalTokenizer> {
		return getTotal(reportType: reportType, reportInputFilter: reportInputFilter, objectIds: objectIds, responseOptions: nil)
	}

	/**  report getTotal action allows to get a graph data for a specific report.  */
	public static func getTotal(reportType: ReportType, reportInputFilter: ReportInputFilter, objectIds: String?, responseOptions: ReportResponseOptions?) -> RequestBuilder<ReportTotal, ReportTotal.ReportTotalTokenizer, GetTotalTokenizer> {
		let request: RequestBuilder<ReportTotal, ReportTotal.ReportTotalTokenizer, GetTotalTokenizer> = RequestBuilder<ReportTotal, ReportTotal.ReportTotalTokenizer, GetTotalTokenizer>(service: "report", action: "getTotal")
			.setParam(key: "reportType", value: reportType.rawValue)
			.setParam(key: "reportInputFilter", value: reportInputFilter)
			.setParam(key: "objectIds", value: objectIds)
			.setParam(key: "responseOptions", value: responseOptions)

		return request
	}

	public class GetUrlForReportAsCsvTokenizer: ClientTokenizer  {
		
		public var reportTitle: BaseTokenizedObject {
			get {
				return self.append("reportTitle") 
			}
		}
		
		public var reportText: BaseTokenizedObject {
			get {
				return self.append("reportText") 
			}
		}
		
		public var headers: BaseTokenizedObject {
			get {
				return self.append("headers") 
			}
		}
		
		public var reportType: BaseTokenizedObject {
			get {
				return self.append("reportType") 
			}
		}
		
		public func reportInputFilter<T: ReportInputFilter.ReportInputFilterTokenizer>() -> T {
			return T(self.append("reportInputFilter"))
		}
		
		public var dimension: BaseTokenizedObject {
			get {
				return self.append("dimension") 
			}
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
		
		public var order: BaseTokenizedObject {
			get {
				return self.append("order") 
			}
		}
		
		public var objectIds: BaseTokenizedObject {
			get {
				return self.append("objectIds") 
			}
		}
		
		public func responseOptions<T: ReportResponseOptions.ReportResponseOptionsTokenizer>() -> T {
			return T(self.append("responseOptions"))
		}
	}

	public static func getUrlForReportAsCsv(reportTitle: String, reportText: String, headers: String, reportType: ReportType, reportInputFilter: ReportInputFilter) -> RequestBuilder<String, BaseTokenizedObject, GetUrlForReportAsCsvTokenizer> {
		return getUrlForReportAsCsv(reportTitle: reportTitle, reportText: reportText, headers: headers, reportType: reportType, reportInputFilter: reportInputFilter, dimension: nil)
	}

	public static func getUrlForReportAsCsv(reportTitle: String, reportText: String, headers: String, reportType: ReportType, reportInputFilter: ReportInputFilter, dimension: String?) -> RequestBuilder<String, BaseTokenizedObject, GetUrlForReportAsCsvTokenizer> {
		return getUrlForReportAsCsv(reportTitle: reportTitle, reportText: reportText, headers: headers, reportType: reportType, reportInputFilter: reportInputFilter, dimension: dimension, pager: nil)
	}

	public static func getUrlForReportAsCsv(reportTitle: String, reportText: String, headers: String, reportType: ReportType, reportInputFilter: ReportInputFilter, dimension: String?, pager: FilterPager?) -> RequestBuilder<String, BaseTokenizedObject, GetUrlForReportAsCsvTokenizer> {
		return getUrlForReportAsCsv(reportTitle: reportTitle, reportText: reportText, headers: headers, reportType: reportType, reportInputFilter: reportInputFilter, dimension: dimension, pager: pager, order: nil)
	}

	public static func getUrlForReportAsCsv(reportTitle: String, reportText: String, headers: String, reportType: ReportType, reportInputFilter: ReportInputFilter, dimension: String?, pager: FilterPager?, order: String?) -> RequestBuilder<String, BaseTokenizedObject, GetUrlForReportAsCsvTokenizer> {
		return getUrlForReportAsCsv(reportTitle: reportTitle, reportText: reportText, headers: headers, reportType: reportType, reportInputFilter: reportInputFilter, dimension: dimension, pager: pager, order: order, objectIds: nil)
	}

	public static func getUrlForReportAsCsv(reportTitle: String, reportText: String, headers: String, reportType: ReportType, reportInputFilter: ReportInputFilter, dimension: String?, pager: FilterPager?, order: String?, objectIds: String?) -> RequestBuilder<String, BaseTokenizedObject, GetUrlForReportAsCsvTokenizer> {
		return getUrlForReportAsCsv(reportTitle: reportTitle, reportText: reportText, headers: headers, reportType: reportType, reportInputFilter: reportInputFilter, dimension: dimension, pager: pager, order: order, objectIds: objectIds, responseOptions: nil)
	}

	/**  will create a CSV file for the given report and return the URL to access it  */
	public static func getUrlForReportAsCsv(reportTitle: String, reportText: String, headers: String, reportType: ReportType, reportInputFilter: ReportInputFilter, dimension: String?, pager: FilterPager?, order: String?, objectIds: String?, responseOptions: ReportResponseOptions?) -> RequestBuilder<String, BaseTokenizedObject, GetUrlForReportAsCsvTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, GetUrlForReportAsCsvTokenizer> = RequestBuilder<String, BaseTokenizedObject, GetUrlForReportAsCsvTokenizer>(service: "report", action: "getUrlForReportAsCsv")
			.setParam(key: "reportTitle", value: reportTitle)
			.setParam(key: "reportText", value: reportText)
			.setParam(key: "headers", value: headers)
			.setParam(key: "reportType", value: reportType.rawValue)
			.setParam(key: "reportInputFilter", value: reportInputFilter)
			.setParam(key: "dimension", value: dimension)
			.setParam(key: "pager", value: pager)
			.setParam(key: "order", value: order)
			.setParam(key: "objectIds", value: objectIds)
			.setParam(key: "responseOptions", value: responseOptions)

		return request
	}

	public class ServeTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Will serve a requested report  */
	public static func serve(id: String) -> RequestBuilder<String, BaseTokenizedObject, ServeTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, ServeTokenizer> = RequestBuilder<String, BaseTokenizedObject, ServeTokenizer>(service: "report", action: "serve")
			.setParam(key: "id", value: id)

		return request
	}
}
