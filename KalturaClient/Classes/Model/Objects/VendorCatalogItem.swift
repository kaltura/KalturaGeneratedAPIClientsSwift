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
		
		public var engineType: BaseTokenizedObject {
			get {
				return self.append("engineType") 
			}
		}
		
		public var sourceLanguage: BaseTokenizedObject {
			get {
				return self.append("sourceLanguage") 
			}
		}
		
		public var allowResubmission: BaseTokenizedObject {
			get {
				return self.append("allowResubmission") 
			}
		}
		
		public var payPerUse: BaseTokenizedObject {
			get {
				return self.append("payPerUse") 
			}
		}
		
		public var vendorData: BaseTokenizedObject {
			get {
				return self.append("vendorData") 
			}
		}
		
		public var stage: BaseTokenizedObject {
			get {
				return self.append("stage") 
			}
		}
		
		public var lastBulkUpdateId: BaseTokenizedObject {
			get {
				return self.append("lastBulkUpdateId") 
			}
		}
		
		public var contract: BaseTokenizedObject {
			get {
				return self.append("contract") 
			}
		}
		
		public var createdBy: BaseTokenizedObject {
			get {
				return self.append("createdBy") 
			}
		}
		
		public var notes: BaseTokenizedObject {
			get {
				return self.append("notes") 
			}
		}
		
		public var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var defaultReachProfileId: BaseTokenizedObject {
			get {
				return self.append("defaultReachProfileId") 
			}
		}
		
		public var adminTagsToExclude: BaseTokenizedObject {
			get {
				return self.append("adminTagsToExclude") 
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
	/**  Property showing the catalog item's engine type, in case a vendor can offer the
	  same service via different engines.  */
	public var engineType: ReachVendorEngineType? = nil
	public var sourceLanguage: CatalogItemLanguage? = nil
	public var allowResubmission: Bool? = nil
	public var payPerUse: Bool? = nil
	public var vendorData: String? = nil
	public var stage: VendorCatalogItemStage? = nil
	public var lastBulkUpdateId: Int? = nil
	public var contract: String? = nil
	public var createdBy: String? = nil
	public var notes: String? = nil
	public var partnerId: Int? = nil
	public var defaultReachProfileId: Int? = nil
	public var adminTagsToExclude: String? = nil


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
	
	public func setMultiRequestToken(engineType: String) {
		self.dict["engineType"] = engineType
	}
	
	public func setMultiRequestToken(sourceLanguage: String) {
		self.dict["sourceLanguage"] = sourceLanguage
	}
	
	public func setMultiRequestToken(allowResubmission: String) {
		self.dict["allowResubmission"] = allowResubmission
	}
	
	public func setMultiRequestToken(payPerUse: String) {
		self.dict["payPerUse"] = payPerUse
	}
	
	public func setMultiRequestToken(vendorData: String) {
		self.dict["vendorData"] = vendorData
	}
	
	public func setMultiRequestToken(stage: String) {
		self.dict["stage"] = stage
	}
	
	public func setMultiRequestToken(lastBulkUpdateId: String) {
		self.dict["lastBulkUpdateId"] = lastBulkUpdateId
	}
	
	public func setMultiRequestToken(contract: String) {
		self.dict["contract"] = contract
	}
	
	public func setMultiRequestToken(createdBy: String) {
		self.dict["createdBy"] = createdBy
	}
	
	public func setMultiRequestToken(notes: String) {
		self.dict["notes"] = notes
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(defaultReachProfileId: String) {
		self.dict["defaultReachProfileId"] = defaultReachProfileId
	}
	
	public func setMultiRequestToken(adminTagsToExclude: String) {
		self.dict["adminTagsToExclude"] = adminTagsToExclude
	}
	
	public override func populate(_ dict: [String: Any]) throws {
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
		if dict["engineType"] != nil {
			engineType = ReachVendorEngineType(rawValue: "\(dict["engineType"]!)")
		}
		if dict["sourceLanguage"] != nil {
			sourceLanguage = CatalogItemLanguage(rawValue: "\(dict["sourceLanguage"]!)")
		}
		if dict["allowResubmission"] != nil {
			allowResubmission = dict["allowResubmission"] as? Bool
		}
		if dict["payPerUse"] != nil {
			payPerUse = dict["payPerUse"] as? Bool
		}
		if dict["vendorData"] != nil {
			vendorData = dict["vendorData"] as? String
		}
		if dict["stage"] != nil {
			stage = VendorCatalogItemStage(rawValue: (dict["stage"] as? Int)!)
		}
		if dict["lastBulkUpdateId"] != nil {
			lastBulkUpdateId = dict["lastBulkUpdateId"] as? Int
		}
		if dict["contract"] != nil {
			contract = dict["contract"] as? String
		}
		if dict["createdBy"] != nil {
			createdBy = dict["createdBy"] as? String
		}
		if dict["notes"] != nil {
			notes = dict["notes"] as? String
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["defaultReachProfileId"] != nil {
			defaultReachProfileId = dict["defaultReachProfileId"] as? Int
		}
		if dict["adminTagsToExclude"] != nil {
			adminTagsToExclude = dict["adminTagsToExclude"] as? String
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
		if(engineType != nil) {
			dict["engineType"] = engineType!.rawValue
		}
		if(sourceLanguage != nil) {
			dict["sourceLanguage"] = sourceLanguage!.rawValue
		}
		if(allowResubmission != nil) {
			dict["allowResubmission"] = allowResubmission!
		}
		if(payPerUse != nil) {
			dict["payPerUse"] = payPerUse!
		}
		if(vendorData != nil) {
			dict["vendorData"] = vendorData!
		}
		if(stage != nil) {
			dict["stage"] = stage!.rawValue
		}
		if(lastBulkUpdateId != nil) {
			dict["lastBulkUpdateId"] = lastBulkUpdateId!
		}
		if(contract != nil) {
			dict["contract"] = contract!
		}
		if(createdBy != nil) {
			dict["createdBy"] = createdBy!
		}
		if(notes != nil) {
			dict["notes"] = notes!
		}
		if(partnerId != nil) {
			dict["partnerId"] = partnerId!
		}
		if(defaultReachProfileId != nil) {
			dict["defaultReachProfileId"] = defaultReachProfileId!
		}
		if(adminTagsToExclude != nil) {
			dict["adminTagsToExclude"] = adminTagsToExclude!
		}
		return dict
	}
}

