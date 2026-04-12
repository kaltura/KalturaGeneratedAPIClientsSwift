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

open class OverlayAttributes: MediaCompositionAttributes {

	public class OverlayAttributesTokenizer: MediaCompositionAttributes.MediaCompositionAttributesTokenizer {
		
		public func resource<T: ContentResource.ContentResourceTokenizer>() -> T {
			return T(self.append("resource"))
		}
		
		public var resourceMediaCompositionAttributesArray: ArrayTokenizedObject<MediaCompositionAttributes.MediaCompositionAttributesTokenizer> {
			get {
				return ArrayTokenizedObject<MediaCompositionAttributes.MediaCompositionAttributesTokenizer>(self.append("resourceMediaCompositionAttributesArray"))
			} 
		}
		
		public var marginsPercentage: BaseTokenizedObject {
			get {
				return self.append("marginsPercentage") 
			}
		}
		
		public var overlayScalePercentage: BaseTokenizedObject {
			get {
				return self.append("overlayScalePercentage") 
			}
		}
		
		public var overlayPlacement: BaseTokenizedObject {
			get {
				return self.append("overlayPlacement") 
			}
		}
		
		public var overlayShape: BaseTokenizedObject {
			get {
				return self.append("overlayShape") 
			}
		}
		
		public func audioAttributes<T: AudioAttributes.AudioAttributesTokenizer>() -> T {
			return T(self.append("audioAttributes"))
		}
	}

	/**  Only KalturaEntryResource and KalturaAssetResource are supported  */
	public var resource: ContentResource? = nil
	/**  Only KalturaReplaceBackgroundAttributes is supported  */
	public var resourceMediaCompositionAttributesArray: Array<MediaCompositionAttributes>? = nil
	public var marginsPercentage: Double? = nil
	public var overlayScalePercentage: Double? = nil
	public var overlayPlacement: MediaCompositionAlignment? = nil
	public var overlayShape: OverlayShape? = nil
	public var audioAttributes: AudioAttributes? = nil


	public func setMultiRequestToken(marginsPercentage: String) {
		self.dict["marginsPercentage"] = marginsPercentage
	}
	
	public func setMultiRequestToken(overlayScalePercentage: String) {
		self.dict["overlayScalePercentage"] = overlayScalePercentage
	}
	
	public func setMultiRequestToken(overlayPlacement: String) {
		self.dict["overlayPlacement"] = overlayPlacement
	}
	
	public func setMultiRequestToken(overlayShape: String) {
		self.dict["overlayShape"] = overlayShape
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["resource"] != nil {
		resource = try JSONParser.parse(object: dict["resource"] as! [String: Any])		}
		if dict["resourceMediaCompositionAttributesArray"] != nil {
			resourceMediaCompositionAttributesArray = try JSONParser.parse(array: dict["resourceMediaCompositionAttributesArray"] as! [Any])
		}
		if dict["marginsPercentage"] != nil {
			marginsPercentage = dict["marginsPercentage"] as? Double
		}
		if dict["overlayScalePercentage"] != nil {
			overlayScalePercentage = dict["overlayScalePercentage"] as? Double
		}
		if dict["overlayPlacement"] != nil {
			overlayPlacement = MediaCompositionAlignment(rawValue: (dict["overlayPlacement"] as? Int)!)
		}
		if dict["overlayShape"] != nil {
			overlayShape = OverlayShape(rawValue: (dict["overlayShape"] as? Int)!)
		}
		if dict["audioAttributes"] != nil {
		audioAttributes = try JSONParser.parse(object: dict["audioAttributes"] as! [String: Any])		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(resource != nil) {
			dict["resource"] = resource!.toDictionary()
		}
		if(resourceMediaCompositionAttributesArray != nil) {
			dict["resourceMediaCompositionAttributesArray"] = resourceMediaCompositionAttributesArray!.map { value in value.toDictionary() }
		}
		if(marginsPercentage != nil) {
			dict["marginsPercentage"] = marginsPercentage!
		}
		if(overlayScalePercentage != nil) {
			dict["overlayScalePercentage"] = overlayScalePercentage!
		}
		if(overlayPlacement != nil) {
			dict["overlayPlacement"] = overlayPlacement!.rawValue
		}
		if(overlayShape != nil) {
			dict["overlayShape"] = overlayShape!.rawValue
		}
		if(audioAttributes != nil) {
			dict["audioAttributes"] = audioAttributes!.toDictionary()
		}
		return dict
	}
}

