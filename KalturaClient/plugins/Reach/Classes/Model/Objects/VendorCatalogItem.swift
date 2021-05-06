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
// Copyright (C) 2006-2021  Kaltura Inc.
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

open class VendorCatalogItem: ObjectBase {

	public class VendorCatalogItemTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var vendorPartnerId: BaseTokenizedObject {
			get {
				return self.append("vendorPartnerId") 
			}
		}
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var systemName: BaseTokenizedObject {
			get {
				return self.append("systemName") 
			}
		}
		
		public var createdAt: BaseTokenizedObject {
			get {
				return self.append("createdAt") 
			}
		}
		
		public var updatedAt: BaseTokenizedObject {
			get {
				return self.append("updatedAt") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var serviceType: BaseTokenizedObject {
			get {
				return self.append("serviceType") 
			}
		}
		
		public var serviceFeature: BaseTokenizedObject {
			get {
				return self.append("serviceFeature") 
			}
		}
		
		public var turnAroundTime: BaseTokenizedObject {
			get {
				return self.append("turnAroundTime") 
			}
		}
		
		public func pricing<T: VendorCatalogItemPricing.VendorCatalogItemPricingTokenizer>() -> T {
			return T(self.append("pricing"))
		}
		
		public var allowResubmission: BaseTokenizedObject {
			get {
				return self.append("allowResubmission") 
			}
		}
	}

	public var id: Int? = nil
	public var vendorPartnerId: Int? = nil
	public var name: String? = nil
	public var systemName: String? = nil
	public var createdAt: Int? = nil
	public var updatedAt: Int? = nil
	public var status: VendorCatalogItemStatus? = nil
	public var serviceType: VendorServiceType? = nil
	public var serviceFeature: VendorServiceFeature? = nil
	public var turnAroundTime: VendorServiceTurnAroundTime? = nil
	public var pricing: VendorCatalogItemPricing? = nil
	public var allowResubmission: Bool? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(vendorPartnerId: String) {
		self.dict["vendorPartnerId"] = vendorPartnerId
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(systemName: String) {
		self.dict["systemName"] = systemName
	}
	
	public func setMultiRequestToken(createdAt: String) {
		self.dict["createdAt"] = createdAt
	}
	
	public func setMultiRequestToken(updatedAt: String) {
		self.dict["updatedAt"] = updatedAt
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(serviceType: String) {
		self.dict["serviceType"] = serviceType
	}
	
	public func setMultiRequestToken(serviceFeature: String) {
		self.dict["serviceFeature"] = serviceFeature
	}
	
	public func setMultiRequestToken(turnAroundTime: String) {
		self.dict["turnAroundTime"] = turnAroundTime
	}
	
	public func setMultiRequestToken(allowResubmission: String) {
		self.dict["allowResubmission"] = allowResubmission
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["vendorPartnerId"] != nil {
			vendorPartnerId = dict["vendorPartnerId"] as? Int
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["systemName"] != nil {
			systemName = dict["systemName"] as? String
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["status"] != nil {
			status = VendorCatalogItemStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["serviceType"] != nil {
			serviceType = VendorServiceType(rawValue: (dict["serviceType"] as? Int)!)
		}
		if dict["serviceFeature"] != nil {
			serviceFeature = VendorServiceFeature(rawValue: (dict["serviceFeature"] as? Int)!)
		}
		if dict["turnAroundTime"] != nil {
			turnAroundTime = VendorServiceTurnAroundTime(rawValue: (dict["turnAroundTime"] as? Int)!)
		}
		if dict["pricing"] != nil {
		pricing = try JSONParser.parse(object: dict["pricing"] as! [String: Any])		}
		if dict["allowResubmission"] != nil {
			allowResubmission = dict["allowResubmission"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(vendorPartnerId != nil) {
			dict["vendorPartnerId"] = vendorPartnerId!
		}
		if(name != nil) {
			dict["name"] = name!
		}
		if(systemName != nil) {
			dict["systemName"] = systemName!
		}
		if(serviceType != nil) {
			dict["serviceType"] = serviceType!.rawValue
		}
		if(turnAroundTime != nil) {
			dict["turnAroundTime"] = turnAroundTime!.rawValue
		}
		if(pricing != nil) {
			dict["pricing"] = pricing!.toDictionary()
		}
		if(allowResubmission != nil) {
			dict["allowResubmission"] = allowResubmission!
		}
		return dict
	}
}

