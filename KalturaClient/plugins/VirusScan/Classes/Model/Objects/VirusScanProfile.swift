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

open class VirusScanProfile: ObjectBase {

	public class VirusScanProfileTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var createdAt: BaseTokenizedObject {
			get {
				return self.append("createdAt") 
			}
		}
		
		public var updatedAt: BaseTokenizedObject {
			get {
				return self.append("updatedAt") 
			}
		}
		
		public var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var engineType: BaseTokenizedObject {
			get {
				return self.append("engineType") 
			}
		}
		
		public func entryFilter<T: BaseEntryFilter.BaseEntryFilterTokenizer>() -> T {
			return T(self.append("entryFilter"))
		}
		
		public var actionIfInfected: BaseTokenizedObject {
			get {
				return self.append("actionIfInfected") 
			}
		}
	}

	public var id: Int? = nil
	public var createdAt: Int? = nil
	public var updatedAt: Int? = nil
	public var partnerId: Int? = nil
	public var name: String? = nil
	public var status: VirusScanProfileStatus? = nil
	public var engineType: VirusScanEngineType? = nil
	public var entryFilter: BaseEntryFilter? = nil
	public var actionIfInfected: VirusFoundAction? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(createdAt: String) {
		self.dict["createdAt"] = createdAt
	}
	
	public func setMultiRequestToken(updatedAt: String) {
		self.dict["updatedAt"] = updatedAt
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(engineType: String) {
		self.dict["engineType"] = engineType
	}
	
	public func setMultiRequestToken(actionIfInfected: String) {
		self.dict["actionIfInfected"] = actionIfInfected
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["status"] != nil {
			status = VirusScanProfileStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["engineType"] != nil {
			engineType = VirusScanEngineType(rawValue: "\(dict["engineType"]!)")
		}
		if dict["entryFilter"] != nil {
		entryFilter = try JSONParser.parse(object: dict["entryFilter"] as! [String: Any])		}
		if dict["actionIfInfected"] != nil {
			actionIfInfected = VirusFoundAction(rawValue: (dict["actionIfInfected"] as? Int)!)
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(status != nil) {
			dict["status"] = status!.rawValue
		}
		if(engineType != nil) {
			dict["engineType"] = engineType!.rawValue
		}
		if(entryFilter != nil) {
			dict["entryFilter"] = entryFilter!.toDictionary()
		}
		if(actionIfInfected != nil) {
			dict["actionIfInfected"] = actionIfInfected!.rawValue
		}
		return dict
	}
}

