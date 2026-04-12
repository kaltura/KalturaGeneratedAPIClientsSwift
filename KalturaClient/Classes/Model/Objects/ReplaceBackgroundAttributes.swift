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

open class ReplaceBackgroundAttributes: MediaCompositionAttributes {

	public class ReplaceBackgroundAttributesTokenizer: MediaCompositionAttributes.MediaCompositionAttributesTokenizer {
		
		public func resource<T: ContentResource.ContentResourceTokenizer>() -> T {
			return T(self.append("resource"))
		}
		
		public var backgroundColorCode: BaseTokenizedObject {
			get {
				return self.append("backgroundColorCode") 
			}
		}
		
		public var foregroundScalePercentage: BaseTokenizedObject {
			get {
				return self.append("foregroundScalePercentage") 
			}
		}
		
		public func foregroundPositionPercentage<T: Position.PositionTokenizer>() -> T {
			return T(self.append("foregroundPositionPercentage"))
		}
		
		public func audioAttributes<T: AudioAttributes.AudioAttributesTokenizer>() -> T {
			return T(self.append("audioAttributes"))
		}
	}

	/**  Only KalturaEntryResource and KalturaAssetResource are supported  */
	public var resource: ContentResource? = nil
	public var backgroundColorCode: String? = nil
	public var foregroundScalePercentage: Double? = nil
	public var foregroundPositionPercentage: Position? = nil
	public var audioAttributes: AudioAttributes? = nil


	public func setMultiRequestToken(backgroundColorCode: String) {
		self.dict["backgroundColorCode"] = backgroundColorCode
	}
	
	public func setMultiRequestToken(foregroundScalePercentage: String) {
		self.dict["foregroundScalePercentage"] = foregroundScalePercentage
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["resource"] != nil {
		resource = try JSONParser.parse(object: dict["resource"] as! [String: Any])		}
		if dict["backgroundColorCode"] != nil {
			backgroundColorCode = dict["backgroundColorCode"] as? String
		}
		if dict["foregroundScalePercentage"] != nil {
			foregroundScalePercentage = dict["foregroundScalePercentage"] as? Double
		}
		if dict["foregroundPositionPercentage"] != nil {
		foregroundPositionPercentage = try JSONParser.parse(object: dict["foregroundPositionPercentage"] as! [String: Any])		}
		if dict["audioAttributes"] != nil {
		audioAttributes = try JSONParser.parse(object: dict["audioAttributes"] as! [String: Any])		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(resource != nil) {
			dict["resource"] = resource!.toDictionary()
		}
		if(backgroundColorCode != nil) {
			dict["backgroundColorCode"] = backgroundColorCode!
		}
		if(foregroundScalePercentage != nil) {
			dict["foregroundScalePercentage"] = foregroundScalePercentage!
		}
		if(foregroundPositionPercentage != nil) {
			dict["foregroundPositionPercentage"] = foregroundPositionPercentage!.toDictionary()
		}
		if(audioAttributes != nil) {
			dict["audioAttributes"] = audioAttributes!.toDictionary()
		}
		return dict
	}
}

