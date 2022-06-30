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
// Copyright (C) 2006-2022  Kaltura Inc.
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

open class FlavorAsset: Asset {

	public class FlavorAssetTokenizer: Asset.AssetTokenizer {
		
		public var flavorParamsId: BaseTokenizedObject {
			get {
				return self.append("flavorParamsId") 
			}
		}
		
		public var width: BaseTokenizedObject {
			get {
				return self.append("width") 
			}
		}
		
		public var height: BaseTokenizedObject {
			get {
				return self.append("height") 
			}
		}
		
		public var bitrate: BaseTokenizedObject {
			get {
				return self.append("bitrate") 
			}
		}
		
		public var frameRate: BaseTokenizedObject {
			get {
				return self.append("frameRate") 
			}
		}
		
		public var isOriginal: BaseTokenizedObject {
			get {
				return self.append("isOriginal") 
			}
		}
		
		public var isWeb: BaseTokenizedObject {
			get {
				return self.append("isWeb") 
			}
		}
		
		public var containerFormat: BaseTokenizedObject {
			get {
				return self.append("containerFormat") 
			}
		}
		
		public var videoCodecId: BaseTokenizedObject {
			get {
				return self.append("videoCodecId") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var language: BaseTokenizedObject {
			get {
				return self.append("language") 
			}
		}
		
		public var label: BaseTokenizedObject {
			get {
				return self.append("label") 
			}
		}
		
		public var isDefault: BaseTokenizedObject {
			get {
				return self.append("isDefault") 
			}
		}
	}

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
	/**  Is default flavor asset of the entry (This field will be taken into account
	  selectign which audio flavor will be selected as default)  */
	public var isDefault: Bool? = nil


	public func setMultiRequestToken(flavorParamsId: String) {
		self.dict["flavorParamsId"] = flavorParamsId
	}
	
	public func setMultiRequestToken(width: String) {
		self.dict["width"] = width
	}
	
	public func setMultiRequestToken(height: String) {
		self.dict["height"] = height
	}
	
	public func setMultiRequestToken(bitrate: String) {
		self.dict["bitrate"] = bitrate
	}
	
	public func setMultiRequestToken(frameRate: String) {
		self.dict["frameRate"] = frameRate
	}
	
	public func setMultiRequestToken(isOriginal: String) {
		self.dict["isOriginal"] = isOriginal
	}
	
	public func setMultiRequestToken(isWeb: String) {
		self.dict["isWeb"] = isWeb
	}
	
	public func setMultiRequestToken(containerFormat: String) {
		self.dict["containerFormat"] = containerFormat
	}
	
	public func setMultiRequestToken(videoCodecId: String) {
		self.dict["videoCodecId"] = videoCodecId
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(language: String) {
		self.dict["language"] = language
	}
	
	public func setMultiRequestToken(label: String) {
		self.dict["label"] = label
	}
	
	public func setMultiRequestToken(isDefault: String) {
		self.dict["isDefault"] = isDefault
	}
	
	public override func populate(_ dict: [String: Any]) throws {
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
		if dict["isDefault"] != nil {
			isDefault = dict["isDefault"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
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
		if(isDefault != nil) {
			dict["isDefault"] = isDefault!
		}
		return dict
	}
}

