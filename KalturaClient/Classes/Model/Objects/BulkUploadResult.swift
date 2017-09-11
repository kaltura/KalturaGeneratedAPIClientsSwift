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

open class BulkUploadResult: ObjectBase {

	public class BulkUploadResultTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var bulkUploadJobId: BaseTokenizedObject {
			get {
				return self.append("bulkUploadJobId") 
			}
		}
		
		public var lineIndex: BaseTokenizedObject {
			get {
				return self.append("lineIndex") 
			}
		}
		
		public var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var action: BaseTokenizedObject {
			get {
				return self.append("action") 
			}
		}
		
		public var objectId: BaseTokenizedObject {
			get {
				return self.append("objectId") 
			}
		}
		
		public var objectStatus: BaseTokenizedObject {
			get {
				return self.append("objectStatus") 
			}
		}
		
		public var bulkUploadResultObjectType: BaseTokenizedObject {
			get {
				return self.append("bulkUploadResultObjectType") 
			}
		}
		
		public var rowData: BaseTokenizedObject {
			get {
				return self.append("rowData") 
			}
		}
		
		public var partnerData: BaseTokenizedObject {
			get {
				return self.append("partnerData") 
			}
		}
		
		public var objectErrorDescription: BaseTokenizedObject {
			get {
				return self.append("objectErrorDescription") 
			}
		}
		
		public var pluginsData: ArrayTokenizedObject<BulkUploadPluginData.BulkUploadPluginDataTokenizer> {
			get {
				return ArrayTokenizedObject<BulkUploadPluginData.BulkUploadPluginDataTokenizer>(self.append("pluginsData"))
			} 
		}
		
		public var errorDescription: BaseTokenizedObject {
			get {
				return self.append("errorDescription") 
			}
		}
		
		public var errorCode: BaseTokenizedObject {
			get {
				return self.append("errorCode") 
			}
		}
		
		public var errorType: BaseTokenizedObject {
			get {
				return self.append("errorType") 
			}
		}
	}

	/**  The id of the result  */
	public var id: Int? = nil
	/**  The id of the parent job  */
	public var bulkUploadJobId: Int64? = nil
	/**  The index of the line in the CSV  */
	public var lineIndex: Int? = nil
	public var partnerId: Int? = nil
	public var status: BulkUploadResultStatus? = nil
	public var action: BulkUploadAction? = nil
	public var objectId: String? = nil
	public var objectStatus: Int? = nil
	public var bulkUploadResultObjectType: BulkUploadObjectType? = nil
	/**  The data as recieved in the csv  */
	public var rowData: String? = nil
	public var partnerData: String? = nil
	public var objectErrorDescription: String? = nil
	public var pluginsData: Array<BulkUploadPluginData>? = nil
	public var errorDescription: String? = nil
	public var errorCode: String? = nil
	public var errorType: Int? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(bulkUploadJobId: String) {
		self.dict["bulkUploadJobId"] = bulkUploadJobId
	}
	
	public func setMultiRequestToken(lineIndex: String) {
		self.dict["lineIndex"] = lineIndex
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(action: String) {
		self.dict["action"] = action
	}
	
	public func setMultiRequestToken(objectId: String) {
		self.dict["objectId"] = objectId
	}
	
	public func setMultiRequestToken(objectStatus: String) {
		self.dict["objectStatus"] = objectStatus
	}
	
	public func setMultiRequestToken(bulkUploadResultObjectType: String) {
		self.dict["bulkUploadResultObjectType"] = bulkUploadResultObjectType
	}
	
	public func setMultiRequestToken(rowData: String) {
		self.dict["rowData"] = rowData
	}
	
	public func setMultiRequestToken(partnerData: String) {
		self.dict["partnerData"] = partnerData
	}
	
	public func setMultiRequestToken(objectErrorDescription: String) {
		self.dict["objectErrorDescription"] = objectErrorDescription
	}
	
	public func setMultiRequestToken(errorDescription: String) {
		self.dict["errorDescription"] = errorDescription
	}
	
	public func setMultiRequestToken(errorCode: String) {
		self.dict["errorCode"] = errorCode
	}
	
	public func setMultiRequestToken(errorType: String) {
		self.dict["errorType"] = errorType
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["bulkUploadJobId"] != nil {
			bulkUploadJobId = Int64("\(dict["bulkUploadJobId"]!)")
		}
		if dict["lineIndex"] != nil {
			lineIndex = dict["lineIndex"] as? Int
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["status"] != nil {
			status = BulkUploadResultStatus(rawValue: "\(dict["status"]!)")
		}
		if dict["action"] != nil {
			action = BulkUploadAction(rawValue: "\(dict["action"]!)")
		}
		if dict["objectId"] != nil {
			objectId = dict["objectId"] as? String
		}
		if dict["objectStatus"] != nil {
			objectStatus = dict["objectStatus"] as? Int
		}
		if dict["bulkUploadResultObjectType"] != nil {
			bulkUploadResultObjectType = BulkUploadObjectType(rawValue: "\(dict["bulkUploadResultObjectType"]!)")
		}
		if dict["rowData"] != nil {
			rowData = dict["rowData"] as? String
		}
		if dict["partnerData"] != nil {
			partnerData = dict["partnerData"] as? String
		}
		if dict["objectErrorDescription"] != nil {
			objectErrorDescription = dict["objectErrorDescription"] as? String
		}
		if dict["pluginsData"] != nil {
			pluginsData = try JSONParser.parse(array: dict["pluginsData"] as! [Any])
		}
		if dict["errorDescription"] != nil {
			errorDescription = dict["errorDescription"] as? String
		}
		if dict["errorCode"] != nil {
			errorCode = dict["errorCode"] as? String
		}
		if dict["errorType"] != nil {
			errorType = dict["errorType"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(bulkUploadJobId != nil) {
			dict["bulkUploadJobId"] = bulkUploadJobId!
		}
		if(lineIndex != nil) {
			dict["lineIndex"] = lineIndex!
		}
		if(partnerId != nil) {
			dict["partnerId"] = partnerId!
		}
		if(status != nil) {
			dict["status"] = status!.rawValue
		}
		if(action != nil) {
			dict["action"] = action!.rawValue
		}
		if(objectId != nil) {
			dict["objectId"] = objectId!
		}
		if(objectStatus != nil) {
			dict["objectStatus"] = objectStatus!
		}
		if(bulkUploadResultObjectType != nil) {
			dict["bulkUploadResultObjectType"] = bulkUploadResultObjectType!.rawValue
		}
		if(rowData != nil) {
			dict["rowData"] = rowData!
		}
		if(partnerData != nil) {
			dict["partnerData"] = partnerData!
		}
		if(objectErrorDescription != nil) {
			dict["objectErrorDescription"] = objectErrorDescription!
		}
		if(pluginsData != nil) {
			dict["pluginsData"] = pluginsData!.map { value in value.toDictionary() }
		}
		if(errorDescription != nil) {
			dict["errorDescription"] = errorDescription!
		}
		if(errorCode != nil) {
			dict["errorCode"] = errorCode!
		}
		if(errorType != nil) {
			dict["errorType"] = errorType!
		}
		return dict
	}
}

