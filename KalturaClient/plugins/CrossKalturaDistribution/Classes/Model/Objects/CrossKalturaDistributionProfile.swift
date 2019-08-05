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

open class CrossKalturaDistributionProfile: ConfigurableDistributionProfile {

	public class CrossKalturaDistributionProfileTokenizer: ConfigurableDistributionProfile.ConfigurableDistributionProfileTokenizer {
		
		public var targetServiceUrl: BaseTokenizedObject {
			get {
				return self.append("targetServiceUrl") 
			}
		}
		
		public var targetAccountId: BaseTokenizedObject {
			get {
				return self.append("targetAccountId") 
			}
		}
		
		public var targetLoginId: BaseTokenizedObject {
			get {
				return self.append("targetLoginId") 
			}
		}
		
		public var targetLoginPassword: BaseTokenizedObject {
			get {
				return self.append("targetLoginPassword") 
			}
		}
		
		public var metadataXslt: BaseTokenizedObject {
			get {
				return self.append("metadataXslt") 
			}
		}
		
		public var metadataXpathsTriggerUpdate: ArrayTokenizedObject<StringValue.StringValueTokenizer> {
			get {
				return ArrayTokenizedObject<StringValue.StringValueTokenizer>(self.append("metadataXpathsTriggerUpdate"))
			} 
		}
		
		public var distributeCaptions: BaseTokenizedObject {
			get {
				return self.append("distributeCaptions") 
			}
		}
		
		public var designatedCategories: BaseTokenizedObject {
			get {
				return self.append("designatedCategories") 
			}
		}
		
		public var distributeCategories: BaseTokenizedObject {
			get {
				return self.append("distributeCategories") 
			}
		}
		
		public var collaboratorsCustomMetadataProfileId: BaseTokenizedObject {
			get {
				return self.append("collaboratorsCustomMetadataProfileId") 
			}
		}
		
		public var collaboratorsFromCustomMetadataProfile: BaseTokenizedObject {
			get {
				return self.append("collaboratorsFromCustomMetadataProfile") 
			}
		}
		
		public var distributeCuePoints: BaseTokenizedObject {
			get {
				return self.append("distributeCuePoints") 
			}
		}
		
		public var distributeRemoteFlavorAssetContent: BaseTokenizedObject {
			get {
				return self.append("distributeRemoteFlavorAssetContent") 
			}
		}
		
		public var distributeRemoteThumbAssetContent: BaseTokenizedObject {
			get {
				return self.append("distributeRemoteThumbAssetContent") 
			}
		}
		
		public var distributeRemoteCaptionAssetContent: BaseTokenizedObject {
			get {
				return self.append("distributeRemoteCaptionAssetContent") 
			}
		}
		
		public var mapAccessControlProfileIds: ArrayTokenizedObject<KeyValue.KeyValueTokenizer> {
			get {
				return ArrayTokenizedObject<KeyValue.KeyValueTokenizer>(self.append("mapAccessControlProfileIds"))
			} 
		}
		
		public var mapConversionProfileIds: ArrayTokenizedObject<KeyValue.KeyValueTokenizer> {
			get {
				return ArrayTokenizedObject<KeyValue.KeyValueTokenizer>(self.append("mapConversionProfileIds"))
			} 
		}
		
		public var mapMetadataProfileIds: ArrayTokenizedObject<KeyValue.KeyValueTokenizer> {
			get {
				return ArrayTokenizedObject<KeyValue.KeyValueTokenizer>(self.append("mapMetadataProfileIds"))
			} 
		}
		
		public var mapStorageProfileIds: ArrayTokenizedObject<KeyValue.KeyValueTokenizer> {
			get {
				return ArrayTokenizedObject<KeyValue.KeyValueTokenizer>(self.append("mapStorageProfileIds"))
			} 
		}
		
		public var mapFlavorParamsIds: ArrayTokenizedObject<KeyValue.KeyValueTokenizer> {
			get {
				return ArrayTokenizedObject<KeyValue.KeyValueTokenizer>(self.append("mapFlavorParamsIds"))
			} 
		}
		
		public var mapThumbParamsIds: ArrayTokenizedObject<KeyValue.KeyValueTokenizer> {
			get {
				return ArrayTokenizedObject<KeyValue.KeyValueTokenizer>(self.append("mapThumbParamsIds"))
			} 
		}
		
		public var mapCaptionParamsIds: ArrayTokenizedObject<KeyValue.KeyValueTokenizer> {
			get {
				return ArrayTokenizedObject<KeyValue.KeyValueTokenizer>(self.append("mapCaptionParamsIds"))
			} 
		}
		
		public var mapAttachmentParamsIds: ArrayTokenizedObject<KeyValue.KeyValueTokenizer> {
			get {
				return ArrayTokenizedObject<KeyValue.KeyValueTokenizer>(self.append("mapAttachmentParamsIds"))
			} 
		}
	}

	public var targetServiceUrl: String? = nil
	public var targetAccountId: Int? = nil
	public var targetLoginId: String? = nil
	public var targetLoginPassword: String? = nil
	public var metadataXslt: String? = nil
	public var metadataXpathsTriggerUpdate: Array<StringValue>? = nil
	public var distributeCaptions: Bool? = nil
	public var designatedCategories: String? = nil
	public var distributeCategories: Bool? = nil
	public var collaboratorsCustomMetadataProfileId: String? = nil
	public var collaboratorsFromCustomMetadataProfile: Bool? = nil
	public var distributeCuePoints: Bool? = nil
	public var distributeRemoteFlavorAssetContent: Bool? = nil
	public var distributeRemoteThumbAssetContent: Bool? = nil
	public var distributeRemoteCaptionAssetContent: Bool? = nil
	public var mapAccessControlProfileIds: Array<KeyValue>? = nil
	public var mapConversionProfileIds: Array<KeyValue>? = nil
	public var mapMetadataProfileIds: Array<KeyValue>? = nil
	public var mapStorageProfileIds: Array<KeyValue>? = nil
	public var mapFlavorParamsIds: Array<KeyValue>? = nil
	public var mapThumbParamsIds: Array<KeyValue>? = nil
	public var mapCaptionParamsIds: Array<KeyValue>? = nil
	public var mapAttachmentParamsIds: Array<KeyValue>? = nil


	public func setMultiRequestToken(targetServiceUrl: String) {
		self.dict["targetServiceUrl"] = targetServiceUrl
	}
	
	public func setMultiRequestToken(targetAccountId: String) {
		self.dict["targetAccountId"] = targetAccountId
	}
	
	public func setMultiRequestToken(targetLoginId: String) {
		self.dict["targetLoginId"] = targetLoginId
	}
	
	public func setMultiRequestToken(targetLoginPassword: String) {
		self.dict["targetLoginPassword"] = targetLoginPassword
	}
	
	public func setMultiRequestToken(metadataXslt: String) {
		self.dict["metadataXslt"] = metadataXslt
	}
	
	public func setMultiRequestToken(distributeCaptions: String) {
		self.dict["distributeCaptions"] = distributeCaptions
	}
	
	public func setMultiRequestToken(designatedCategories: String) {
		self.dict["designatedCategories"] = designatedCategories
	}
	
	public func setMultiRequestToken(distributeCategories: String) {
		self.dict["distributeCategories"] = distributeCategories
	}
	
	public func setMultiRequestToken(collaboratorsCustomMetadataProfileId: String) {
		self.dict["collaboratorsCustomMetadataProfileId"] = collaboratorsCustomMetadataProfileId
	}
	
	public func setMultiRequestToken(collaboratorsFromCustomMetadataProfile: String) {
		self.dict["collaboratorsFromCustomMetadataProfile"] = collaboratorsFromCustomMetadataProfile
	}
	
	public func setMultiRequestToken(distributeCuePoints: String) {
		self.dict["distributeCuePoints"] = distributeCuePoints
	}
	
	public func setMultiRequestToken(distributeRemoteFlavorAssetContent: String) {
		self.dict["distributeRemoteFlavorAssetContent"] = distributeRemoteFlavorAssetContent
	}
	
	public func setMultiRequestToken(distributeRemoteThumbAssetContent: String) {
		self.dict["distributeRemoteThumbAssetContent"] = distributeRemoteThumbAssetContent
	}
	
	public func setMultiRequestToken(distributeRemoteCaptionAssetContent: String) {
		self.dict["distributeRemoteCaptionAssetContent"] = distributeRemoteCaptionAssetContent
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["targetServiceUrl"] != nil {
			targetServiceUrl = dict["targetServiceUrl"] as? String
		}
		if dict["targetAccountId"] != nil {
			targetAccountId = dict["targetAccountId"] as? Int
		}
		if dict["targetLoginId"] != nil {
			targetLoginId = dict["targetLoginId"] as? String
		}
		if dict["targetLoginPassword"] != nil {
			targetLoginPassword = dict["targetLoginPassword"] as? String
		}
		if dict["metadataXslt"] != nil {
			metadataXslt = dict["metadataXslt"] as? String
		}
		if dict["metadataXpathsTriggerUpdate"] != nil {
			metadataXpathsTriggerUpdate = try JSONParser.parse(array: dict["metadataXpathsTriggerUpdate"] as! [Any])
		}
		if dict["distributeCaptions"] != nil {
			distributeCaptions = dict["distributeCaptions"] as? Bool
		}
		if dict["designatedCategories"] != nil {
			designatedCategories = dict["designatedCategories"] as? String
		}
		if dict["distributeCategories"] != nil {
			distributeCategories = dict["distributeCategories"] as? Bool
		}
		if dict["collaboratorsCustomMetadataProfileId"] != nil {
			collaboratorsCustomMetadataProfileId = dict["collaboratorsCustomMetadataProfileId"] as? String
		}
		if dict["collaboratorsFromCustomMetadataProfile"] != nil {
			collaboratorsFromCustomMetadataProfile = dict["collaboratorsFromCustomMetadataProfile"] as? Bool
		}
		if dict["distributeCuePoints"] != nil {
			distributeCuePoints = dict["distributeCuePoints"] as? Bool
		}
		if dict["distributeRemoteFlavorAssetContent"] != nil {
			distributeRemoteFlavorAssetContent = dict["distributeRemoteFlavorAssetContent"] as? Bool
		}
		if dict["distributeRemoteThumbAssetContent"] != nil {
			distributeRemoteThumbAssetContent = dict["distributeRemoteThumbAssetContent"] as? Bool
		}
		if dict["distributeRemoteCaptionAssetContent"] != nil {
			distributeRemoteCaptionAssetContent = dict["distributeRemoteCaptionAssetContent"] as? Bool
		}
		if dict["mapAccessControlProfileIds"] != nil {
			mapAccessControlProfileIds = try JSONParser.parse(array: dict["mapAccessControlProfileIds"] as! [Any])
		}
		if dict["mapConversionProfileIds"] != nil {
			mapConversionProfileIds = try JSONParser.parse(array: dict["mapConversionProfileIds"] as! [Any])
		}
		if dict["mapMetadataProfileIds"] != nil {
			mapMetadataProfileIds = try JSONParser.parse(array: dict["mapMetadataProfileIds"] as! [Any])
		}
		if dict["mapStorageProfileIds"] != nil {
			mapStorageProfileIds = try JSONParser.parse(array: dict["mapStorageProfileIds"] as! [Any])
		}
		if dict["mapFlavorParamsIds"] != nil {
			mapFlavorParamsIds = try JSONParser.parse(array: dict["mapFlavorParamsIds"] as! [Any])
		}
		if dict["mapThumbParamsIds"] != nil {
			mapThumbParamsIds = try JSONParser.parse(array: dict["mapThumbParamsIds"] as! [Any])
		}
		if dict["mapCaptionParamsIds"] != nil {
			mapCaptionParamsIds = try JSONParser.parse(array: dict["mapCaptionParamsIds"] as! [Any])
		}
		if dict["mapAttachmentParamsIds"] != nil {
			mapAttachmentParamsIds = try JSONParser.parse(array: dict["mapAttachmentParamsIds"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(targetServiceUrl != nil) {
			dict["targetServiceUrl"] = targetServiceUrl!
		}
		if(targetAccountId != nil) {
			dict["targetAccountId"] = targetAccountId!
		}
		if(targetLoginId != nil) {
			dict["targetLoginId"] = targetLoginId!
		}
		if(targetLoginPassword != nil) {
			dict["targetLoginPassword"] = targetLoginPassword!
		}
		if(metadataXslt != nil) {
			dict["metadataXslt"] = metadataXslt!
		}
		if(metadataXpathsTriggerUpdate != nil) {
			dict["metadataXpathsTriggerUpdate"] = metadataXpathsTriggerUpdate!.map { value in value.toDictionary() }
		}
		if(distributeCaptions != nil) {
			dict["distributeCaptions"] = distributeCaptions!
		}
		if(designatedCategories != nil) {
			dict["designatedCategories"] = designatedCategories!
		}
		if(distributeCategories != nil) {
			dict["distributeCategories"] = distributeCategories!
		}
		if(collaboratorsCustomMetadataProfileId != nil) {
			dict["collaboratorsCustomMetadataProfileId"] = collaboratorsCustomMetadataProfileId!
		}
		if(collaboratorsFromCustomMetadataProfile != nil) {
			dict["collaboratorsFromCustomMetadataProfile"] = collaboratorsFromCustomMetadataProfile!
		}
		if(distributeCuePoints != nil) {
			dict["distributeCuePoints"] = distributeCuePoints!
		}
		if(distributeRemoteFlavorAssetContent != nil) {
			dict["distributeRemoteFlavorAssetContent"] = distributeRemoteFlavorAssetContent!
		}
		if(distributeRemoteThumbAssetContent != nil) {
			dict["distributeRemoteThumbAssetContent"] = distributeRemoteThumbAssetContent!
		}
		if(distributeRemoteCaptionAssetContent != nil) {
			dict["distributeRemoteCaptionAssetContent"] = distributeRemoteCaptionAssetContent!
		}
		if(mapAccessControlProfileIds != nil) {
			dict["mapAccessControlProfileIds"] = mapAccessControlProfileIds!.map { value in value.toDictionary() }
		}
		if(mapConversionProfileIds != nil) {
			dict["mapConversionProfileIds"] = mapConversionProfileIds!.map { value in value.toDictionary() }
		}
		if(mapMetadataProfileIds != nil) {
			dict["mapMetadataProfileIds"] = mapMetadataProfileIds!.map { value in value.toDictionary() }
		}
		if(mapStorageProfileIds != nil) {
			dict["mapStorageProfileIds"] = mapStorageProfileIds!.map { value in value.toDictionary() }
		}
		if(mapFlavorParamsIds != nil) {
			dict["mapFlavorParamsIds"] = mapFlavorParamsIds!.map { value in value.toDictionary() }
		}
		if(mapThumbParamsIds != nil) {
			dict["mapThumbParamsIds"] = mapThumbParamsIds!.map { value in value.toDictionary() }
		}
		if(mapCaptionParamsIds != nil) {
			dict["mapCaptionParamsIds"] = mapCaptionParamsIds!.map { value in value.toDictionary() }
		}
		if(mapAttachmentParamsIds != nil) {
			dict["mapAttachmentParamsIds"] = mapAttachmentParamsIds!.map { value in value.toDictionary() }
		}
		return dict
	}
}

