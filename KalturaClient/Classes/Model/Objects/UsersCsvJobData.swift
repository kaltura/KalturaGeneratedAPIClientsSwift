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
// Copyright (C) 2006-2018  Kaltura Inc.
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

open class UsersCsvJobData: JobData {

	public class UsersCsvJobDataTokenizer: JobData.JobDataTokenizer {
		
		public func filter<T: UserFilter.UserFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public var metadataProfileId: BaseTokenizedObject {
			get {
				return self.append("metadataProfileId") 
			}
		}
		
		public var additionalFields: ArrayTokenizedObject<CsvAdditionalFieldInfo.CsvAdditionalFieldInfoTokenizer> {
			get {
				return ArrayTokenizedObject<CsvAdditionalFieldInfo.CsvAdditionalFieldInfoTokenizer>(self.append("additionalFields"))
			} 
		}
		
		public var userName: BaseTokenizedObject {
			get {
				return self.append("userName") 
			}
		}
		
		public var userMail: BaseTokenizedObject {
			get {
				return self.append("userMail") 
			}
		}
		
		public var outputPath: BaseTokenizedObject {
			get {
				return self.append("outputPath") 
			}
		}
	}

	/**  The filter should return the list of users that need to be specified in the csv.  */
	public var filter: UserFilter? = nil
	/**  The metadata profile we should look the xpath in  */
	public var metadataProfileId: Int? = nil
	/**  The xpath to look in the metadataProfileId  and the wanted csv field name  */
	public var additionalFields: Array<CsvAdditionalFieldInfo>? = nil
	/**  The users name  */
	public var userName: String? = nil
	/**  The users email  */
	public var userMail: String? = nil
	/**  The file location  */
	public var outputPath: String? = nil


	public func setMultiRequestToken(metadataProfileId: String) {
		self.dict["metadataProfileId"] = metadataProfileId
	}
	
	public func setMultiRequestToken(userName: String) {
		self.dict["userName"] = userName
	}
	
	public func setMultiRequestToken(userMail: String) {
		self.dict["userMail"] = userMail
	}
	
	public func setMultiRequestToken(outputPath: String) {
		self.dict["outputPath"] = outputPath
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["filter"] != nil {
		filter = try JSONParser.parse(object: dict["filter"] as! [String: Any])		}
		if dict["metadataProfileId"] != nil {
			metadataProfileId = dict["metadataProfileId"] as? Int
		}
		if dict["additionalFields"] != nil {
			additionalFields = try JSONParser.parse(array: dict["additionalFields"] as! [Any])
		}
		if dict["userName"] != nil {
			userName = dict["userName"] as? String
		}
		if dict["userMail"] != nil {
			userMail = dict["userMail"] as? String
		}
		if dict["outputPath"] != nil {
			outputPath = dict["outputPath"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(filter != nil) {
			dict["filter"] = filter!.toDictionary()
		}
		if(metadataProfileId != nil) {
			dict["metadataProfileId"] = metadataProfileId!
		}
		if(additionalFields != nil) {
			dict["additionalFields"] = additionalFields!.map { value in value.toDictionary() }
		}
		if(userName != nil) {
			dict["userName"] = userName!
		}
		if(userMail != nil) {
			dict["userMail"] = userMail!
		}
		if(outputPath != nil) {
			dict["outputPath"] = outputPath!
		}
		return dict
	}
}

