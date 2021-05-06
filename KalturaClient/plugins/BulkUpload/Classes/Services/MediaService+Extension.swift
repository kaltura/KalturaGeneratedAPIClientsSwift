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

/**  Media service lets you upload and manage media files (images / videos &amp;
  audio)  */
extension MediaService{

	public class BulkUploadAddTokenizer: ClientTokenizer  {
		
		public func bulkUploadData<T: BulkUploadJobData.BulkUploadJobDataTokenizer>() -> T {
			return T(self.append("bulkUploadData"))
		}
		
		public func bulkUploadEntryData<T: BulkUploadEntryData.BulkUploadEntryDataTokenizer>() -> T {
			return T(self.append("bulkUploadEntryData"))
		}
	}

	public static func bulkUploadAdd(fileData: RequestFile) -> RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, BulkUploadAddTokenizer> {
		return bulkUploadAdd(fileData: fileData, bulkUploadData: nil)
	}

	public static func bulkUploadAdd(fileData: RequestFile, bulkUploadData: BulkUploadJobData?) -> RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, BulkUploadAddTokenizer> {
		return bulkUploadAdd(fileData: fileData, bulkUploadData: bulkUploadData, bulkUploadEntryData: nil)
	}

	/**  Add new bulk upload batch job   Conversion profile id can be specified in the
	  API or in the CSV file, the one in the CSV file will be stronger.   If no
	  conversion profile was specified, partner's default will be used  */
	public static func bulkUploadAdd(fileData: RequestFile, bulkUploadData: BulkUploadJobData?, bulkUploadEntryData: BulkUploadEntryData?) -> RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, BulkUploadAddTokenizer> {
		let request: RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, BulkUploadAddTokenizer> = RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, BulkUploadAddTokenizer>(service: "media", action: "bulkUploadAdd")
			.setFile(key: "fileData", value: fileData)
			.setParam(key: "bulkUploadData", value: bulkUploadData)
			.setParam(key: "bulkUploadEntryData", value: bulkUploadEntryData)

		return request
	}
}
