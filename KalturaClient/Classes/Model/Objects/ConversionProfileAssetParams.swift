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
 * This class was generated using generate.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class ConversionProfileAssetParams: ObjectBase {

	/**  The id of the conversion profile  */
	public var conversionProfileId: Int? = nil
	/**  The id of the asset params  */
	public var assetParamsId: Int? = nil
	/**  The ingestion origin of the asset params  */
	public var readyBehavior: FlavorReadyBehaviorType? = nil
	/**  The ingestion origin of the asset params  */
	public var origin: AssetParamsOrigin? = nil
	/**  Asset params system name  */
	public var systemName: String? = nil
	/**  Starts conversion even if the decision layer reduced the configuration to comply
	  with the source  */
	public var forceNoneComplied: Bool? = nil
	/**  Specifies how to treat the flavor after conversion is finished  */
	public var deletePolicy: AssetParamsDeletePolicy? = nil
	public var isEncrypted: Bool? = nil
	public var contentAwareness: Double? = nil
	public var chunkedEncodeMode: Int? = nil
	public var twoPass: Bool? = nil
	public var tags: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["conversionProfileId"] != nil {
			conversionProfileId = dict["conversionProfileId"] as? Int
		}
		if dict["assetParamsId"] != nil {
			assetParamsId = dict["assetParamsId"] as? Int
		}
		if dict["readyBehavior"] != nil {
			readyBehavior = FlavorReadyBehaviorType(rawValue: (dict["readyBehavior"] as? Int)!)
		}
		if dict["origin"] != nil {
			origin = AssetParamsOrigin(rawValue: (dict["origin"] as? Int)!)
		}
		if dict["systemName"] != nil {
			systemName = dict["systemName"] as? String
		}
		if dict["forceNoneComplied"] != nil {
			forceNoneComplied = dict["forceNoneComplied"] as? Bool
		}
		if dict["deletePolicy"] != nil {
			deletePolicy = AssetParamsDeletePolicy(rawValue: (dict["deletePolicy"] as? Int)!)
		}
		if dict["isEncrypted"] != nil {
			isEncrypted = dict["isEncrypted"] as? Bool
		}
		if dict["contentAwareness"] != nil {
			contentAwareness = dict["contentAwareness"] as? Double
		}
		if dict["chunkedEncodeMode"] != nil {
			chunkedEncodeMode = dict["chunkedEncodeMode"] as? Int
		}
		if dict["twoPass"] != nil {
			twoPass = dict["twoPass"] as? Bool
		}
		if dict["tags"] != nil {
			tags = dict["tags"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(readyBehavior != nil) {
			dict["readyBehavior"] = readyBehavior!.rawValue
		}
		if(origin != nil) {
			dict["origin"] = origin!.rawValue
		}
		if(systemName != nil) {
			dict["systemName"] = systemName!
		}
		if(forceNoneComplied != nil) {
			dict["forceNoneComplied"] = forceNoneComplied!
		}
		if(deletePolicy != nil) {
			dict["deletePolicy"] = deletePolicy!.rawValue
		}
		if(isEncrypted != nil) {
			dict["isEncrypted"] = isEncrypted!
		}
		if(contentAwareness != nil) {
			dict["contentAwareness"] = contentAwareness!
		}
		if(chunkedEncodeMode != nil) {
			dict["chunkedEncodeMode"] = chunkedEncodeMode!
		}
		if(twoPass != nil) {
			dict["twoPass"] = twoPass!
		}
		if(tags != nil) {
			dict["tags"] = tags!
		}
		return dict
	}
}

