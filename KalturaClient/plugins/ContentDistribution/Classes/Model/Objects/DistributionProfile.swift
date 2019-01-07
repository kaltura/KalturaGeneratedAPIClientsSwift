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

open class DistributionProfile: ObjectBase {

	public class DistributionProfileTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
		
		public var updatedAt: BaseTokenizedObject {
			get {
				return self.append("updatedAt") 
			}
		}
		
		public var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var providerType: BaseTokenizedObject {
			get {
				return self.append("providerType") 
			}
		}
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var submitEnabled: BaseTokenizedObject {
			get {
				return self.append("submitEnabled") 
			}
		}
		
		public var updateEnabled: BaseTokenizedObject {
			get {
				return self.append("updateEnabled") 
			}
		}
		
		public var deleteEnabled: BaseTokenizedObject {
			get {
				return self.append("deleteEnabled") 
			}
		}
		
		public var reportEnabled: BaseTokenizedObject {
			get {
				return self.append("reportEnabled") 
			}
		}
		
		public var autoCreateFlavors: BaseTokenizedObject {
			get {
				return self.append("autoCreateFlavors") 
			}
		}
		
		public var autoCreateThumb: BaseTokenizedObject {
			get {
				return self.append("autoCreateThumb") 
			}
		}
		
		public var optionalFlavorParamsIds: BaseTokenizedObject {
			get {
				return self.append("optionalFlavorParamsIds") 
			}
		}
		
		public var requiredFlavorParamsIds: BaseTokenizedObject {
			get {
				return self.append("requiredFlavorParamsIds") 
			}
		}
		
		public var optionalThumbDimensions: ArrayTokenizedObject<DistributionThumbDimensions.DistributionThumbDimensionsTokenizer> {
			get {
				return ArrayTokenizedObject<DistributionThumbDimensions.DistributionThumbDimensionsTokenizer>(self.append("optionalThumbDimensions"))
			} 
		}
		
		public var requiredThumbDimensions: ArrayTokenizedObject<DistributionThumbDimensions.DistributionThumbDimensionsTokenizer> {
			get {
				return ArrayTokenizedObject<DistributionThumbDimensions.DistributionThumbDimensionsTokenizer>(self.append("requiredThumbDimensions"))
			} 
		}
		
		public var optionalAssetDistributionRules: ArrayTokenizedObject<AssetDistributionRule.AssetDistributionRuleTokenizer> {
			get {
				return ArrayTokenizedObject<AssetDistributionRule.AssetDistributionRuleTokenizer>(self.append("optionalAssetDistributionRules"))
			} 
		}
		
		public var requiredAssetDistributionRules: ArrayTokenizedObject<AssetDistributionRule.AssetDistributionRuleTokenizer> {
			get {
				return ArrayTokenizedObject<AssetDistributionRule.AssetDistributionRuleTokenizer>(self.append("requiredAssetDistributionRules"))
			} 
		}
		
		public var sunriseDefaultOffset: BaseTokenizedObject {
			get {
				return self.append("sunriseDefaultOffset") 
			}
		}
		
		public var sunsetDefaultOffset: BaseTokenizedObject {
			get {
				return self.append("sunsetDefaultOffset") 
			}
		}
		
		public var recommendedStorageProfileForDownload: BaseTokenizedObject {
			get {
				return self.append("recommendedStorageProfileForDownload") 
			}
		}
		
		public var recommendedDcForDownload: BaseTokenizedObject {
			get {
				return self.append("recommendedDcForDownload") 
			}
		}
		
		public var recommendedDcForExecute: BaseTokenizedObject {
			get {
				return self.append("recommendedDcForExecute") 
			}
		}
	}

	/**  Auto generated unique id  */
	public var id: Int? = nil
	/**  Profile creation date as Unix timestamp (In seconds)  */
	public var createdAt: Int? = nil
	/**  Profile last update date as Unix timestamp (In seconds)  */
	public var updatedAt: Int? = nil
	public var partnerId: Int? = nil
	public var providerType: DistributionProviderType? = nil
	public var name: String? = nil
	public var status: DistributionProfileStatus? = nil
	public var submitEnabled: DistributionProfileActionStatus? = nil
	public var updateEnabled: DistributionProfileActionStatus? = nil
	public var deleteEnabled: DistributionProfileActionStatus? = nil
	public var reportEnabled: DistributionProfileActionStatus? = nil
	/**  Comma separated flavor params ids that should be auto converted  */
	public var autoCreateFlavors: String? = nil
	/**  Comma separated thumbnail params ids that should be auto generated  */
	public var autoCreateThumb: String? = nil
	/**  Comma separated flavor params ids that should be submitted if ready  */
	public var optionalFlavorParamsIds: String? = nil
	/**  Comma separated flavor params ids that required to be ready before submission  */
	public var requiredFlavorParamsIds: String? = nil
	/**  Thumbnail dimensions that should be submitted if ready  */
	public var optionalThumbDimensions: Array<DistributionThumbDimensions>? = nil
	/**  Thumbnail dimensions that required to be readt before submission  */
	public var requiredThumbDimensions: Array<DistributionThumbDimensions>? = nil
	/**  Asset Distribution Rules for assets that should be submitted if ready  */
	public var optionalAssetDistributionRules: Array<AssetDistributionRule>? = nil
	/**  Assets Asset Distribution Rules for assets that are required to be ready before
	  submission  */
	public var requiredAssetDistributionRules: Array<AssetDistributionRule>? = nil
	/**  If entry distribution sunrise not specified that will be the default since entry
	  creation time, in seconds  */
	public var sunriseDefaultOffset: Int? = nil
	/**  If entry distribution sunset not specified that will be the default since entry
	  creation time, in seconds  */
	public var sunsetDefaultOffset: Int? = nil
	/**  The best external storage to be used to download the asset files from  */
	public var recommendedStorageProfileForDownload: Int? = nil
	/**  The best Kaltura data center to be used to download the asset files to  */
	public var recommendedDcForDownload: Int? = nil
	/**  The best Kaltura data center to be used to execute the distribution job  */
	public var recommendedDcForExecute: Int? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(createdAt: String) {
		self.dict["createdAt"] = createdAt
	}
	
	public func setMultiRequestToken(updatedAt: String) {
		self.dict["updatedAt"] = updatedAt
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(providerType: String) {
		self.dict["providerType"] = providerType
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(submitEnabled: String) {
		self.dict["submitEnabled"] = submitEnabled
	}
	
	public func setMultiRequestToken(updateEnabled: String) {
		self.dict["updateEnabled"] = updateEnabled
	}
	
	public func setMultiRequestToken(deleteEnabled: String) {
		self.dict["deleteEnabled"] = deleteEnabled
	}
	
	public func setMultiRequestToken(reportEnabled: String) {
		self.dict["reportEnabled"] = reportEnabled
	}
	
	public func setMultiRequestToken(autoCreateFlavors: String) {
		self.dict["autoCreateFlavors"] = autoCreateFlavors
	}
	
	public func setMultiRequestToken(autoCreateThumb: String) {
		self.dict["autoCreateThumb"] = autoCreateThumb
	}
	
	public func setMultiRequestToken(optionalFlavorParamsIds: String) {
		self.dict["optionalFlavorParamsIds"] = optionalFlavorParamsIds
	}
	
	public func setMultiRequestToken(requiredFlavorParamsIds: String) {
		self.dict["requiredFlavorParamsIds"] = requiredFlavorParamsIds
	}
	
	public func setMultiRequestToken(sunriseDefaultOffset: String) {
		self.dict["sunriseDefaultOffset"] = sunriseDefaultOffset
	}
	
	public func setMultiRequestToken(sunsetDefaultOffset: String) {
		self.dict["sunsetDefaultOffset"] = sunsetDefaultOffset
	}
	
	public func setMultiRequestToken(recommendedStorageProfileForDownload: String) {
		self.dict["recommendedStorageProfileForDownload"] = recommendedStorageProfileForDownload
	}
	
	public func setMultiRequestToken(recommendedDcForDownload: String) {
		self.dict["recommendedDcForDownload"] = recommendedDcForDownload
	}
	
	public func setMultiRequestToken(recommendedDcForExecute: String) {
		self.dict["recommendedDcForExecute"] = recommendedDcForExecute
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
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["providerType"] != nil {
			providerType = DistributionProviderType(rawValue: "\(dict["providerType"]!)")
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["status"] != nil {
			status = DistributionProfileStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["submitEnabled"] != nil {
			submitEnabled = DistributionProfileActionStatus(rawValue: (dict["submitEnabled"] as? Int)!)
		}
		if dict["updateEnabled"] != nil {
			updateEnabled = DistributionProfileActionStatus(rawValue: (dict["updateEnabled"] as? Int)!)
		}
		if dict["deleteEnabled"] != nil {
			deleteEnabled = DistributionProfileActionStatus(rawValue: (dict["deleteEnabled"] as? Int)!)
		}
		if dict["reportEnabled"] != nil {
			reportEnabled = DistributionProfileActionStatus(rawValue: (dict["reportEnabled"] as? Int)!)
		}
		if dict["autoCreateFlavors"] != nil {
			autoCreateFlavors = dict["autoCreateFlavors"] as? String
		}
		if dict["autoCreateThumb"] != nil {
			autoCreateThumb = dict["autoCreateThumb"] as? String
		}
		if dict["optionalFlavorParamsIds"] != nil {
			optionalFlavorParamsIds = dict["optionalFlavorParamsIds"] as? String
		}
		if dict["requiredFlavorParamsIds"] != nil {
			requiredFlavorParamsIds = dict["requiredFlavorParamsIds"] as? String
		}
		if dict["optionalThumbDimensions"] != nil {
			optionalThumbDimensions = try JSONParser.parse(array: dict["optionalThumbDimensions"] as! [Any])
		}
		if dict["requiredThumbDimensions"] != nil {
			requiredThumbDimensions = try JSONParser.parse(array: dict["requiredThumbDimensions"] as! [Any])
		}
		if dict["optionalAssetDistributionRules"] != nil {
			optionalAssetDistributionRules = try JSONParser.parse(array: dict["optionalAssetDistributionRules"] as! [Any])
		}
		if dict["requiredAssetDistributionRules"] != nil {
			requiredAssetDistributionRules = try JSONParser.parse(array: dict["requiredAssetDistributionRules"] as! [Any])
		}
		if dict["sunriseDefaultOffset"] != nil {
			sunriseDefaultOffset = dict["sunriseDefaultOffset"] as? Int
		}
		if dict["sunsetDefaultOffset"] != nil {
			sunsetDefaultOffset = dict["sunsetDefaultOffset"] as? Int
		}
		if dict["recommendedStorageProfileForDownload"] != nil {
			recommendedStorageProfileForDownload = dict["recommendedStorageProfileForDownload"] as? Int
		}
		if dict["recommendedDcForDownload"] != nil {
			recommendedDcForDownload = dict["recommendedDcForDownload"] as? Int
		}
		if dict["recommendedDcForExecute"] != nil {
			recommendedDcForExecute = dict["recommendedDcForExecute"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(providerType != nil) {
			dict["providerType"] = providerType!.rawValue
		}
		if(name != nil) {
			dict["name"] = name!
		}
		if(status != nil) {
			dict["status"] = status!.rawValue
		}
		if(submitEnabled != nil) {
			dict["submitEnabled"] = submitEnabled!.rawValue
		}
		if(updateEnabled != nil) {
			dict["updateEnabled"] = updateEnabled!.rawValue
		}
		if(deleteEnabled != nil) {
			dict["deleteEnabled"] = deleteEnabled!.rawValue
		}
		if(reportEnabled != nil) {
			dict["reportEnabled"] = reportEnabled!.rawValue
		}
		if(autoCreateFlavors != nil) {
			dict["autoCreateFlavors"] = autoCreateFlavors!
		}
		if(autoCreateThumb != nil) {
			dict["autoCreateThumb"] = autoCreateThumb!
		}
		if(optionalFlavorParamsIds != nil) {
			dict["optionalFlavorParamsIds"] = optionalFlavorParamsIds!
		}
		if(requiredFlavorParamsIds != nil) {
			dict["requiredFlavorParamsIds"] = requiredFlavorParamsIds!
		}
		if(optionalThumbDimensions != nil) {
			dict["optionalThumbDimensions"] = optionalThumbDimensions!.map { value in value.toDictionary() }
		}
		if(requiredThumbDimensions != nil) {
			dict["requiredThumbDimensions"] = requiredThumbDimensions!.map { value in value.toDictionary() }
		}
		if(optionalAssetDistributionRules != nil) {
			dict["optionalAssetDistributionRules"] = optionalAssetDistributionRules!.map { value in value.toDictionary() }
		}
		if(requiredAssetDistributionRules != nil) {
			dict["requiredAssetDistributionRules"] = requiredAssetDistributionRules!.map { value in value.toDictionary() }
		}
		if(sunriseDefaultOffset != nil) {
			dict["sunriseDefaultOffset"] = sunriseDefaultOffset!
		}
		if(sunsetDefaultOffset != nil) {
			dict["sunsetDefaultOffset"] = sunsetDefaultOffset!
		}
		if(recommendedStorageProfileForDownload != nil) {
			dict["recommendedStorageProfileForDownload"] = recommendedStorageProfileForDownload!
		}
		if(recommendedDcForDownload != nil) {
			dict["recommendedDcForDownload"] = recommendedDcForDownload!
		}
		if(recommendedDcForExecute != nil) {
			dict["recommendedDcForExecute"] = recommendedDcForExecute!
		}
		return dict
	}
}

