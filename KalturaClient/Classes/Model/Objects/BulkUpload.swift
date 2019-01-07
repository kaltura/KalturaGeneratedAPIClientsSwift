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
// Copyright (C) 2006-2019  Kaltura Inc.
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

open class BulkUpload: ObjectBase {

	public class BulkUploadTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var uploadedBy: BaseTokenizedObject {
			get {
				return self.append("uploadedBy") 
			}
		}
		
		public var uploadedByUserId: BaseTokenizedObject {
			get {
				return self.append("uploadedByUserId") 
			}
		}
		
		public var uploadedOn: BaseTokenizedObject {
			get {
				return self.append("uploadedOn") 
			}
		}
		
		public var numOfEntries: BaseTokenizedObject {
			get {
				return self.append("numOfEntries") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var logFileUrl: BaseTokenizedObject {
			get {
				return self.append("logFileUrl") 
			}
		}
		
		public var csvFileUrl: BaseTokenizedObject {
			get {
				return self.append("csvFileUrl") 
			}
		}
		
		public var bulkFileUrl: BaseTokenizedObject {
			get {
				return self.append("bulkFileUrl") 
			}
		}
		
		public var bulkUploadType: BaseTokenizedObject {
			get {
				return self.append("bulkUploadType") 
			}
		}
		
		public var results: ArrayTokenizedObject<BulkUploadResult.BulkUploadResultTokenizer> {
			get {
				return ArrayTokenizedObject<BulkUploadResult.BulkUploadResultTokenizer>(self.append("results"))
			} 
		}
		
		public var error: BaseTokenizedObject {
			get {
				return self.append("error") 
			}
		}
		
		public var errorType: BaseTokenizedObject {
			get {
				return self.append("errorType") 
			}
		}
		
		public var errorNumber: BaseTokenizedObject {
			get {
				return self.append("errorNumber") 
			}
		}
		
		public var fileName: BaseTokenizedObject {
			get {
				return self.append("fileName") 
			}
		}
		
		public var description: BaseTokenizedObject {
			get {
				return self.append("description") 
			}
		}
		
		public var numOfObjects: BaseTokenizedObject {
			get {
				return self.append("numOfObjects") 
			}
		}
		
		public var bulkUploadObjectType: BaseTokenizedObject {
			get {
				return self.append("bulkUploadObjectType") 
			}
		}
	}

	public var id: Int64? = nil
	public var uploadedBy: String? = nil
	public var uploadedByUserId: String? = nil
	public var uploadedOn: Int? = nil
	public var numOfEntries: Int? = nil
	public var status: BatchJobStatus? = nil
	public var logFileUrl: String? = nil
	public var csvFileUrl: String? = nil
	public var bulkFileUrl: String? = nil
	public var bulkUploadType: BulkUploadType? = nil
	public var results: Array<BulkUploadResult>? = nil
	public var error: String? = nil
	public var errorType: BatchJobErrorTypes? = nil
	public var errorNumber: Int? = nil
	public var fileName: String? = nil
	public var description: String? = nil
	public var numOfObjects: Int? = nil
	public var bulkUploadObjectType: BulkUploadObjectType? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(uploadedBy: String) {
		self.dict["uploadedBy"] = uploadedBy
	}
	
	public func setMultiRequestToken(uploadedByUserId: String) {
		self.dict["uploadedByUserId"] = uploadedByUserId
	}
	
	public func setMultiRequestToken(uploadedOn: String) {
		self.dict["uploadedOn"] = uploadedOn
	}
	
	public func setMultiRequestToken(numOfEntries: String) {
		self.dict["numOfEntries"] = numOfEntries
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(logFileUrl: String) {
		self.dict["logFileUrl"] = logFileUrl
	}
	
	public func setMultiRequestToken(csvFileUrl: String) {
		self.dict["csvFileUrl"] = csvFileUrl
	}
	
	public func setMultiRequestToken(bulkFileUrl: String) {
		self.dict["bulkFileUrl"] = bulkFileUrl
	}
	
	public func setMultiRequestToken(bulkUploadType: String) {
		self.dict["bulkUploadType"] = bulkUploadType
	}
	
	public func setMultiRequestToken(error: String) {
		self.dict["error"] = error
	}
	
	public func setMultiRequestToken(errorType: String) {
		self.dict["errorType"] = errorType
	}
	
	public func setMultiRequestToken(errorNumber: String) {
		self.dict["errorNumber"] = errorNumber
	}
	
	public func setMultiRequestToken(fileName: String) {
		self.dict["fileName"] = fileName
	}
	
	public func setMultiRequestToken(description: String) {
		self.dict["description"] = description
	}
	
	public func setMultiRequestToken(numOfObjects: String) {
		self.dict["numOfObjects"] = numOfObjects
	}
	
	public func setMultiRequestToken(bulkUploadObjectType: String) {
		self.dict["bulkUploadObjectType"] = bulkUploadObjectType
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = Int64("\(dict["id"]!)")
		}
		if dict["uploadedBy"] != nil {
			uploadedBy = dict["uploadedBy"] as? String
		}
		if dict["uploadedByUserId"] != nil {
			uploadedByUserId = dict["uploadedByUserId"] as? String
		}
		if dict["uploadedOn"] != nil {
			uploadedOn = dict["uploadedOn"] as? Int
		}
		if dict["numOfEntries"] != nil {
			numOfEntries = dict["numOfEntries"] as? Int
		}
		if dict["status"] != nil {
			status = BatchJobStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["logFileUrl"] != nil {
			logFileUrl = dict["logFileUrl"] as? String
		}
		if dict["csvFileUrl"] != nil {
			csvFileUrl = dict["csvFileUrl"] as? String
		}
		if dict["bulkFileUrl"] != nil {
			bulkFileUrl = dict["bulkFileUrl"] as? String
		}
		if dict["bulkUploadType"] != nil {
			bulkUploadType = BulkUploadType(rawValue: "\(dict["bulkUploadType"]!)")
		}
		if dict["results"] != nil {
			results = try JSONParser.parse(array: dict["results"] as! [Any])
		}
		if dict["error"] != nil {
			error = dict["error"] as? String
		}
		if dict["errorType"] != nil {
			errorType = BatchJobErrorTypes(rawValue: (dict["errorType"] as? Int)!)
		}
		if dict["errorNumber"] != nil {
			errorNumber = dict["errorNumber"] as? Int
		}
		if dict["fileName"] != nil {
			fileName = dict["fileName"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["numOfObjects"] != nil {
			numOfObjects = dict["numOfObjects"] as? Int
		}
		if dict["bulkUploadObjectType"] != nil {
			bulkUploadObjectType = BulkUploadObjectType(rawValue: "\(dict["bulkUploadObjectType"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(id != nil) {
			dict["id"] = id!
		}
		if(uploadedBy != nil) {
			dict["uploadedBy"] = uploadedBy!
		}
		if(uploadedByUserId != nil) {
			dict["uploadedByUserId"] = uploadedByUserId!
		}
		if(uploadedOn != nil) {
			dict["uploadedOn"] = uploadedOn!
		}
		if(numOfEntries != nil) {
			dict["numOfEntries"] = numOfEntries!
		}
		if(status != nil) {
			dict["status"] = status!.rawValue
		}
		if(logFileUrl != nil) {
			dict["logFileUrl"] = logFileUrl!
		}
		if(csvFileUrl != nil) {
			dict["csvFileUrl"] = csvFileUrl!
		}
		if(bulkFileUrl != nil) {
			dict["bulkFileUrl"] = bulkFileUrl!
		}
		if(bulkUploadType != nil) {
			dict["bulkUploadType"] = bulkUploadType!.rawValue
		}
		if(results != nil) {
			dict["results"] = results!.map { value in value.toDictionary() }
		}
		if(error != nil) {
			dict["error"] = error!
		}
		if(errorType != nil) {
			dict["errorType"] = errorType!.rawValue
		}
		if(errorNumber != nil) {
			dict["errorNumber"] = errorNumber!
		}
		if(fileName != nil) {
			dict["fileName"] = fileName!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(numOfObjects != nil) {
			dict["numOfObjects"] = numOfObjects!
		}
		if(bulkUploadObjectType != nil) {
			dict["bulkUploadObjectType"] = bulkUploadObjectType!.rawValue
		}
		return dict
	}
}

