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
// Copyright (C) 2006-2021  Kaltura Inc.
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

/**  Bulk upload service is used to upload &amp; manage bulk uploads  */
public final class BulkService{

	public class AbortTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Aborts the bulk upload and all its child jobs  */
	public static func abort(id: Int) -> RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AbortTokenizer> {
		let request: RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AbortTokenizer> = RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AbortTokenizer>(service: "bulkupload_bulk", action: "abort")
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

	/**  Get bulk upload batch job by id  */
	public static func get(id: Int) -> RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, GetTokenizer> {
		let request: RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, GetTokenizer> = RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, GetTokenizer>(service: "bulkupload_bulk", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func bulkUploadFilter<T: BulkUploadFilter.BulkUploadFilterTokenizer>() -> T {
			return T(self.append("bulkUploadFilter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<BulkUploadListResponse, BulkUploadListResponse.BulkUploadListResponseTokenizer, ListTokenizer> {
		return list(bulkUploadFilter: nil)
	}

	public static func list(bulkUploadFilter: BulkUploadFilter?) -> RequestBuilder<BulkUploadListResponse, BulkUploadListResponse.BulkUploadListResponseTokenizer, ListTokenizer> {
		return list(bulkUploadFilter: bulkUploadFilter, pager: nil)
	}

	/**  List bulk upload batch jobs  */
	public static func list(bulkUploadFilter: BulkUploadFilter?, pager: FilterPager?) -> RequestBuilder<BulkUploadListResponse, BulkUploadListResponse.BulkUploadListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<BulkUploadListResponse, BulkUploadListResponse.BulkUploadListResponseTokenizer, ListTokenizer> = RequestBuilder<BulkUploadListResponse, BulkUploadListResponse.BulkUploadListResponseTokenizer, ListTokenizer>(service: "bulkupload_bulk", action: "list")
			.setParam(key: "bulkUploadFilter", value: bulkUploadFilter)
			.setParam(key: "pager", value: pager)

		return request
	}
}
