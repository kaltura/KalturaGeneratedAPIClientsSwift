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
 * This class was generated using generate.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

/**  Effects attributes  */
open class Effect: ObjectBase {

	public class EffectTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var effectType: BaseTokenizedObject {
			get {
				return self.append("effectType") 
			}
		}
		
		public var value: BaseTokenizedObject {
			get {
				return self.append("value") 
			}
		}
	}

	public var effectType: EffectType? = nil
	/**  value  */
	public var value: String? = nil


	public func setMultiRequestToken(effectType: String) {
		self.dict["effectType"] = effectType
	}
	
	public func setMultiRequestToken(value: String) {
		self.dict["value"] = value
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["effectType"] != nil {
			effectType = EffectType(rawValue: (dict["effectType"] as? Int)!)
		}
		if dict["value"] != nil {
			value = dict["value"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(effectType != nil) {
			dict["effectType"] = effectType!.rawValue
		}
		if(value != nil) {
			dict["value"] = value!
		}
		return dict
	}
}

