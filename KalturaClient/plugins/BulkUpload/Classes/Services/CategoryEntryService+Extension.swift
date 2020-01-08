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

/**  Add &amp; Manage CategoryEntry - assign entry to category  */
extension CategoryEntryService{

	public class AddFromBulkUploadTokenizer: ClientTokenizer  {
		
		public func bulkUploadData<T: BulkServiceData.BulkServiceDataTokenizer>() -> T {
			return T(self.append("bulkUploadData"))
		}
		
		public func bulkUploadCategoryEntryData<T: BulkUploadCategoryEntryData.BulkUploadCategoryEntryDataTokenizer>() -> T {
			return T(self.append("bulkUploadCategoryEntryData"))
		}
	}

	public static func addFromBulkUpload(bulkUploadData: BulkServiceData) -> RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AddFromBulkUploadTokenizer> {
		return addFromBulkUpload(bulkUploadData: bulkUploadData, bulkUploadCategoryEntryData: nil)
	}

	public static func addFromBulkUpload(bulkUploadData: BulkServiceData, bulkUploadCategoryEntryData: BulkUploadCategoryEntryData?) -> RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AddFromBulkUploadTokenizer> {
		let request: RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AddFromBulkUploadTokenizer> = RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AddFromBulkUploadTokenizer>(service: "categoryentry", action: "addFromBulkUpload")
			.setParam(key: "bulkUploadData", value: bulkUploadData)
			.setParam(key: "bulkUploadCategoryEntryData", value: bulkUploadCategoryEntryData)

		return request
	}

	public class UpdateStatusFromBulkTokenizer: ClientTokenizer  {
		
		public func bulkUploadData<T: BulkUploadJobData.BulkUploadJobDataTokenizer>() -> T {
			return T(self.append("bulkUploadData"))
		}
		
		public func bulkUploadCategoryEntryData<T: BulkUploadCategoryEntryData.BulkUploadCategoryEntryDataTokenizer>() -> T {
			return T(self.append("bulkUploadCategoryEntryData"))
		}
	}

	public static func updateStatusFromBulk(fileData: RequestFile) -> RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, UpdateStatusFromBulkTokenizer> {
		return updateStatusFromBulk(fileData: fileData, bulkUploadData: nil)
	}

	public static func updateStatusFromBulk(fileData: RequestFile, bulkUploadData: BulkUploadJobData?) -> RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, UpdateStatusFromBulkTokenizer> {
		return updateStatusFromBulk(fileData: fileData, bulkUploadData: bulkUploadData, bulkUploadCategoryEntryData: nil)
	}

	public static func updateStatusFromBulk(fileData: RequestFile, bulkUploadData: BulkUploadJobData?, bulkUploadCategoryEntryData: BulkUploadCategoryEntryData?) -> RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, UpdateStatusFromBulkTokenizer> {
		let request: RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, UpdateStatusFromBulkTokenizer> = RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, UpdateStatusFromBulkTokenizer>(service: "categoryentry", action: "updateStatusFromBulk")
			.setFile(key: "fileData", value: fileData)
			.setParam(key: "bulkUploadData", value: bulkUploadData)
			.setParam(key: "bulkUploadCategoryEntryData", value: bulkUploadCategoryEntryData)

		return request
	}
}
