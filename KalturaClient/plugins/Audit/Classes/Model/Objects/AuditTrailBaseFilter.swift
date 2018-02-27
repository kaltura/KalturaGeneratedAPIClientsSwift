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

open class AuditTrailBaseFilter: RelatedFilter {

	public class AuditTrailBaseFilterTokenizer: RelatedFilter.RelatedFilterTokenizer {
		
		public var idEqual: BaseTokenizedObject {
			get {
				return self.append("idEqual") 
			}
		}
		
		public var createdAtGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("createdAtGreaterThanOrEqual") 
			}
		}
		
		public var createdAtLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("createdAtLessThanOrEqual") 
			}
		}
		
		public var parsedAtGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("parsedAtGreaterThanOrEqual") 
			}
		}
		
		public var parsedAtLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("parsedAtLessThanOrEqual") 
			}
		}
		
		public var statusEqual: BaseTokenizedObject {
			get {
				return self.append("statusEqual") 
			}
		}
		
		public var statusIn: BaseTokenizedObject {
			get {
				return self.append("statusIn") 
			}
		}
		
		public var auditObjectTypeEqual: BaseTokenizedObject {
			get {
				return self.append("auditObjectTypeEqual") 
			}
		}
		
		public var auditObjectTypeIn: BaseTokenizedObject {
			get {
				return self.append("auditObjectTypeIn") 
			}
		}
		
		public var objectIdEqual: BaseTokenizedObject {
			get {
				return self.append("objectIdEqual") 
			}
		}
		
		public var objectIdIn: BaseTokenizedObject {
			get {
				return self.append("objectIdIn") 
			}
		}
		
		public var relatedObjectIdEqual: BaseTokenizedObject {
			get {
				return self.append("relatedObjectIdEqual") 
			}
		}
		
		public var relatedObjectIdIn: BaseTokenizedObject {
			get {
				return self.append("relatedObjectIdIn") 
			}
		}
		
		public var relatedObjectTypeEqual: BaseTokenizedObject {
			get {
				return self.append("relatedObjectTypeEqual") 
			}
		}
		
		public var relatedObjectTypeIn: BaseTokenizedObject {
			get {
				return self.append("relatedObjectTypeIn") 
			}
		}
		
		public var entryIdEqual: BaseTokenizedObject {
			get {
				return self.append("entryIdEqual") 
			}
		}
		
		public var entryIdIn: BaseTokenizedObject {
			get {
				return self.append("entryIdIn") 
			}
		}
		
		public var masterPartnerIdEqual: BaseTokenizedObject {
			get {
				return self.append("masterPartnerIdEqual") 
			}
		}
		
		public var masterPartnerIdIn: BaseTokenizedObject {
			get {
				return self.append("masterPartnerIdIn") 
			}
		}
		
		public var partnerIdEqual: BaseTokenizedObject {
			get {
				return self.append("partnerIdEqual") 
			}
		}
		
		public var partnerIdIn: BaseTokenizedObject {
			get {
				return self.append("partnerIdIn") 
			}
		}
		
		public var requestIdEqual: BaseTokenizedObject {
			get {
				return self.append("requestIdEqual") 
			}
		}
		
		public var requestIdIn: BaseTokenizedObject {
			get {
				return self.append("requestIdIn") 
			}
		}
		
		public var userIdEqual: BaseTokenizedObject {
			get {
				return self.append("userIdEqual") 
			}
		}
		
		public var userIdIn: BaseTokenizedObject {
			get {
				return self.append("userIdIn") 
			}
		}
		
		public var actionEqual: BaseTokenizedObject {
			get {
				return self.append("actionEqual") 
			}
		}
		
		public var actionIn: BaseTokenizedObject {
			get {
				return self.append("actionIn") 
			}
		}
		
		public var ksEqual: BaseTokenizedObject {
			get {
				return self.append("ksEqual") 
			}
		}
		
		public var contextEqual: BaseTokenizedObject {
			get {
				return self.append("contextEqual") 
			}
		}
		
		public var contextIn: BaseTokenizedObject {
			get {
				return self.append("contextIn") 
			}
		}
		
		public var entryPointEqual: BaseTokenizedObject {
			get {
				return self.append("entryPointEqual") 
			}
		}
		
		public var entryPointIn: BaseTokenizedObject {
			get {
				return self.append("entryPointIn") 
			}
		}
		
		public var serverNameEqual: BaseTokenizedObject {
			get {
				return self.append("serverNameEqual") 
			}
		}
		
		public var serverNameIn: BaseTokenizedObject {
			get {
				return self.append("serverNameIn") 
			}
		}
		
		public var ipAddressEqual: BaseTokenizedObject {
			get {
				return self.append("ipAddressEqual") 
			}
		}
		
		public var ipAddressIn: BaseTokenizedObject {
			get {
				return self.append("ipAddressIn") 
			}
		}
		
		public var clientTagEqual: BaseTokenizedObject {
			get {
				return self.append("clientTagEqual") 
			}
		}
	}

	public var idEqual: Int? = nil
	public var createdAtGreaterThanOrEqual: Int? = nil
	public var createdAtLessThanOrEqual: Int? = nil
	public var parsedAtGreaterThanOrEqual: Int? = nil
	public var parsedAtLessThanOrEqual: Int? = nil
	public var statusEqual: AuditTrailStatus? = nil
	public var statusIn: String? = nil
	public var auditObjectTypeEqual: AuditTrailObjectType? = nil
	public var auditObjectTypeIn: String? = nil
	public var objectIdEqual: String? = nil
	public var objectIdIn: String? = nil
	public var relatedObjectIdEqual: String? = nil
	public var relatedObjectIdIn: String? = nil
	public var relatedObjectTypeEqual: AuditTrailObjectType? = nil
	public var relatedObjectTypeIn: String? = nil
	public var entryIdEqual: String? = nil
	public var entryIdIn: String? = nil
	public var masterPartnerIdEqual: Int? = nil
	public var masterPartnerIdIn: String? = nil
	public var partnerIdEqual: Int? = nil
	public var partnerIdIn: String? = nil
	public var requestIdEqual: String? = nil
	public var requestIdIn: String? = nil
	public var userIdEqual: String? = nil
	public var userIdIn: String? = nil
	public var actionEqual: AuditTrailAction? = nil
	public var actionIn: String? = nil
	public var ksEqual: String? = nil
	public var contextEqual: AuditTrailContext? = nil
	public var contextIn: String? = nil
	public var entryPointEqual: String? = nil
	public var entryPointIn: String? = nil
	public var serverNameEqual: String? = nil
	public var serverNameIn: String? = nil
	public var ipAddressEqual: String? = nil
	public var ipAddressIn: String? = nil
	public var clientTagEqual: String? = nil


	public func setMultiRequestToken(idEqual: String) {
		self.dict["idEqual"] = idEqual
	}
	
	public func setMultiRequestToken(createdAtGreaterThanOrEqual: String) {
		self.dict["createdAtGreaterThanOrEqual"] = createdAtGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(createdAtLessThanOrEqual: String) {
		self.dict["createdAtLessThanOrEqual"] = createdAtLessThanOrEqual
	}
	
	public func setMultiRequestToken(parsedAtGreaterThanOrEqual: String) {
		self.dict["parsedAtGreaterThanOrEqual"] = parsedAtGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(parsedAtLessThanOrEqual: String) {
		self.dict["parsedAtLessThanOrEqual"] = parsedAtLessThanOrEqual
	}
	
	public func setMultiRequestToken(statusEqual: String) {
		self.dict["statusEqual"] = statusEqual
	}
	
	public func setMultiRequestToken(statusIn: String) {
		self.dict["statusIn"] = statusIn
	}
	
	public func setMultiRequestToken(auditObjectTypeEqual: String) {
		self.dict["auditObjectTypeEqual"] = auditObjectTypeEqual
	}
	
	public func setMultiRequestToken(auditObjectTypeIn: String) {
		self.dict["auditObjectTypeIn"] = auditObjectTypeIn
	}
	
	public func setMultiRequestToken(objectIdEqual: String) {
		self.dict["objectIdEqual"] = objectIdEqual
	}
	
	public func setMultiRequestToken(objectIdIn: String) {
		self.dict["objectIdIn"] = objectIdIn
	}
	
	public func setMultiRequestToken(relatedObjectIdEqual: String) {
		self.dict["relatedObjectIdEqual"] = relatedObjectIdEqual
	}
	
	public func setMultiRequestToken(relatedObjectIdIn: String) {
		self.dict["relatedObjectIdIn"] = relatedObjectIdIn
	}
	
	public func setMultiRequestToken(relatedObjectTypeEqual: String) {
		self.dict["relatedObjectTypeEqual"] = relatedObjectTypeEqual
	}
	
	public func setMultiRequestToken(relatedObjectTypeIn: String) {
		self.dict["relatedObjectTypeIn"] = relatedObjectTypeIn
	}
	
	public func setMultiRequestToken(entryIdEqual: String) {
		self.dict["entryIdEqual"] = entryIdEqual
	}
	
	public func setMultiRequestToken(entryIdIn: String) {
		self.dict["entryIdIn"] = entryIdIn
	}
	
	public func setMultiRequestToken(masterPartnerIdEqual: String) {
		self.dict["masterPartnerIdEqual"] = masterPartnerIdEqual
	}
	
	public func setMultiRequestToken(masterPartnerIdIn: String) {
		self.dict["masterPartnerIdIn"] = masterPartnerIdIn
	}
	
	public func setMultiRequestToken(partnerIdEqual: String) {
		self.dict["partnerIdEqual"] = partnerIdEqual
	}
	
	public func setMultiRequestToken(partnerIdIn: String) {
		self.dict["partnerIdIn"] = partnerIdIn
	}
	
	public func setMultiRequestToken(requestIdEqual: String) {
		self.dict["requestIdEqual"] = requestIdEqual
	}
	
	public func setMultiRequestToken(requestIdIn: String) {
		self.dict["requestIdIn"] = requestIdIn
	}
	
	public func setMultiRequestToken(userIdEqual: String) {
		self.dict["userIdEqual"] = userIdEqual
	}
	
	public func setMultiRequestToken(userIdIn: String) {
		self.dict["userIdIn"] = userIdIn
	}
	
	public func setMultiRequestToken(actionEqual: String) {
		self.dict["actionEqual"] = actionEqual
	}
	
	public func setMultiRequestToken(actionIn: String) {
		self.dict["actionIn"] = actionIn
	}
	
	public func setMultiRequestToken(ksEqual: String) {
		self.dict["ksEqual"] = ksEqual
	}
	
	public func setMultiRequestToken(contextEqual: String) {
		self.dict["contextEqual"] = contextEqual
	}
	
	public func setMultiRequestToken(contextIn: String) {
		self.dict["contextIn"] = contextIn
	}
	
	public func setMultiRequestToken(entryPointEqual: String) {
		self.dict["entryPointEqual"] = entryPointEqual
	}
	
	public func setMultiRequestToken(entryPointIn: String) {
		self.dict["entryPointIn"] = entryPointIn
	}
	
	public func setMultiRequestToken(serverNameEqual: String) {
		self.dict["serverNameEqual"] = serverNameEqual
	}
	
	public func setMultiRequestToken(serverNameIn: String) {
		self.dict["serverNameIn"] = serverNameIn
	}
	
	public func setMultiRequestToken(ipAddressEqual: String) {
		self.dict["ipAddressEqual"] = ipAddressEqual
	}
	
	public func setMultiRequestToken(ipAddressIn: String) {
		self.dict["ipAddressIn"] = ipAddressIn
	}
	
	public func setMultiRequestToken(clientTagEqual: String) {
		self.dict["clientTagEqual"] = clientTagEqual
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["idEqual"] != nil {
			idEqual = dict["idEqual"] as? Int
		}
		if dict["createdAtGreaterThanOrEqual"] != nil {
			createdAtGreaterThanOrEqual = dict["createdAtGreaterThanOrEqual"] as? Int
		}
		if dict["createdAtLessThanOrEqual"] != nil {
			createdAtLessThanOrEqual = dict["createdAtLessThanOrEqual"] as? Int
		}
		if dict["parsedAtGreaterThanOrEqual"] != nil {
			parsedAtGreaterThanOrEqual = dict["parsedAtGreaterThanOrEqual"] as? Int
		}
		if dict["parsedAtLessThanOrEqual"] != nil {
			parsedAtLessThanOrEqual = dict["parsedAtLessThanOrEqual"] as? Int
		}
		if dict["statusEqual"] != nil {
			statusEqual = AuditTrailStatus(rawValue: (dict["statusEqual"] as? Int)!)
		}
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
		}
		if dict["auditObjectTypeEqual"] != nil {
			auditObjectTypeEqual = AuditTrailObjectType(rawValue: "\(dict["auditObjectTypeEqual"]!)")
		}
		if dict["auditObjectTypeIn"] != nil {
			auditObjectTypeIn = dict["auditObjectTypeIn"] as? String
		}
		if dict["objectIdEqual"] != nil {
			objectIdEqual = dict["objectIdEqual"] as? String
		}
		if dict["objectIdIn"] != nil {
			objectIdIn = dict["objectIdIn"] as? String
		}
		if dict["relatedObjectIdEqual"] != nil {
			relatedObjectIdEqual = dict["relatedObjectIdEqual"] as? String
		}
		if dict["relatedObjectIdIn"] != nil {
			relatedObjectIdIn = dict["relatedObjectIdIn"] as? String
		}
		if dict["relatedObjectTypeEqual"] != nil {
			relatedObjectTypeEqual = AuditTrailObjectType(rawValue: "\(dict["relatedObjectTypeEqual"]!)")
		}
		if dict["relatedObjectTypeIn"] != nil {
			relatedObjectTypeIn = dict["relatedObjectTypeIn"] as? String
		}
		if dict["entryIdEqual"] != nil {
			entryIdEqual = dict["entryIdEqual"] as? String
		}
		if dict["entryIdIn"] != nil {
			entryIdIn = dict["entryIdIn"] as? String
		}
		if dict["masterPartnerIdEqual"] != nil {
			masterPartnerIdEqual = dict["masterPartnerIdEqual"] as? Int
		}
		if dict["masterPartnerIdIn"] != nil {
			masterPartnerIdIn = dict["masterPartnerIdIn"] as? String
		}
		if dict["partnerIdEqual"] != nil {
			partnerIdEqual = dict["partnerIdEqual"] as? Int
		}
		if dict["partnerIdIn"] != nil {
			partnerIdIn = dict["partnerIdIn"] as? String
		}
		if dict["requestIdEqual"] != nil {
			requestIdEqual = dict["requestIdEqual"] as? String
		}
		if dict["requestIdIn"] != nil {
			requestIdIn = dict["requestIdIn"] as? String
		}
		if dict["userIdEqual"] != nil {
			userIdEqual = dict["userIdEqual"] as? String
		}
		if dict["userIdIn"] != nil {
			userIdIn = dict["userIdIn"] as? String
		}
		if dict["actionEqual"] != nil {
			actionEqual = AuditTrailAction(rawValue: "\(dict["actionEqual"]!)")
		}
		if dict["actionIn"] != nil {
			actionIn = dict["actionIn"] as? String
		}
		if dict["ksEqual"] != nil {
			ksEqual = dict["ksEqual"] as? String
		}
		if dict["contextEqual"] != nil {
			contextEqual = AuditTrailContext(rawValue: (dict["contextEqual"] as? Int)!)
		}
		if dict["contextIn"] != nil {
			contextIn = dict["contextIn"] as? String
		}
		if dict["entryPointEqual"] != nil {
			entryPointEqual = dict["entryPointEqual"] as? String
		}
		if dict["entryPointIn"] != nil {
			entryPointIn = dict["entryPointIn"] as? String
		}
		if dict["serverNameEqual"] != nil {
			serverNameEqual = dict["serverNameEqual"] as? String
		}
		if dict["serverNameIn"] != nil {
			serverNameIn = dict["serverNameIn"] as? String
		}
		if dict["ipAddressEqual"] != nil {
			ipAddressEqual = dict["ipAddressEqual"] as? String
		}
		if dict["ipAddressIn"] != nil {
			ipAddressIn = dict["ipAddressIn"] as? String
		}
		if dict["clientTagEqual"] != nil {
			clientTagEqual = dict["clientTagEqual"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(idEqual != nil) {
			dict["idEqual"] = idEqual!
		}
		if(createdAtGreaterThanOrEqual != nil) {
			dict["createdAtGreaterThanOrEqual"] = createdAtGreaterThanOrEqual!
		}
		if(createdAtLessThanOrEqual != nil) {
			dict["createdAtLessThanOrEqual"] = createdAtLessThanOrEqual!
		}
		if(parsedAtGreaterThanOrEqual != nil) {
			dict["parsedAtGreaterThanOrEqual"] = parsedAtGreaterThanOrEqual!
		}
		if(parsedAtLessThanOrEqual != nil) {
			dict["parsedAtLessThanOrEqual"] = parsedAtLessThanOrEqual!
		}
		if(statusEqual != nil) {
			dict["statusEqual"] = statusEqual!.rawValue
		}
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		if(auditObjectTypeEqual != nil) {
			dict["auditObjectTypeEqual"] = auditObjectTypeEqual!.rawValue
		}
		if(auditObjectTypeIn != nil) {
			dict["auditObjectTypeIn"] = auditObjectTypeIn!
		}
		if(objectIdEqual != nil) {
			dict["objectIdEqual"] = objectIdEqual!
		}
		if(objectIdIn != nil) {
			dict["objectIdIn"] = objectIdIn!
		}
		if(relatedObjectIdEqual != nil) {
			dict["relatedObjectIdEqual"] = relatedObjectIdEqual!
		}
		if(relatedObjectIdIn != nil) {
			dict["relatedObjectIdIn"] = relatedObjectIdIn!
		}
		if(relatedObjectTypeEqual != nil) {
			dict["relatedObjectTypeEqual"] = relatedObjectTypeEqual!.rawValue
		}
		if(relatedObjectTypeIn != nil) {
			dict["relatedObjectTypeIn"] = relatedObjectTypeIn!
		}
		if(entryIdEqual != nil) {
			dict["entryIdEqual"] = entryIdEqual!
		}
		if(entryIdIn != nil) {
			dict["entryIdIn"] = entryIdIn!
		}
		if(masterPartnerIdEqual != nil) {
			dict["masterPartnerIdEqual"] = masterPartnerIdEqual!
		}
		if(masterPartnerIdIn != nil) {
			dict["masterPartnerIdIn"] = masterPartnerIdIn!
		}
		if(partnerIdEqual != nil) {
			dict["partnerIdEqual"] = partnerIdEqual!
		}
		if(partnerIdIn != nil) {
			dict["partnerIdIn"] = partnerIdIn!
		}
		if(requestIdEqual != nil) {
			dict["requestIdEqual"] = requestIdEqual!
		}
		if(requestIdIn != nil) {
			dict["requestIdIn"] = requestIdIn!
		}
		if(userIdEqual != nil) {
			dict["userIdEqual"] = userIdEqual!
		}
		if(userIdIn != nil) {
			dict["userIdIn"] = userIdIn!
		}
		if(actionEqual != nil) {
			dict["actionEqual"] = actionEqual!.rawValue
		}
		if(actionIn != nil) {
			dict["actionIn"] = actionIn!
		}
		if(ksEqual != nil) {
			dict["ksEqual"] = ksEqual!
		}
		if(contextEqual != nil) {
			dict["contextEqual"] = contextEqual!.rawValue
		}
		if(contextIn != nil) {
			dict["contextIn"] = contextIn!
		}
		if(entryPointEqual != nil) {
			dict["entryPointEqual"] = entryPointEqual!
		}
		if(entryPointIn != nil) {
			dict["entryPointIn"] = entryPointIn!
		}
		if(serverNameEqual != nil) {
			dict["serverNameEqual"] = serverNameEqual!
		}
		if(serverNameIn != nil) {
			dict["serverNameIn"] = serverNameIn!
		}
		if(ipAddressEqual != nil) {
			dict["ipAddressEqual"] = ipAddressEqual!
		}
		if(ipAddressIn != nil) {
			dict["ipAddressIn"] = ipAddressIn!
		}
		if(clientTagEqual != nil) {
			dict["clientTagEqual"] = clientTagEqual!
		}
		return dict
	}
}

