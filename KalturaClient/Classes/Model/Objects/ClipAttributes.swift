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

/**  Clip operation attributes  */
open class ClipAttributes: OperationAttributes {

	public class ClipAttributesTokenizer: OperationAttributes.OperationAttributesTokenizer {
		
		public var offset: BaseTokenizedObject {
			get {
				return self.append("offset") 
			}
		}
		
		public var duration: BaseTokenizedObject {
			get {
				return self.append("duration") 
			}
		}
		
		public var globalOffsetInDestination: BaseTokenizedObject {
			get {
				return self.append("globalOffsetInDestination") 
			}
		}
		
		public var effectArray: ArrayTokenizedObject<Effect.EffectTokenizer> {
			get {
				return ArrayTokenizedObject<Effect.EffectTokenizer>(self.append("effectArray"))
			} 
		}
		
		public var cropAlignment: BaseTokenizedObject {
			get {
				return self.append("cropAlignment") 
			}
		}
		
		public var captionAttributes: ArrayTokenizedObject<CaptionAttributes.CaptionAttributesTokenizer> {
			get {
				return ArrayTokenizedObject<CaptionAttributes.CaptionAttributesTokenizer>(self.append("captionAttributes"))
			} 
		}
	}

	/**  Offset in milliseconds  */
	public var offset: Int? = nil
	/**  Duration in milliseconds  */
	public var duration: Int? = nil
	/**  global Offset In Destination in milliseconds  */
	public var globalOffsetInDestination: Int? = nil
	/**  global Offset In Destination in milliseconds  */
	public var effectArray: Array<Effect>? = nil
	public var cropAlignment: Int? = nil
	public var captionAttributes: Array<CaptionAttributes>? = nil


	public func setMultiRequestToken(offset: String) {
		self.dict["offset"] = offset
	}
	
	public func setMultiRequestToken(duration: String) {
		self.dict["duration"] = duration
	}
	
	public func setMultiRequestToken(globalOffsetInDestination: String) {
		self.dict["globalOffsetInDestination"] = globalOffsetInDestination
	}
	
	public func setMultiRequestToken(cropAlignment: String) {
		self.dict["cropAlignment"] = cropAlignment
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["offset"] != nil {
			offset = dict["offset"] as? Int
		}
		if dict["duration"] != nil {
			duration = dict["duration"] as? Int
		}
		if dict["globalOffsetInDestination"] != nil {
			globalOffsetInDestination = dict["globalOffsetInDestination"] as? Int
		}
		if dict["effectArray"] != nil {
			effectArray = try JSONParser.parse(array: dict["effectArray"] as! [Any])
		}
		if dict["cropAlignment"] != nil {
			cropAlignment = dict["cropAlignment"] as? Int
		}
		if dict["captionAttributes"] != nil {
			captionAttributes = try JSONParser.parse(array: dict["captionAttributes"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(offset != nil) {
			dict["offset"] = offset!
		}
		if(duration != nil) {
			dict["duration"] = duration!
		}
		if(globalOffsetInDestination != nil) {
			dict["globalOffsetInDestination"] = globalOffsetInDestination!
		}
		if(effectArray != nil) {
			dict["effectArray"] = effectArray!.map { value in value.toDictionary() }
		}
		if(cropAlignment != nil) {
			dict["cropAlignment"] = cropAlignment!
		}
		if(captionAttributes != nil) {
			dict["captionAttributes"] = captionAttributes!.map { value in value.toDictionary() }
		}
		return dict
	}
}

