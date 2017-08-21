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

/**  api for getting reports data by the report type and some inputFilter  */
public final class ReportService{

	public static func execute(id: Int) -> RequestBuilder<ReportResponse> {
		return execute(id: id, params: nil)
	}

	public static func execute(id: Int, params: Array<KeyValue>?) -> RequestBuilder<ReportResponse> {
		let request: RequestBuilder<ReportResponse> = RequestBuilder<ReportResponse>(service: "report", action: "execute")
			.setBody(key: "id", value: id)
			.setBody(key: "params", value: params)

		return request
	}

	public static func getBaseTotal(reportType: ReportType, reportInputFilter: ReportInputFilter) -> RequestBuilder<Array<ReportBaseTotal>> {
		return getBaseTotal(reportType: reportType, reportInputFilter: reportInputFilter, objectIds: nil)
	}

	/**  report getBaseTotal action allows to get a the total base for storage reports  */
	public static func getBaseTotal(reportType: ReportType, reportInputFilter: ReportInputFilter, objectIds: String?) -> RequestBuilder<Array<ReportBaseTotal>> {
		let request: ArrayRequestBuilder<ReportBaseTotal> = ArrayRequestBuilder<ReportBaseTotal>(service: "report", action: "getBaseTotal")
			.setBody(key: "reportType", value: reportType.rawValue)
			.setBody(key: "reportInputFilter", value: reportInputFilter)
			.setBody(key: "objectIds", value: objectIds)

		return request
	}

	public static func getGraphs(reportType: ReportType, reportInputFilter: ReportInputFilter) -> RequestBuilder<Array<ReportGraph>> {
		return getGraphs(reportType: reportType, reportInputFilter: reportInputFilter, dimension: nil)
	}

	public static func getGraphs(reportType: ReportType, reportInputFilter: ReportInputFilter, dimension: String?) -> RequestBuilder<Array<ReportGraph>> {
		return getGraphs(reportType: reportType, reportInputFilter: reportInputFilter, dimension: dimension, objectIds: nil)
	}

	/**  report getGraphs action allows to get a graph data for a specific report.  */
	public static func getGraphs(reportType: ReportType, reportInputFilter: ReportInputFilter, dimension: String?, objectIds: String?) -> RequestBuilder<Array<ReportGraph>> {
		let request: ArrayRequestBuilder<ReportGraph> = ArrayRequestBuilder<ReportGraph>(service: "report", action: "getGraphs")
			.setBody(key: "reportType", value: reportType.rawValue)
			.setBody(key: "reportInputFilter", value: reportInputFilter)
			.setBody(key: "dimension", value: dimension)
			.setBody(key: "objectIds", value: objectIds)

		return request
	}

	public static func getTable(reportType: ReportType, reportInputFilter: ReportInputFilter, pager: FilterPager) -> RequestBuilder<ReportTable> {
		return getTable(reportType: reportType, reportInputFilter: reportInputFilter, pager: pager, order: nil)
	}

	public static func getTable(reportType: ReportType, reportInputFilter: ReportInputFilter, pager: FilterPager, order: String?) -> RequestBuilder<ReportTable> {
		return getTable(reportType: reportType, reportInputFilter: reportInputFilter, pager: pager, order: order, objectIds: nil)
	}

	/**  report getTable action allows to get a graph data for a specific report.  */
	public static func getTable(reportType: ReportType, reportInputFilter: ReportInputFilter, pager: FilterPager, order: String?, objectIds: String?) -> RequestBuilder<ReportTable> {
		let request: RequestBuilder<ReportTable> = RequestBuilder<ReportTable>(service: "report", action: "getTable")
			.setBody(key: "reportType", value: reportType.rawValue)
			.setBody(key: "reportInputFilter", value: reportInputFilter)
			.setBody(key: "pager", value: pager)
			.setBody(key: "order", value: order)
			.setBody(key: "objectIds", value: objectIds)

		return request
	}

	public static func getTotal(reportType: ReportType, reportInputFilter: ReportInputFilter) -> RequestBuilder<ReportTotal> {
		return getTotal(reportType: reportType, reportInputFilter: reportInputFilter, objectIds: nil)
	}

	/**  report getTotal action allows to get a graph data for a specific report.  */
	public static func getTotal(reportType: ReportType, reportInputFilter: ReportInputFilter, objectIds: String?) -> RequestBuilder<ReportTotal> {
		let request: RequestBuilder<ReportTotal> = RequestBuilder<ReportTotal>(service: "report", action: "getTotal")
			.setBody(key: "reportType", value: reportType.rawValue)
			.setBody(key: "reportInputFilter", value: reportInputFilter)
			.setBody(key: "objectIds", value: objectIds)

		return request
	}

	public static func getUrlForReportAsCsv(reportTitle: String, reportText: String, headers: String, reportType: ReportType, reportInputFilter: ReportInputFilter) -> RequestBuilder<String> {
		return getUrlForReportAsCsv(reportTitle: reportTitle, reportText: reportText, headers: headers, reportType: reportType, reportInputFilter: reportInputFilter, dimension: nil)
	}

	public static func getUrlForReportAsCsv(reportTitle: String, reportText: String, headers: String, reportType: ReportType, reportInputFilter: ReportInputFilter, dimension: String?) -> RequestBuilder<String> {
		return getUrlForReportAsCsv(reportTitle: reportTitle, reportText: reportText, headers: headers, reportType: reportType, reportInputFilter: reportInputFilter, dimension: dimension, pager: nil)
	}

	public static func getUrlForReportAsCsv(reportTitle: String, reportText: String, headers: String, reportType: ReportType, reportInputFilter: ReportInputFilter, dimension: String?, pager: FilterPager?) -> RequestBuilder<String> {
		return getUrlForReportAsCsv(reportTitle: reportTitle, reportText: reportText, headers: headers, reportType: reportType, reportInputFilter: reportInputFilter, dimension: dimension, pager: pager, order: nil)
	}

	public static func getUrlForReportAsCsv(reportTitle: String, reportText: String, headers: String, reportType: ReportType, reportInputFilter: ReportInputFilter, dimension: String?, pager: FilterPager?, order: String?) -> RequestBuilder<String> {
		return getUrlForReportAsCsv(reportTitle: reportTitle, reportText: reportText, headers: headers, reportType: reportType, reportInputFilter: reportInputFilter, dimension: dimension, pager: pager, order: order, objectIds: nil)
	}

	/**  will create a Csv file for the given report and return the URL to access it  */
	public static func getUrlForReportAsCsv(reportTitle: String, reportText: String, headers: String, reportType: ReportType, reportInputFilter: ReportInputFilter, dimension: String?, pager: FilterPager?, order: String?, objectIds: String?) -> RequestBuilder<String> {
		let request: RequestBuilder<String> = RequestBuilder<String>(service: "report", action: "getUrlForReportAsCsv")
			.setBody(key: "reportTitle", value: reportTitle)
			.setBody(key: "reportText", value: reportText)
			.setBody(key: "headers", value: headers)
			.setBody(key: "reportType", value: reportType.rawValue)
			.setBody(key: "reportInputFilter", value: reportInputFilter)
			.setBody(key: "dimension", value: dimension)
			.setBody(key: "pager", value: pager)
			.setBody(key: "order", value: order)
			.setBody(key: "objectIds", value: objectIds)

		return request
	}

	/**  Will serve a requested report  */
	public static func serve(id: String) -> RequestBuilder<String> {
		let request: RequestBuilder<String> = RequestBuilder<String>(service: "report", action: "serve")
			.setBody(key: "id", value: id)

		return request
	}
}
