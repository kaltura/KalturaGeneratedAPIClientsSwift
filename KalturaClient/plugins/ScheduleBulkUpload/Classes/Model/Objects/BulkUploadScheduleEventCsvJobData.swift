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
// Copyright (C) 2006-2022  Kaltura Inc.
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

/**  Represents the Bulk upload job data for CSV bulk upload  */
open class BulkUploadScheduleEventCsvJobData: BulkUploadScheduleEventJobData {

	public class BulkUploadScheduleEventCsvJobDataTokenizer: BulkUploadScheduleEventJobData.BulkUploadScheduleEventJobDataTokenizer {
		
		public var csvVersion: BaseTokenizedObject {
			get {
				return self.append("csvVersion") 
			}
		}
		
		public var columns: ArrayTokenizedObject<StringHolder.StringHolderTokenizer> {
			get {
				return ArrayTokenizedObject<StringHolder.StringHolderTokenizer>(self.append("columns"))
			} 
		}
	}

	/**  The version of the csv file  */
	public var csvVersion: BulkUploadCsvVersion? = nil
	/**  Array containing CSV headers  */
	public var columns: Array<StringHolder>? = nil


	public func setMultiRequestToken(csvVersion: String) {
		self.dict["csvVersion"] = csvVersion
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["csvVersion"] != nil {
			csvVersion = BulkUploadCsvVersion(rawValue: (dict["csvVersion"] as? Int)!)
		}
		if dict["columns"] != nil {
			columns = try JSONParser.parse(array: dict["columns"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(columns != nil) {
			dict["columns"] = columns!.map { value in value.toDictionary() }
		}
		return dict
	}
}

