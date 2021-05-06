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
// Copyright (C) 2006-2021  Kaltura Inc.
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

open class MetadataProfileField: ObjectBase {

	public class MetadataProfileFieldTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var xPath: BaseTokenizedObject {
			get {
				return self.append("xPath") 
			}
		}
		
		public var key: BaseTokenizedObject {
			get {
				return self.append("key") 
			}
		}
		
		public var label: BaseTokenizedObject {
			get {
				return self.append("label") 
			}
		}
	}

	public var id: Int? = nil
	public var xPath: String? = nil
	public var key: String? = nil
	public var label: String? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(xPath: String) {
		self.dict["xPath"] = xPath
	}
	
	public func setMultiRequestToken(key: String) {
		self.dict["key"] = key
	}
	
	public func setMultiRequestToken(label: String) {
		self.dict["label"] = label
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["xPath"] != nil {
			xPath = dict["xPath"] as? String
		}
		if dict["key"] != nil {
			key = dict["key"] as? String
		}
		if dict["label"] != nil {
			label = dict["label"] as? String
		}

	}

}

