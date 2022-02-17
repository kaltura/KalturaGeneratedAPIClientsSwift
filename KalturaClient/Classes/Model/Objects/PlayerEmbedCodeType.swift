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

open class PlayerEmbedCodeType: ObjectBase {

	public class PlayerEmbedCodeTypeTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var label: BaseTokenizedObject {
			get {
				return self.append("label") 
			}
		}
		
		public var entryOnly: BaseTokenizedObject {
			get {
				return self.append("entryOnly") 
			}
		}
		
		public var minVersion: BaseTokenizedObject {
			get {
				return self.append("minVersion") 
			}
		}
	}

	public var id: String? = nil
	public var label: String? = nil
	public var entryOnly: Bool? = nil
	public var minVersion: String? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(label: String) {
		self.dict["label"] = label
	}
	
	public func setMultiRequestToken(entryOnly: String) {
		self.dict["entryOnly"] = entryOnly
	}
	
	public func setMultiRequestToken(minVersion: String) {
		self.dict["minVersion"] = minVersion
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? String
		}
		if dict["label"] != nil {
			label = dict["label"] as? String
		}
		if dict["entryOnly"] != nil {
			entryOnly = dict["entryOnly"] as? Bool
		}
		if dict["minVersion"] != nil {
			minVersion = dict["minVersion"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(id != nil) {
			dict["id"] = id!
		}
		if(label != nil) {
			dict["label"] = label!
		}
		if(entryOnly != nil) {
			dict["entryOnly"] = entryOnly!
		}
		if(minVersion != nil) {
			dict["minVersion"] = minVersion!
		}
		return dict
	}
}

