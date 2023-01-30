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
 * This class was generated using generate.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

/**  Bulk upload service is used to upload &amp; manage bulk uploads using CSV files.
   This service manages only entry bulk uploads.  */
public final class BulkUploadService{

	public class AbortTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Aborts the bulk upload and all its child jobs  */
	public static func abort(id: Int64) -> RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AbortTokenizer> {
		let request: RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AbortTokenizer> = RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AbortTokenizer>(service: "bulkupload", action: "abort")
			.setParam(key: "id", value: id)

		return request
	}

	public class AddTokenizer: ClientTokenizer  {
		
		public var conversionProfileId: BaseTokenizedObject {
			get {
				return self.append("conversionProfileId") 
			}
		}
		
		public var bulkUploadType: BaseTokenizedObject {
			get {
				return self.append("bulkUploadType") 
			}
		}
		
		public var uploadedBy: BaseTokenizedObject {
			get {
				return self.append("uploadedBy") 
			}
		}
		
		public var fileName: BaseTokenizedObject {
			get {
				return self.append("fileName") 
			}
		}
	}

	public static func add(conversionProfileId: Int, csvFileData: RequestFile) -> RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AddTokenizer> {
		return add(conversionProfileId: conversionProfileId, csvFileData: csvFileData, bulkUploadType: nil)
	}

	public static func add(conversionProfileId: Int, csvFileData: RequestFile, bulkUploadType: BulkUploadType?) -> RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AddTokenizer> {
		return add(conversionProfileId: conversionProfileId, csvFileData: csvFileData, bulkUploadType: bulkUploadType, uploadedBy: nil)
	}

	public static func add(conversionProfileId: Int, csvFileData: RequestFile, bulkUploadType: BulkUploadType?, uploadedBy: String?) -> RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AddTokenizer> {
		return add(conversionProfileId: conversionProfileId, csvFileData: csvFileData, bulkUploadType: bulkUploadType, uploadedBy: uploadedBy, fileName: nil)
	}

	/**  Add new bulk upload batch job   Conversion profile id can be specified in the
	  API or in the CSV file, the one in the CSV file will be stronger.   If no
	  conversion profile was specified, partner's default will be used  */
	public static func add(conversionProfileId: Int, csvFileData: RequestFile, bulkUploadType: BulkUploadType?, uploadedBy: String?, fileName: String?) -> RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AddTokenizer> {
		let request: RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AddTokenizer> = RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AddTokenizer>(service: "bulkupload", action: "add")
			.setParam(key: "conversionProfileId", value: conversionProfileId)
			.setFile(key: "csvFileData", value: csvFileData)
			.setParam(key: "bulkUploadType", value: bulkUploadType?.rawValue)
			.setParam(key: "uploadedBy", value: uploadedBy)
			.setParam(key: "fileName", value: fileName)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Get bulk upload batch job by id  */
	public static func get(id: Int64) -> RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, GetTokenizer> {
		let request: RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, GetTokenizer> = RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, GetTokenizer>(service: "bulkupload", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<BulkUploadListResponse, BulkUploadListResponse.BulkUploadListResponseTokenizer, ListTokenizer> {
		return list(pager: nil)
	}

	/**  List bulk upload batch jobs  */
	public static func list(pager: FilterPager?) -> RequestBuilder<BulkUploadListResponse, BulkUploadListResponse.BulkUploadListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<BulkUploadListResponse, BulkUploadListResponse.BulkUploadListResponseTokenizer, ListTokenizer> = RequestBuilder<BulkUploadListResponse, BulkUploadListResponse.BulkUploadListResponseTokenizer, ListTokenizer>(service: "bulkupload", action: "list")
			.setParam(key: "pager", value: pager)

		return request
	}
}
