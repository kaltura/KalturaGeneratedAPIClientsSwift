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

open class AuditTrail: ObjectBase {

	public class AuditTrailTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var createdAt: BaseTokenizedObject {
			get {
				return self.append("createdAt") 
			}
		}
		
		public var parsedAt: BaseTokenizedObject {
			get {
				return self.append("parsedAt") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var auditObjectType: BaseTokenizedObject {
			get {
				return self.append("auditObjectType") 
			}
		}
		
		public var objectId: BaseTokenizedObject {
			get {
				return self.append("objectId") 
			}
		}
		
		public var relatedObjectId: BaseTokenizedObject {
			get {
				return self.append("relatedObjectId") 
			}
		}
		
		public var relatedObjectType: BaseTokenizedObject {
			get {
				return self.append("relatedObjectType") 
			}
		}
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var masterPartnerId: BaseTokenizedObject {
			get {
				return self.append("masterPartnerId") 
			}
		}
		
		public var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var requestId_: BaseTokenizedObject {
			get {
				return self.append("requestId_") 
			}
		}
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var action: BaseTokenizedObject {
			get {
				return self.append("action") 
			}
		}
		
		public func data<T: AuditTrailInfo.AuditTrailInfoTokenizer>() -> T {
			return T(self.append("data"))
		}
		
		public var ks: BaseTokenizedObject {
			get {
				return self.append("ks") 
			}
		}
		
		public var context: BaseTokenizedObject {
			get {
				return self.append("context") 
			}
		}
		
		public var entryPoint: BaseTokenizedObject {
			get {
				return self.append("entryPoint") 
			}
		}
		
		public var serverName: BaseTokenizedObject {
			get {
				return self.append("serverName") 
			}
		}
		
		public var ipAddress: BaseTokenizedObject {
			get {
				return self.append("ipAddress") 
			}
		}
		
		public var userAgent: BaseTokenizedObject {
			get {
				return self.append("userAgent") 
			}
		}
		
		public var clientTag: BaseTokenizedObject {
			get {
				return self.append("clientTag") 
			}
		}
		
		public var description: BaseTokenizedObject {
			get {
				return self.append("description") 
			}
		}
		
		public var errorDescription: BaseTokenizedObject {
			get {
				return self.append("errorDescription") 
			}
		}
	}

	public var id: Int? = nil
	public var createdAt: Int? = nil
	/**  Indicates when the data was parsed  */
	public var parsedAt: Int? = nil
	public var status: AuditTrailStatus? = nil
	public var auditObjectType: AuditTrailObjectType? = nil
	public var objectId: String? = nil
	public var relatedObjectId: String? = nil
	public var relatedObjectType: AuditTrailObjectType? = nil
	public var entryId: String? = nil
	public var masterPartnerId: Int? = nil
	public var partnerId: Int? = nil
	public var requestId_: String? = nil
	public var userId: String? = nil
	public var action: AuditTrailAction? = nil
	public var data: AuditTrailInfo? = nil
	public var ks: String? = nil
	public var context: AuditTrailContext? = nil
	/**  The API service and action that called and caused this audit  */
	public var entryPoint: String? = nil
	public var serverName: String? = nil
	public var ipAddress: String? = nil
	public var userAgent: String? = nil
	public var clientTag: String? = nil
	public var description: String? = nil
	public var errorDescription: String? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(createdAt: String) {
		self.dict["createdAt"] = createdAt
	}
	
	public func setMultiRequestToken(parsedAt: String) {
		self.dict["parsedAt"] = parsedAt
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(auditObjectType: String) {
		self.dict["auditObjectType"] = auditObjectType
	}
	
	public func setMultiRequestToken(objectId: String) {
		self.dict["objectId"] = objectId
	}
	
	public func setMultiRequestToken(relatedObjectId: String) {
		self.dict["relatedObjectId"] = relatedObjectId
	}
	
	public func setMultiRequestToken(relatedObjectType: String) {
		self.dict["relatedObjectType"] = relatedObjectType
	}
	
	public func setMultiRequestToken(entryId: String) {
		self.dict["entryId"] = entryId
	}
	
	public func setMultiRequestToken(masterPartnerId: String) {
		self.dict["masterPartnerId"] = masterPartnerId
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(requestId_: String) {
		self.dict["requestId"] = requestId_
	}
	
	public func setMultiRequestToken(userId: String) {
		self.dict["userId"] = userId
	}
	
	public func setMultiRequestToken(action: String) {
		self.dict["action"] = action
	}
	
	public func setMultiRequestToken(ks: String) {
		self.dict["ks"] = ks
	}
	
	public func setMultiRequestToken(context: String) {
		self.dict["context"] = context
	}
	
	public func setMultiRequestToken(entryPoint: String) {
		self.dict["entryPoint"] = entryPoint
	}
	
	public func setMultiRequestToken(serverName: String) {
		self.dict["serverName"] = serverName
	}
	
	public func setMultiRequestToken(ipAddress: String) {
		self.dict["ipAddress"] = ipAddress
	}
	
	public func setMultiRequestToken(userAgent: String) {
		self.dict["userAgent"] = userAgent
	}
	
	public func setMultiRequestToken(clientTag: String) {
		self.dict["clientTag"] = clientTag
	}
	
	public func setMultiRequestToken(description: String) {
		self.dict["description"] = description
	}
	
	public func setMultiRequestToken(errorDescription: String) {
		self.dict["errorDescription"] = errorDescription
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["parsedAt"] != nil {
			parsedAt = dict["parsedAt"] as? Int
		}
		if dict["status"] != nil {
			status = AuditTrailStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["auditObjectType"] != nil {
			auditObjectType = AuditTrailObjectType(rawValue: "\(dict["auditObjectType"]!)")
		}
		if dict["objectId"] != nil {
			objectId = dict["objectId"] as? String
		}
		if dict["relatedObjectId"] != nil {
			relatedObjectId = dict["relatedObjectId"] as? String
		}
		if dict["relatedObjectType"] != nil {
			relatedObjectType = AuditTrailObjectType(rawValue: "\(dict["relatedObjectType"]!)")
		}
		if dict["entryId"] != nil {
			entryId = dict["entryId"] as? String
		}
		if dict["masterPartnerId"] != nil {
			masterPartnerId = dict["masterPartnerId"] as? Int
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["requestId"] != nil {
			requestId_ = dict["requestId"] as? String
		}
		if dict["userId"] != nil {
			userId = dict["userId"] as? String
		}
		if dict["action"] != nil {
			action = AuditTrailAction(rawValue: "\(dict["action"]!)")
		}
		if dict["data"] != nil {
		data = try JSONParser.parse(object: dict["data"] as! [String: Any])		}
		if dict["ks"] != nil {
			ks = dict["ks"] as? String
		}
		if dict["context"] != nil {
			context = AuditTrailContext(rawValue: (dict["context"] as? Int)!)
		}
		if dict["entryPoint"] != nil {
			entryPoint = dict["entryPoint"] as? String
		}
		if dict["serverName"] != nil {
			serverName = dict["serverName"] as? String
		}
		if dict["ipAddress"] != nil {
			ipAddress = dict["ipAddress"] as? String
		}
		if dict["userAgent"] != nil {
			userAgent = dict["userAgent"] as? String
		}
		if dict["clientTag"] != nil {
			clientTag = dict["clientTag"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["errorDescription"] != nil {
			errorDescription = dict["errorDescription"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(auditObjectType != nil) {
			dict["auditObjectType"] = auditObjectType!.rawValue
		}
		if(objectId != nil) {
			dict["objectId"] = objectId!
		}
		if(relatedObjectId != nil) {
			dict["relatedObjectId"] = relatedObjectId!
		}
		if(relatedObjectType != nil) {
			dict["relatedObjectType"] = relatedObjectType!.rawValue
		}
		if(entryId != nil) {
			dict["entryId"] = entryId!
		}
		if(userId != nil) {
			dict["userId"] = userId!
		}
		if(action != nil) {
			dict["action"] = action!.rawValue
		}
		if(data != nil) {
			dict["data"] = data!.toDictionary()
		}
		if(clientTag != nil) {
			dict["clientTag"] = clientTag!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		return dict
	}
}

