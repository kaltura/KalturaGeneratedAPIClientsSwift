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

open class OverlayScaleAttribute: ObjectBase {

	public class OverlayScaleAttributeTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public func scalePercentage<T: DimensionsPercentage.DimensionsPercentageTokenizer>() -> T {
			return T(self.append("scalePercentage"))
		}
		
		public var scaleBehavior: BaseTokenizedObject {
			get {
				return self.append("scaleBehavior") 
			}
		}
	}

	public var scalePercentage: DimensionsPercentage? = nil
	public var scaleBehavior: OverlayScaleBehavior? = nil


	public func setMultiRequestToken(scaleBehavior: String) {
		self.dict["scaleBehavior"] = scaleBehavior
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["scalePercentage"] != nil {
		scalePercentage = try JSONParser.parse(object: dict["scalePercentage"] as! [String: Any])		}
		if dict["scaleBehavior"] != nil {
			scaleBehavior = OverlayScaleBehavior(rawValue: (dict["scaleBehavior"] as? Int)!)
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(scalePercentage != nil) {
			dict["scalePercentage"] = scalePercentage!.toDictionary()
		}
		if(scaleBehavior != nil) {
			dict["scaleBehavior"] = scaleBehavior!.rawValue
		}
		return dict
	}
}

