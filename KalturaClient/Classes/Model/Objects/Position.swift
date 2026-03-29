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

open class Position: ObjectBase {

	public class PositionTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var x: BaseTokenizedObject {
			get {
				return self.append("x") 
			}
		}
		
		public var y: BaseTokenizedObject {
			get {
				return self.append("y") 
			}
		}
	}

	public var x: Double? = nil
	public var y: Double? = nil


	public func setMultiRequestToken(x: String) {
		self.dict["x"] = x
	}
	
	public func setMultiRequestToken(y: String) {
		self.dict["y"] = y
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["x"] != nil {
			x = dict["x"] as? Double
		}
		if dict["y"] != nil {
			y = dict["y"] as? Double
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(x != nil) {
			dict["x"] = x!
		}
		if(y != nil) {
			dict["y"] = y!
		}
		return dict
	}
}

