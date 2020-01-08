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

open class VendorCatalogItemBaseFilter: RelatedFilter {

	public class VendorCatalogItemBaseFilterTokenizer: RelatedFilter.RelatedFilterTokenizer {
		
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
		
		public var serviceTypeEqual: BaseTokenizedObject {
			get {
				return self.append("serviceTypeEqual") 
			}
		}
		
		public var serviceTypeIn: BaseTokenizedObject {
			get {
				return self.append("serviceTypeIn") 
			}
		}
		
		public var serviceFeatureEqual: BaseTokenizedObject {
			get {
				return self.append("serviceFeatureEqual") 
			}
		}
		
		public var serviceFeatureIn: BaseTokenizedObject {
			get {
				return self.append("serviceFeatureIn") 
			}
		}
		
		public var turnAroundTimeEqual: BaseTokenizedObject {
			get {
				return self.append("turnAroundTimeEqual") 
			}
		}
		
		public var turnAroundTimeIn: BaseTokenizedObject {
			get {
				return self.append("turnAroundTimeIn") 
			}
		}
	}

	public var idEqual: Int? = nil
	public var idIn: String? = nil
	public var idNotIn: String? = nil
	public var vendorPartnerIdEqual: Int? = nil
	public var vendorPartnerIdIn: String? = nil
	public var createdAtGreaterThanOrEqual: Int? = nil
	public var createdAtLessThanOrEqual: Int? = nil
	public var updatedAtGreaterThanOrEqual: Int? = nil
	public var updatedAtLessThanOrEqual: Int? = nil
	public var statusEqual: VendorCatalogItemStatus? = nil
	public var statusIn: String? = nil
	public var serviceTypeEqual: VendorServiceType? = nil
	public var serviceTypeIn: String? = nil
	public var serviceFeatureEqual: VendorServiceFeature? = nil
	public var serviceFeatureIn: String? = nil
	public var turnAroundTimeEqual: VendorServiceTurnAroundTime? = nil
	public var turnAroundTimeIn: String? = nil


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
	
	public func setMultiRequestToken(statusEqual: String) {
		self.dict["statusEqual"] = statusEqual
	}
	
	public func setMultiRequestToken(statusIn: String) {
		self.dict["statusIn"] = statusIn
	}
	
	public func setMultiRequestToken(serviceTypeEqual: String) {
		self.dict["serviceTypeEqual"] = serviceTypeEqual
	}
	
	public func setMultiRequestToken(serviceTypeIn: String) {
		self.dict["serviceTypeIn"] = serviceTypeIn
	}
	
	public func setMultiRequestToken(serviceFeatureEqual: String) {
		self.dict["serviceFeatureEqual"] = serviceFeatureEqual
	}
	
	public func setMultiRequestToken(serviceFeatureIn: String) {
		self.dict["serviceFeatureIn"] = serviceFeatureIn
	}
	
	public func setMultiRequestToken(turnAroundTimeEqual: String) {
		self.dict["turnAroundTimeEqual"] = turnAroundTimeEqual
	}
	
	public func setMultiRequestToken(turnAroundTimeIn: String) {
		self.dict["turnAroundTimeIn"] = turnAroundTimeIn
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["idEqual"] != nil {
			idEqual = dict["idEqual"] as? Int
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
		if dict["statusEqual"] != nil {
			statusEqual = VendorCatalogItemStatus(rawValue: (dict["statusEqual"] as? Int)!)
		}
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
		}
		if dict["serviceTypeEqual"] != nil {
			serviceTypeEqual = VendorServiceType(rawValue: (dict["serviceTypeEqual"] as? Int)!)
		}
		if dict["serviceTypeIn"] != nil {
			serviceTypeIn = dict["serviceTypeIn"] as? String
		}
		if dict["serviceFeatureEqual"] != nil {
			serviceFeatureEqual = VendorServiceFeature(rawValue: (dict["serviceFeatureEqual"] as? Int)!)
		}
		if dict["serviceFeatureIn"] != nil {
			serviceFeatureIn = dict["serviceFeatureIn"] as? String
		}
		if dict["turnAroundTimeEqual"] != nil {
			turnAroundTimeEqual = VendorServiceTurnAroundTime(rawValue: (dict["turnAroundTimeEqual"] as? Int)!)
		}
		if dict["turnAroundTimeIn"] != nil {
			turnAroundTimeIn = dict["turnAroundTimeIn"] as? String
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
		if(statusEqual != nil) {
			dict["statusEqual"] = statusEqual!.rawValue
		}
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		if(serviceTypeEqual != nil) {
			dict["serviceTypeEqual"] = serviceTypeEqual!.rawValue
		}
		if(serviceTypeIn != nil) {
			dict["serviceTypeIn"] = serviceTypeIn!
		}
		if(serviceFeatureEqual != nil) {
			dict["serviceFeatureEqual"] = serviceFeatureEqual!.rawValue
		}
		if(serviceFeatureIn != nil) {
			dict["serviceFeatureIn"] = serviceFeatureIn!
		}
		if(turnAroundTimeEqual != nil) {
			dict["turnAroundTimeEqual"] = turnAroundTimeEqual!.rawValue
		}
		if(turnAroundTimeIn != nil) {
			dict["turnAroundTimeIn"] = turnAroundTimeIn!
		}
		return dict
	}
}

