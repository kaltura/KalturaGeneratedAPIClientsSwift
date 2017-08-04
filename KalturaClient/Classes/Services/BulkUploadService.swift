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

/**  Bulk upload service is used to upload &amp; manage bulk uploads using CSV files.
   This service manages only entry bulk uploads.  */
public final class BulkUploadService{

	/**  Aborts the bulk upload and all its child jobs  */
	public static func abort(id: Int64) -> RequestBuilder<BulkUpload> {
		let request: RequestBuilder<BulkUpload> = RequestBuilder<BulkUpload>(service: "bulkupload", action: "abort")
			.setBody(key: "id", value: id)

		return request
	}

	public static func add(conversionProfileId: Int, csvFileData: RequestFile) -> RequestBuilder<BulkUpload> {
		return add(conversionProfileId: conversionProfileId, csvFileData: csvFileData, bulkUploadType: nil)
	}

	public static func add(conversionProfileId: Int, csvFileData: RequestFile, bulkUploadType: BulkUploadType?) -> RequestBuilder<BulkUpload> {
		return add(conversionProfileId: conversionProfileId, csvFileData: csvFileData, bulkUploadType: bulkUploadType, uploadedBy: nil)
	}

	public static func add(conversionProfileId: Int, csvFileData: RequestFile, bulkUploadType: BulkUploadType?, uploadedBy: String?) -> RequestBuilder<BulkUpload> {
		return add(conversionProfileId: conversionProfileId, csvFileData: csvFileData, bulkUploadType: bulkUploadType, uploadedBy: uploadedBy, fileName: nil)
	}

	/**  Add new bulk upload batch job   Conversion profile id can be specified in the
	  API or in the CSV file, the one in the CSV file will be stronger.   If no
	  conversion profile was specified, partner's default will be used  */
	public static func add(conversionProfileId: Int, csvFileData: RequestFile, bulkUploadType: BulkUploadType?, uploadedBy: String?, fileName: String?) -> RequestBuilder<BulkUpload> {
		let request: RequestBuilder<BulkUpload> = RequestBuilder<BulkUpload>(service: "bulkupload", action: "add")
			.setBody(key: "conversionProfileId", value: conversionProfileId)
			.setFile(key: "csvFileData", value: csvFileData)
			.setBody(key: "bulkUploadType", value: bulkUploadType?.rawValue)
			.setBody(key: "uploadedBy", value: uploadedBy)
			.setBody(key: "fileName", value: fileName)

		return request
	}

	/**  Get bulk upload batch job by id  */
	public static func get(id: Int64) -> RequestBuilder<BulkUpload> {
		let request: RequestBuilder<BulkUpload> = RequestBuilder<BulkUpload>(service: "bulkupload", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public static func list() -> RequestBuilder<BulkUploadListResponse> {
		return list(pager: nil)
	}

	/**  List bulk upload batch jobs  */
	public static func list(pager: FilterPager?) -> RequestBuilder<BulkUploadListResponse> {
		let request: RequestBuilder<BulkUploadListResponse> = RequestBuilder<BulkUploadListResponse>(service: "bulkupload", action: "list")
			.setBody(key: "pager", value: pager)

		return request
	}
}
