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

open class PlaybackSource: ObjectBase {

	public class PlaybackSourceTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var deliveryProfileId: BaseTokenizedObject {
			get {
				return self.append("deliveryProfileId") 
			}
		}
		
		public var format: BaseTokenizedObject {
			get {
				return self.append("format") 
			}
		}
		
		public var protocols: BaseTokenizedObject {
			get {
				return self.append("protocols") 
			}
		}
		
		public var flavorIds: BaseTokenizedObject {
			get {
				return self.append("flavorIds") 
			}
		}
		
		public var url: BaseTokenizedObject {
			get {
				return self.append("url") 
			}
		}
		
		public var drm: ArrayTokenizedObject<DrmPlaybackPluginData.DrmPlaybackPluginDataTokenizer> {
			get {
				return ArrayTokenizedObject<DrmPlaybackPluginData.DrmPlaybackPluginDataTokenizer>(self.append("drm"))
			} 
		}
	}

	public var deliveryProfileId: String? = nil
	/**  source format according to delivery profile streamer type (applehttp, mpegdash
	  etc.)  */
	public var format: String? = nil
	/**  comma separated string according to deliveryProfile media protocols
	  ('http,https' etc.)  */
	public var protocols: String? = nil
	/**  comma separated string of flavor ids  */
	public var flavorIds: String? = nil
	public var url: String? = nil
	/**  drm data object containing relevant license url ,scheme name and certificate  */
	public var drm: Array<DrmPlaybackPluginData>? = nil


	public func setMultiRequestToken(deliveryProfileId: String) {
		self.dict["deliveryProfileId"] = deliveryProfileId
	}
	
	public func setMultiRequestToken(format: String) {
		self.dict["format"] = format
	}
	
	public func setMultiRequestToken(protocols: String) {
		self.dict["protocols"] = protocols
	}
	
	public func setMultiRequestToken(flavorIds: String) {
		self.dict["flavorIds"] = flavorIds
	}
	
	public func setMultiRequestToken(url: String) {
		self.dict["url"] = url
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["deliveryProfileId"] != nil {
			deliveryProfileId = dict["deliveryProfileId"] as? String
		}
		if dict["format"] != nil {
			format = dict["format"] as? String
		}
		if dict["protocols"] != nil {
			protocols = dict["protocols"] as? String
		}
		if dict["flavorIds"] != nil {
			flavorIds = dict["flavorIds"] as? String
		}
		if dict["url"] != nil {
			url = dict["url"] as? String
		}
		if dict["drm"] != nil {
			drm = try JSONParser.parse(array: dict["drm"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(deliveryProfileId != nil) {
			dict["deliveryProfileId"] = deliveryProfileId!
		}
		if(format != nil) {
			dict["format"] = format!
		}
		if(protocols != nil) {
			dict["protocols"] = protocols!
		}
		if(flavorIds != nil) {
			dict["flavorIds"] = flavorIds!
		}
		if(url != nil) {
			dict["url"] = url!
		}
		if(drm != nil) {
			dict["drm"] = drm!.map { value in value.toDictionary() }
		}
		return dict
	}
}

