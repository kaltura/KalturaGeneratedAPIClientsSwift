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

open class BulkUploadResultVendorCatalogItem: BulkUploadResult {

	public class BulkUploadResultVendorCatalogItemTokenizer: BulkUploadResult.BulkUploadResultTokenizer {
		
		public var vendorCatalogItemId: BaseTokenizedObject {
			get {
				return self.append("vendorCatalogItemId") 
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
		
		public var serviceFeature: BaseTokenizedObject {
			get {
				return self.append("serviceFeature") 
			}
		}
		
		public var serviceType: BaseTokenizedObject {
			get {
				return self.append("serviceType") 
			}
		}
		
		public var turnAroundTime: BaseTokenizedObject {
			get {
				return self.append("turnAroundTime") 
			}
		}
		
		public var sourceLanguage: BaseTokenizedObject {
			get {
				return self.append("sourceLanguage") 
			}
		}
		
		public var targetLanguage: BaseTokenizedObject {
			get {
				return self.append("targetLanguage") 
			}
		}
		
		public var outputFormat: BaseTokenizedObject {
			get {
				return self.append("outputFormat") 
			}
		}
		
		public var enableSpeakerId: BaseTokenizedObject {
			get {
				return self.append("enableSpeakerId") 
			}
		}
		
		public var fixedPriceAddons: BaseTokenizedObject {
			get {
				return self.append("fixedPriceAddons") 
			}
		}
		
		public func pricing<T: VendorCatalogItemPricing.VendorCatalogItemPricingTokenizer>() -> T {
			return T(self.append("pricing"))
		}
		
		public var flavorParamsId: BaseTokenizedObject {
			get {
				return self.append("flavorParamsId") 
			}
		}
		
		public var clearAudioFlavorParamsId: BaseTokenizedObject {
			get {
				return self.append("clearAudioFlavorParamsId") 
			}
		}
	}

	public var vendorCatalogItemId: Int? = nil
	public var vendorPartnerId: Int? = nil
	public var name: String? = nil
	public var systemName: String? = nil
	public var serviceFeature: VendorServiceFeature? = nil
	public var serviceType: VendorServiceType? = nil
	public var turnAroundTime: VendorServiceTurnAroundTime? = nil
	public var sourceLanguage: CatalogItemLanguage? = nil
	public var targetLanguage: CatalogItemLanguage? = nil
	public var outputFormat: VendorCatalogItemOutputFormat? = nil
	public var enableSpeakerId: Bool? = nil
	public var fixedPriceAddons: Int? = nil
	public var pricing: VendorCatalogItemPricing? = nil
	public var flavorParamsId: Int? = nil
	public var clearAudioFlavorParamsId: Int? = nil


	public func setMultiRequestToken(vendorCatalogItemId: String) {
		self.dict["vendorCatalogItemId"] = vendorCatalogItemId
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
	
	public func setMultiRequestToken(serviceFeature: String) {
		self.dict["serviceFeature"] = serviceFeature
	}
	
	public func setMultiRequestToken(serviceType: String) {
		self.dict["serviceType"] = serviceType
	}
	
	public func setMultiRequestToken(turnAroundTime: String) {
		self.dict["turnAroundTime"] = turnAroundTime
	}
	
	public func setMultiRequestToken(sourceLanguage: String) {
		self.dict["sourceLanguage"] = sourceLanguage
	}
	
	public func setMultiRequestToken(targetLanguage: String) {
		self.dict["targetLanguage"] = targetLanguage
	}
	
	public func setMultiRequestToken(outputFormat: String) {
		self.dict["outputFormat"] = outputFormat
	}
	
	public func setMultiRequestToken(enableSpeakerId: String) {
		self.dict["enableSpeakerId"] = enableSpeakerId
	}
	
	public func setMultiRequestToken(fixedPriceAddons: String) {
		self.dict["fixedPriceAddons"] = fixedPriceAddons
	}
	
	public func setMultiRequestToken(flavorParamsId: String) {
		self.dict["flavorParamsId"] = flavorParamsId
	}
	
	public func setMultiRequestToken(clearAudioFlavorParamsId: String) {
		self.dict["clearAudioFlavorParamsId"] = clearAudioFlavorParamsId
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["vendorCatalogItemId"] != nil {
			vendorCatalogItemId = dict["vendorCatalogItemId"] as? Int
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
		if dict["serviceFeature"] != nil {
			serviceFeature = VendorServiceFeature(rawValue: (dict["serviceFeature"] as? Int)!)
		}
		if dict["serviceType"] != nil {
			serviceType = VendorServiceType(rawValue: (dict["serviceType"] as? Int)!)
		}
		if dict["turnAroundTime"] != nil {
			turnAroundTime = VendorServiceTurnAroundTime(rawValue: (dict["turnAroundTime"] as? Int)!)
		}
		if dict["sourceLanguage"] != nil {
			sourceLanguage = CatalogItemLanguage(rawValue: "\(dict["sourceLanguage"]!)")
		}
		if dict["targetLanguage"] != nil {
			targetLanguage = CatalogItemLanguage(rawValue: "\(dict["targetLanguage"]!)")
		}
		if dict["outputFormat"] != nil {
			outputFormat = VendorCatalogItemOutputFormat(rawValue: (dict["outputFormat"] as? Int)!)
		}
		if dict["enableSpeakerId"] != nil {
			enableSpeakerId = dict["enableSpeakerId"] as? Bool
		}
		if dict["fixedPriceAddons"] != nil {
			fixedPriceAddons = dict["fixedPriceAddons"] as? Int
		}
		if dict["pricing"] != nil {
		pricing = try JSONParser.parse(object: dict["pricing"] as! [String: Any])		}
		if dict["flavorParamsId"] != nil {
			flavorParamsId = dict["flavorParamsId"] as? Int
		}
		if dict["clearAudioFlavorParamsId"] != nil {
			clearAudioFlavorParamsId = dict["clearAudioFlavorParamsId"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(vendorCatalogItemId != nil) {
			dict["vendorCatalogItemId"] = vendorCatalogItemId!
		}
		if(vendorPartnerId != nil) {
			dict["vendorPartnerId"] = vendorPartnerId!
		}
		if(name != nil) {
			dict["name"] = name!
		}
		if(systemName != nil) {
			dict["systemName"] = systemName!
		}
		if(serviceFeature != nil) {
			dict["serviceFeature"] = serviceFeature!.rawValue
		}
		if(serviceType != nil) {
			dict["serviceType"] = serviceType!.rawValue
		}
		if(turnAroundTime != nil) {
			dict["turnAroundTime"] = turnAroundTime!.rawValue
		}
		if(sourceLanguage != nil) {
			dict["sourceLanguage"] = sourceLanguage!.rawValue
		}
		if(targetLanguage != nil) {
			dict["targetLanguage"] = targetLanguage!.rawValue
		}
		if(outputFormat != nil) {
			dict["outputFormat"] = outputFormat!.rawValue
		}
		if(enableSpeakerId != nil) {
			dict["enableSpeakerId"] = enableSpeakerId!
		}
		if(fixedPriceAddons != nil) {
			dict["fixedPriceAddons"] = fixedPriceAddons!
		}
		if(pricing != nil) {
			dict["pricing"] = pricing!.toDictionary()
		}
		if(flavorParamsId != nil) {
			dict["flavorParamsId"] = flavorParamsId!
		}
		if(clearAudioFlavorParamsId != nil) {
			dict["clearAudioFlavorParamsId"] = clearAudioFlavorParamsId!
		}
		return dict
	}
}

