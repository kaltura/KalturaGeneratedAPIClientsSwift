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
// Copyright (C) 2006-2019  Kaltura Inc.
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

open class ConfMaps: ObjectBase {

	public class ConfMapsTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var content: BaseTokenizedObject {
			get {
				return self.append("content") 
			}
		}
		
		public var isEditable: BaseTokenizedObject {
			get {
				return self.append("isEditable") 
			}
		}
		
		public var lastUpdate: BaseTokenizedObject {
			get {
				return self.append("lastUpdate") 
			}
		}
		
		public var relatedHost: BaseTokenizedObject {
			get {
				return self.append("relatedHost") 
			}
		}
		
		public var version: BaseTokenizedObject {
			get {
				return self.append("version") 
			}
		}
		
		public var sourceLocation: BaseTokenizedObject {
			get {
				return self.append("sourceLocation") 
			}
		}
		
		public var remarks: BaseTokenizedObject {
			get {
				return self.append("remarks") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
	}

	/**  Name of the map  */
	public var name: String? = nil
	/**  Ini file content  */
	public var content: String? = nil
	/**  IsEditable - true / false  */
	public var isEditable: Bool? = nil
	/**  Time of the last update  */
	public var lastUpdate: Int? = nil
	/**  Regex that represent the host/s that this map affect  */
	public var relatedHost: String? = nil
	public var version: Int? = nil
	public var sourceLocation: ConfMapsSourceLocation? = nil
	public var remarks: String? = nil
	/**  map status  */
	public var status: ConfMapsStatus? = nil


	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(content: String) {
		self.dict["content"] = content
	}
	
	public func setMultiRequestToken(isEditable: String) {
		self.dict["isEditable"] = isEditable
	}
	
	public func setMultiRequestToken(lastUpdate: String) {
		self.dict["lastUpdate"] = lastUpdate
	}
	
	public func setMultiRequestToken(relatedHost: String) {
		self.dict["relatedHost"] = relatedHost
	}
	
	public func setMultiRequestToken(version: String) {
		self.dict["version"] = version
	}
	
	public func setMultiRequestToken(sourceLocation: String) {
		self.dict["sourceLocation"] = sourceLocation
	}
	
	public func setMultiRequestToken(remarks: String) {
		self.dict["remarks"] = remarks
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["content"] != nil {
			content = dict["content"] as? String
		}
		if dict["isEditable"] != nil {
			isEditable = dict["isEditable"] as? Bool
		}
		if dict["lastUpdate"] != nil {
			lastUpdate = dict["lastUpdate"] as? Int
		}
		if dict["relatedHost"] != nil {
			relatedHost = dict["relatedHost"] as? String
		}
		if dict["version"] != nil {
			version = dict["version"] as? Int
		}
		if dict["sourceLocation"] != nil {
			sourceLocation = ConfMapsSourceLocation(rawValue: "\(dict["sourceLocation"]!)")
		}
		if dict["remarks"] != nil {
			remarks = dict["remarks"] as? String
		}
		if dict["status"] != nil {
			status = ConfMapsStatus(rawValue: (dict["status"] as? Int)!)
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(content != nil) {
			dict["content"] = content!
		}
		if(relatedHost != nil) {
			dict["relatedHost"] = relatedHost!
		}
		if(sourceLocation != nil) {
			dict["sourceLocation"] = sourceLocation!.rawValue
		}
		if(remarks != nil) {
			dict["remarks"] = remarks!
		}
		if(status != nil) {
			dict["status"] = status!.rawValue
		}
		return dict
	}
}

