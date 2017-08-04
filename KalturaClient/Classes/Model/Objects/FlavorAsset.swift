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

open class FlavorAsset: Asset {

	/**  The Flavor Params used to create this Flavor Asset  */
	public var flavorParamsId: Int? = nil
	/**  The width of the Flavor Asset  */
	public var width: Int? = nil
	/**  The height of the Flavor Asset  */
	public var height: Int? = nil
	/**  The overall bitrate (in KBits) of the Flavor Asset  */
	public var bitrate: Int? = nil
	/**  The frame rate (in FPS) of the Flavor Asset  */
	public var frameRate: Double? = nil
	/**  True if this Flavor Asset is the original source  */
	public var isOriginal: Bool? = nil
	/**  True if this Flavor Asset is playable in KDP  */
	public var isWeb: Bool? = nil
	/**  The container format  */
	public var containerFormat: String? = nil
	/**  The video codec  */
	public var videoCodecId: String? = nil
	/**  The status of the Flavor Asset  */
	public var status: FlavorAssetStatus? = nil
	/**  The language of the flavor asset  */
	public var language: Language? = nil
	/**  The label of the flavor asset  */
	public var label: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["flavorParamsId"] != nil {
			flavorParamsId = dict["flavorParamsId"] as? Int
		}
		if dict["width"] != nil {
			width = dict["width"] as? Int
		}
		if dict["height"] != nil {
			height = dict["height"] as? Int
		}
		if dict["bitrate"] != nil {
			bitrate = dict["bitrate"] as? Int
		}
		if dict["frameRate"] != nil {
			frameRate = dict["frameRate"] as? Double
		}
		if dict["isOriginal"] != nil {
			isOriginal = dict["isOriginal"] as? Bool
		}
		if dict["isWeb"] != nil {
			isWeb = dict["isWeb"] as? Bool
		}
		if dict["containerFormat"] != nil {
			containerFormat = dict["containerFormat"] as? String
		}
		if dict["videoCodecId"] != nil {
			videoCodecId = dict["videoCodecId"] as? String
		}
		if dict["status"] != nil {
			status = FlavorAssetStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["language"] != nil {
			language = Language(rawValue: "\(dict["language"]!)")
		}
		if dict["label"] != nil {
			label = dict["label"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(flavorParamsId != nil) {
			dict["flavorParamsId"] = flavorParamsId!
		}
		if(language != nil) {
			dict["language"] = language!.rawValue
		}
		if(label != nil) {
			dict["label"] = label!
		}
		return dict
	}
}

