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
// Copyright (C) 2006-2023  Kaltura Inc.
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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class EntryVendorTaskBaseFilter: RelatedFilter {

	public class EntryVendorTaskBaseFilterTokenizer: RelatedFilter.RelatedFilterTokenizer {
		
		public var idEqual: BaseTokenizedObject {
			get {
				return self.append("idEqual") 
			}
		}
		
		public var idIn: BaseTokenizedObject {
			get {
				return self.append("idIn") 
			}
		}
		
		public var idNotIn: BaseTokenizedObject {
			get {
				return self.append("idNotIn") 
			}
		}
		
		public var vendorPartnerIdEqual: BaseTokenizedObject {
			get {
				return self.append("vendorPartnerIdEqual") 
			}
		}
		
		public var vendorPartnerIdIn: BaseTokenizedObject {
			get {
				return self.append("vendorPartnerIdIn") 
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
		
		public var updatedAtGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("updatedAtGreaterThanOrEqual") 
			}
		}
		
		public var updatedAtLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("updatedAtLessThanOrEqual") 
			}
		}
		
		public var queueTimeGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("queueTimeGreaterThanOrEqual") 
			}
		}
		
		public var queueTimeLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("queueTimeLessThanOrEqual") 
			}
		}
		
		public var finishTimeGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("finishTimeGreaterThanOrEqual") 
			}
		}
		
		public var finishTimeLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("finishTimeLessThanOrEqual") 
			}
		}
		
		public var entryIdEqual: BaseTokenizedObject {
			get {
				return self.append("entryIdEqual") 
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
		
		public var reachProfileIdEqual: BaseTokenizedObject {
			get {
				return self.append("reachProfileIdEqual") 
			}
		}
		
		public var reachProfileIdIn: BaseTokenizedObject {
			get {
				return self.append("reachProfileIdIn") 
			}
		}
		
		public var catalogItemIdEqual: BaseTokenizedObject {
			get {
				return self.append("catalogItemIdEqual") 
			}
		}
		
		public var catalogItemIdIn: BaseTokenizedObject {
			get {
				return self.append("catalogItemIdIn") 
			}
		}
		
		public var userIdEqual: BaseTokenizedObject {
			get {
				return self.append("userIdEqual") 
			}
		}
		
		public var contextEqual: BaseTokenizedObject {
			get {
				return self.append("contextEqual") 
			}
		}
		
		public var expectedFinishTimeGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("expectedFinishTimeGreaterThanOrEqual") 
			}
		}
		
		public var expectedFinishTimeLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("expectedFinishTimeLessThanOrEqual") 
			}
		}
		
		public var entryObjectTypeEqual: BaseTokenizedObject {
			get {
				return self.append("entryObjectTypeEqual") 
			}
		}
		
		public var entryObjectTypeIn: BaseTokenizedObject {
			get {
				return self.append("entryObjectTypeIn") 
			}
		}
		
		public var entryObjectTypeNotIn: BaseTokenizedObject {
			get {
				return self.append("entryObjectTypeNotIn") 
			}
		}
	}

	public var idEqual: Int64? = nil
	public var idIn: String? = nil
	public var idNotIn: String? = nil
	public var vendorPartnerIdEqual: Int? = nil
	public var vendorPartnerIdIn: String? = nil
	public var createdAtGreaterThanOrEqual: Int? = nil
	public var createdAtLessThanOrEqual: Int? = nil
	public var updatedAtGreaterThanOrEqual: Int? = nil
	public var updatedAtLessThanOrEqual: Int? = nil
	public var queueTimeGreaterThanOrEqual: Int? = nil
	public var queueTimeLessThanOrEqual: Int? = nil
	public var finishTimeGreaterThanOrEqual: Int? = nil
	public var finishTimeLessThanOrEqual: Int? = nil
	public var entryIdEqual: String? = nil
	public var statusEqual: EntryVendorTaskStatus? = nil
	public var statusIn: String? = nil
	public var reachProfileIdEqual: Int? = nil
	public var reachProfileIdIn: String? = nil
	public var catalogItemIdEqual: Int? = nil
	public var catalogItemIdIn: String? = nil
	public var userIdEqual: String? = nil
	public var contextEqual: String? = nil
	public var expectedFinishTimeGreaterThanOrEqual: Int? = nil
	public var expectedFinishTimeLessThanOrEqual: Int? = nil
	public var entryObjectTypeEqual: EntryObjectType? = nil
	public var entryObjectTypeIn: String? = nil
	public var entryObjectTypeNotIn: String? = nil


	public func setMultiRequestToken(idEqual: String) {
		self.dict["idEqual"] = idEqual
	}
	
	public func setMultiRequestToken(idIn: String) {
		self.dict["idIn"] = idIn
	}
	
	public func setMultiRequestToken(idNotIn: String) {
		self.dict["idNotIn"] = idNotIn
	}
	
	public func setMultiRequestToken(vendorPartnerIdEqual: String) {
		self.dict["vendorPartnerIdEqual"] = vendorPartnerIdEqual
	}
	
	public func setMultiRequestToken(vendorPartnerIdIn: String) {
		self.dict["vendorPartnerIdIn"] = vendorPartnerIdIn
	}
	
	public func setMultiRequestToken(createdAtGreaterThanOrEqual: String) {
		self.dict["createdAtGreaterThanOrEqual"] = createdAtGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(createdAtLessThanOrEqual: String) {
		self.dict["createdAtLessThanOrEqual"] = createdAtLessThanOrEqual
	}
	
	public func setMultiRequestToken(updatedAtGreaterThanOrEqual: String) {
		self.dict["updatedAtGreaterThanOrEqual"] = updatedAtGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(updatedAtLessThanOrEqual: String) {
		self.dict["updatedAtLessThanOrEqual"] = updatedAtLessThanOrEqual
	}
	
	public func setMultiRequestToken(queueTimeGreaterThanOrEqual: String) {
		self.dict["queueTimeGreaterThanOrEqual"] = queueTimeGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(queueTimeLessThanOrEqual: String) {
		self.dict["queueTimeLessThanOrEqual"] = queueTimeLessThanOrEqual
	}
	
	public func setMultiRequestToken(finishTimeGreaterThanOrEqual: String) {
		self.dict["finishTimeGreaterThanOrEqual"] = finishTimeGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(finishTimeLessThanOrEqual: String) {
		self.dict["finishTimeLessThanOrEqual"] = finishTimeLessThanOrEqual
	}
	
	public func setMultiRequestToken(entryIdEqual: String) {
		self.dict["entryIdEqual"] = entryIdEqual
	}
	
	public func setMultiRequestToken(statusEqual: String) {
		self.dict["statusEqual"] = statusEqual
	}
	
	public func setMultiRequestToken(statusIn: String) {
		self.dict["statusIn"] = statusIn
	}
	
	public func setMultiRequestToken(reachProfileIdEqual: String) {
		self.dict["reachProfileIdEqual"] = reachProfileIdEqual
	}
	
	public func setMultiRequestToken(reachProfileIdIn: String) {
		self.dict["reachProfileIdIn"] = reachProfileIdIn
	}
	
	public func setMultiRequestToken(catalogItemIdEqual: String) {
		self.dict["catalogItemIdEqual"] = catalogItemIdEqual
	}
	
	public func setMultiRequestToken(catalogItemIdIn: String) {
		self.dict["catalogItemIdIn"] = catalogItemIdIn
	}
	
	public func setMultiRequestToken(userIdEqual: String) {
		self.dict["userIdEqual"] = userIdEqual
	}
	
	public func setMultiRequestToken(contextEqual: String) {
		self.dict["contextEqual"] = contextEqual
	}
	
	public func setMultiRequestToken(expectedFinishTimeGreaterThanOrEqual: String) {
		self.dict["expectedFinishTimeGreaterThanOrEqual"] = expectedFinishTimeGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(expectedFinishTimeLessThanOrEqual: String) {
		self.dict["expectedFinishTimeLessThanOrEqual"] = expectedFinishTimeLessThanOrEqual
	}
	
	public func setMultiRequestToken(entryObjectTypeEqual: String) {
		self.dict["entryObjectTypeEqual"] = entryObjectTypeEqual
	}
	
	public func setMultiRequestToken(entryObjectTypeIn: String) {
		self.dict["entryObjectTypeIn"] = entryObjectTypeIn
	}
	
	public func setMultiRequestToken(entryObjectTypeNotIn: String) {
		self.dict["entryObjectTypeNotIn"] = entryObjectTypeNotIn
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["idEqual"] != nil {
			idEqual = Int64("\(dict["idEqual"]!)")
		}
		if dict["idIn"] != nil {
			idIn = dict["idIn"] as? String
		}
		if dict["idNotIn"] != nil {
			idNotIn = dict["idNotIn"] as? String
		}
		if dict["vendorPartnerIdEqual"] != nil {
			vendorPartnerIdEqual = dict["vendorPartnerIdEqual"] as? Int
		}
		if dict["vendorPartnerIdIn"] != nil {
			vendorPartnerIdIn = dict["vendorPartnerIdIn"] as? String
		}
		if dict["createdAtGreaterThanOrEqual"] != nil {
			createdAtGreaterThanOrEqual = dict["createdAtGreaterThanOrEqual"] as? Int
		}
		if dict["createdAtLessThanOrEqual"] != nil {
			createdAtLessThanOrEqual = dict["createdAtLessThanOrEqual"] as? Int
		}
		if dict["updatedAtGreaterThanOrEqual"] != nil {
			updatedAtGreaterThanOrEqual = dict["updatedAtGreaterThanOrEqual"] as? Int
		}
		if dict["updatedAtLessThanOrEqual"] != nil {
			updatedAtLessThanOrEqual = dict["updatedAtLessThanOrEqual"] as? Int
		}
		if dict["queueTimeGreaterThanOrEqual"] != nil {
			queueTimeGreaterThanOrEqual = dict["queueTimeGreaterThanOrEqual"] as? Int
		}
		if dict["queueTimeLessThanOrEqual"] != nil {
			queueTimeLessThanOrEqual = dict["queueTimeLessThanOrEqual"] as? Int
		}
		if dict["finishTimeGreaterThanOrEqual"] != nil {
			finishTimeGreaterThanOrEqual = dict["finishTimeGreaterThanOrEqual"] as? Int
		}
		if dict["finishTimeLessThanOrEqual"] != nil {
			finishTimeLessThanOrEqual = dict["finishTimeLessThanOrEqual"] as? Int
		}
		if dict["entryIdEqual"] != nil {
			entryIdEqual = dict["entryIdEqual"] as? String
		}
		if dict["statusEqual"] != nil {
			statusEqual = EntryVendorTaskStatus(rawValue: (dict["statusEqual"] as? Int)!)
		}
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
		}
		if dict["reachProfileIdEqual"] != nil {
			reachProfileIdEqual = dict["reachProfileIdEqual"] as? Int
		}
		if dict["reachProfileIdIn"] != nil {
			reachProfileIdIn = dict["reachProfileIdIn"] as? String
		}
		if dict["catalogItemIdEqual"] != nil {
			catalogItemIdEqual = dict["catalogItemIdEqual"] as? Int
		}
		if dict["catalogItemIdIn"] != nil {
			catalogItemIdIn = dict["catalogItemIdIn"] as? String
		}
		if dict["userIdEqual"] != nil {
			userIdEqual = dict["userIdEqual"] as? String
		}
		if dict["contextEqual"] != nil {
			contextEqual = dict["contextEqual"] as? String
		}
		if dict["expectedFinishTimeGreaterThanOrEqual"] != nil {
			expectedFinishTimeGreaterThanOrEqual = dict["expectedFinishTimeGreaterThanOrEqual"] as? Int
		}
		if dict["expectedFinishTimeLessThanOrEqual"] != nil {
			expectedFinishTimeLessThanOrEqual = dict["expectedFinishTimeLessThanOrEqual"] as? Int
		}
		if dict["entryObjectTypeEqual"] != nil {
			entryObjectTypeEqual = EntryObjectType(rawValue: (dict["entryObjectTypeEqual"] as? Int)!)
		}
		if dict["entryObjectTypeIn"] != nil {
			entryObjectTypeIn = dict["entryObjectTypeIn"] as? String
		}
		if dict["entryObjectTypeNotIn"] != nil {
			entryObjectTypeNotIn = dict["entryObjectTypeNotIn"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(idEqual != nil) {
			dict["idEqual"] = idEqual!
		}
		if(idIn != nil) {
			dict["idIn"] = idIn!
		}
		if(idNotIn != nil) {
			dict["idNotIn"] = idNotIn!
		}
		if(vendorPartnerIdEqual != nil) {
			dict["vendorPartnerIdEqual"] = vendorPartnerIdEqual!
		}
		if(vendorPartnerIdIn != nil) {
			dict["vendorPartnerIdIn"] = vendorPartnerIdIn!
		}
		if(createdAtGreaterThanOrEqual != nil) {
			dict["createdAtGreaterThanOrEqual"] = createdAtGreaterThanOrEqual!
		}
		if(createdAtLessThanOrEqual != nil) {
			dict["createdAtLessThanOrEqual"] = createdAtLessThanOrEqual!
		}
		if(updatedAtGreaterThanOrEqual != nil) {
			dict["updatedAtGreaterThanOrEqual"] = updatedAtGreaterThanOrEqual!
		}
		if(updatedAtLessThanOrEqual != nil) {
			dict["updatedAtLessThanOrEqual"] = updatedAtLessThanOrEqual!
		}
		if(queueTimeGreaterThanOrEqual != nil) {
			dict["queueTimeGreaterThanOrEqual"] = queueTimeGreaterThanOrEqual!
		}
		if(queueTimeLessThanOrEqual != nil) {
			dict["queueTimeLessThanOrEqual"] = queueTimeLessThanOrEqual!
		}
		if(finishTimeGreaterThanOrEqual != nil) {
			dict["finishTimeGreaterThanOrEqual"] = finishTimeGreaterThanOrEqual!
		}
		if(finishTimeLessThanOrEqual != nil) {
			dict["finishTimeLessThanOrEqual"] = finishTimeLessThanOrEqual!
		}
		if(entryIdEqual != nil) {
			dict["entryIdEqual"] = entryIdEqual!
		}
		if(statusEqual != nil) {
			dict["statusEqual"] = statusEqual!.rawValue
		}
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		if(reachProfileIdEqual != nil) {
			dict["reachProfileIdEqual"] = reachProfileIdEqual!
		}
		if(reachProfileIdIn != nil) {
			dict["reachProfileIdIn"] = reachProfileIdIn!
		}
		if(catalogItemIdEqual != nil) {
			dict["catalogItemIdEqual"] = catalogItemIdEqual!
		}
		if(catalogItemIdIn != nil) {
			dict["catalogItemIdIn"] = catalogItemIdIn!
		}
		if(userIdEqual != nil) {
			dict["userIdEqual"] = userIdEqual!
		}
		if(contextEqual != nil) {
			dict["contextEqual"] = contextEqual!
		}
		if(expectedFinishTimeGreaterThanOrEqual != nil) {
			dict["expectedFinishTimeGreaterThanOrEqual"] = expectedFinishTimeGreaterThanOrEqual!
		}
		if(expectedFinishTimeLessThanOrEqual != nil) {
			dict["expectedFinishTimeLessThanOrEqual"] = expectedFinishTimeLessThanOrEqual!
		}
		if(entryObjectTypeEqual != nil) {
			dict["entryObjectTypeEqual"] = entryObjectTypeEqual!.rawValue
		}
		if(entryObjectTypeIn != nil) {
			dict["entryObjectTypeIn"] = entryObjectTypeIn!
		}
		if(entryObjectTypeNotIn != nil) {
			dict["entryObjectTypeNotIn"] = entryObjectTypeNotIn!
		}
		return dict
	}
}

