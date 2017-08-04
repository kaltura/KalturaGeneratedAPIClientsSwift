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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class CrossKalturaDistributionProfile: ConfigurableDistributionProfile {

	public var targetServiceUrl: String? = nil
	public var targetAccountId: Int? = nil
	public var targetLoginId: String? = nil
	public var targetLoginPassword: String? = nil
	public var metadataXslt: String? = nil
	public var metadataXpathsTriggerUpdate: Array<StringValue>? = nil
	public var distributeCaptions: Bool? = nil
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

	}

	public override func toDictionary() -> [String: Any] {
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
		return dict
	}
}

