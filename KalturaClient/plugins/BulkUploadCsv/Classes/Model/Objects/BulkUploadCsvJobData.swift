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

/**  Represents the Bulk upload job data for xml bulk upload  */
open class BulkUploadCsvJobData: BulkUploadJobData {

	public class BulkUploadCsvJobDataTokenizer: BulkUploadJobData.BulkUploadJobDataTokenizer {
		
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
		
		public var processObjectId: BaseTokenizedObject {
			get {
				return self.append("processObjectId") 
			}
		}
		
		public var processObjectType: BaseTokenizedObject {
			get {
				return self.append("processObjectType") 
			}
		}
	}

	/**  The version of the csv file  */
	public var csvVersion: BulkUploadCsvVersion? = nil
	/**  Array containing CSV headers  */
	public var columns: Array<StringHolder>? = nil
	/**  The object in process  */
	public var processObjectId: String? = nil
	/**  The type of the object in process  */
	public var processObjectType: String? = nil


	public func setMultiRequestToken(csvVersion: String) {
		self.dict["csvVersion"] = csvVersion
	}
	
	public func setMultiRequestToken(processObjectId: String) {
		self.dict["processObjectId"] = processObjectId
	}
	
	public func setMultiRequestToken(processObjectType: String) {
		self.dict["processObjectType"] = processObjectType
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
		if dict["processObjectId"] != nil {
			processObjectId = dict["processObjectId"] as? String
		}
		if dict["processObjectType"] != nil {
			processObjectType = dict["processObjectType"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(columns != nil) {
			dict["columns"] = columns!.map { value in value.toDictionary() }
		}
		if(processObjectId != nil) {
			dict["processObjectId"] = processObjectId!
		}
		if(processObjectType != nil) {
			dict["processObjectType"] = processObjectType!
		}
		return dict
	}
}

