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

open class BulkUploadJobData: JobData {

	public class BulkUploadJobDataTokenizer: JobData.JobDataTokenizer {
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var uploadedBy: BaseTokenizedObject {
			get {
				return self.append("uploadedBy") 
			}
		}
		
		public var conversionProfileId: BaseTokenizedObject {
			get {
				return self.append("conversionProfileId") 
			}
		}
		
		public var resultsFileLocalPath: BaseTokenizedObject {
			get {
				return self.append("resultsFileLocalPath") 
			}
		}
		
		public var resultsFileUrl: BaseTokenizedObject {
			get {
				return self.append("resultsFileUrl") 
			}
		}
		
		public var numOfEntries: BaseTokenizedObject {
			get {
				return self.append("numOfEntries") 
			}
		}
		
		public var numOfObjects: BaseTokenizedObject {
			get {
				return self.append("numOfObjects") 
			}
		}
		
		public var filePath: BaseTokenizedObject {
			get {
				return self.append("filePath") 
			}
		}
		
		public var bulkUploadObjectType: BaseTokenizedObject {
			get {
				return self.append("bulkUploadObjectType") 
			}
		}
		
		public var fileName: BaseTokenizedObject {
			get {
				return self.append("fileName") 
			}
		}
		
		public func objectData<T: BulkUploadObjectData.BulkUploadObjectDataTokenizer>() -> T {
			return T(self.append("objectData"))
		}
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
		
		public var emailRecipients: BaseTokenizedObject {
			get {
				return self.append("emailRecipients") 
			}
		}
		
		public var numOfErrorObjects: BaseTokenizedObject {
			get {
				return self.append("numOfErrorObjects") 
			}
		}
	}

	public var userId: String? = nil
	/**  The screen name of the user  */
	public var uploadedBy: String? = nil
	/**  Selected profile id for all bulk entries  */
	public var conversionProfileId: Int? = nil
	/**  Created by the API  */
	public var resultsFileLocalPath: String? = nil
	/**  Created by the API  */
	public var resultsFileUrl: String? = nil
	/**  Number of created entries  */
	public var numOfEntries: Int? = nil
	/**  Number of created objects  */
	public var numOfObjects: Int? = nil
	/**  The bulk upload file path  */
	public var filePath: String? = nil
	/**  Type of object for bulk upload  */
	public var bulkUploadObjectType: BulkUploadObjectType? = nil
	/**  Friendly name of the file, used to be recognized later in the logs.  */
	public var fileName: String? = nil
	/**  Data pertaining to the objects being uploaded  */
	public var objectData: BulkUploadObjectData? = nil
	/**  Type of bulk upload  */
	public var type: BulkUploadType? = nil
	/**  Recipients of the email for bulk upload success/failure  */
	public var emailRecipients: String? = nil
	/**  Number of objects that finished on error status  */
	public var numOfErrorObjects: Int? = nil


	public func setMultiRequestToken(userId: String) {
		self.dict["userId"] = userId
	}
	
	public func setMultiRequestToken(uploadedBy: String) {
		self.dict["uploadedBy"] = uploadedBy
	}
	
	public func setMultiRequestToken(conversionProfileId: String) {
		self.dict["conversionProfileId"] = conversionProfileId
	}
	
	public func setMultiRequestToken(resultsFileLocalPath: String) {
		self.dict["resultsFileLocalPath"] = resultsFileLocalPath
	}
	
	public func setMultiRequestToken(resultsFileUrl: String) {
		self.dict["resultsFileUrl"] = resultsFileUrl
	}
	
	public func setMultiRequestToken(numOfEntries: String) {
		self.dict["numOfEntries"] = numOfEntries
	}
	
	public func setMultiRequestToken(numOfObjects: String) {
		self.dict["numOfObjects"] = numOfObjects
	}
	
	public func setMultiRequestToken(filePath: String) {
		self.dict["filePath"] = filePath
	}
	
	public func setMultiRequestToken(bulkUploadObjectType: String) {
		self.dict["bulkUploadObjectType"] = bulkUploadObjectType
	}
	
	public func setMultiRequestToken(fileName: String) {
		self.dict["fileName"] = fileName
	}
	
	public func setMultiRequestToken(type: String) {
		self.dict["type"] = type
	}
	
	public func setMultiRequestToken(emailRecipients: String) {
		self.dict["emailRecipients"] = emailRecipients
	}
	
	public func setMultiRequestToken(numOfErrorObjects: String) {
		self.dict["numOfErrorObjects"] = numOfErrorObjects
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["userId"] != nil {
			userId = dict["userId"] as? String
		}
		if dict["uploadedBy"] != nil {
			uploadedBy = dict["uploadedBy"] as? String
		}
		if dict["conversionProfileId"] != nil {
			conversionProfileId = dict["conversionProfileId"] as? Int
		}
		if dict["resultsFileLocalPath"] != nil {
			resultsFileLocalPath = dict["resultsFileLocalPath"] as? String
		}
		if dict["resultsFileUrl"] != nil {
			resultsFileUrl = dict["resultsFileUrl"] as? String
		}
		if dict["numOfEntries"] != nil {
			numOfEntries = dict["numOfEntries"] as? Int
		}
		if dict["numOfObjects"] != nil {
			numOfObjects = dict["numOfObjects"] as? Int
		}
		if dict["filePath"] != nil {
			filePath = dict["filePath"] as? String
		}
		if dict["bulkUploadObjectType"] != nil {
			bulkUploadObjectType = BulkUploadObjectType(rawValue: "\(dict["bulkUploadObjectType"]!)")
		}
		if dict["fileName"] != nil {
			fileName = dict["fileName"] as? String
		}
		if dict["objectData"] != nil {
		objectData = try JSONParser.parse(object: dict["objectData"] as! [String: Any])		}
		if dict["type"] != nil {
			type = BulkUploadType(rawValue: "\(dict["type"]!)")
		}
		if dict["emailRecipients"] != nil {
			emailRecipients = dict["emailRecipients"] as? String
		}
		if dict["numOfErrorObjects"] != nil {
			numOfErrorObjects = dict["numOfErrorObjects"] as? Int
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(fileName != nil) {
			dict["fileName"] = fileName!
		}
		if(emailRecipients != nil) {
			dict["emailRecipients"] = emailRecipients!
		}
		if(numOfErrorObjects != nil) {
			dict["numOfErrorObjects"] = numOfErrorObjects!
		}
		return dict
	}
}

