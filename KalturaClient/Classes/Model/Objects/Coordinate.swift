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

open class Coordinate: ObjectBase {

	public class CoordinateTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var latitude: BaseTokenizedObject {
			get {
				return self.append("latitude") 
			}
		}
		
		public var longitude: BaseTokenizedObject {
			get {
				return self.append("longitude") 
			}
		}
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
	}

	public var latitude: Double? = nil
	public var longitude: Double? = nil
	public var name: String? = nil


	public func setMultiRequestToken(latitude: String) {
		self.dict["latitude"] = latitude
	}
	
	public func setMultiRequestToken(longitude: String) {
		self.dict["longitude"] = longitude
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["latitude"] != nil {
			latitude = dict["latitude"] as? Double
		}
		if dict["longitude"] != nil {
			longitude = dict["longitude"] as? Double
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(latitude != nil) {
			dict["latitude"] = latitude!
		}
		if(longitude != nil) {
			dict["longitude"] = longitude!
		}
		if(name != nil) {
			dict["name"] = name!
		}
		return dict
	}
}

