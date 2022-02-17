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

open class EntryServerNodeBaseFilter: Filter {

	public class EntryServerNodeBaseFilterTokenizer: Filter.FilterTokenizer {
		
		public var entryIdEqual: BaseTokenizedObject {
			get {
				return self.append("entryIdEqual") 
			}
		}
		
		public var entryIdIn: BaseTokenizedObject {
			get {
				return self.append("entryIdIn") 
			}
		}
		
		public var serverNodeIdEqual: BaseTokenizedObject {
			get {
				return self.append("serverNodeIdEqual") 
			}
		}
		
		public var serverNodeIdIn: BaseTokenizedObject {
			get {
				return self.append("serverNodeIdIn") 
			}
		}
		
		public var serverNodeIdNotIn: BaseTokenizedObject {
			get {
				return self.append("serverNodeIdNotIn") 
			}
		}
		
		public var createdAtLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("createdAtLessThanOrEqual") 
			}
		}
		
		public var createdAtGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("createdAtGreaterThanOrEqual") 
			}
		}
		
		public var updatedAtGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("updatedAtGreaterThanOrEqual") 
			}
		}
		
		public var updatedAtLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("updatedAtLessThanOrEqual") 
			}
		}
		
		public var statusEqual: BaseTokenizedObject {
			get {
				return self.append("statusEqual") 
			}
		}
		
		public var statusIn: BaseTokenizedObject {
			get {
				return self.append("statusIn") 
			}
		}
		
		public var serverTypeEqual: BaseTokenizedObject {
			get {
				return self.append("serverTypeEqual") 
			}
		}
		
		public var serverTypeIn: BaseTokenizedObject {
			get {
				return self.append("serverTypeIn") 
			}
		}
		
		public var serverTypeNotIn: BaseTokenizedObject {
			get {
				return self.append("serverTypeNotIn") 
			}
		}
	}

	public var entryIdEqual: String? = nil
	public var entryIdIn: String? = nil
	public var serverNodeIdEqual: Int? = nil
	public var serverNodeIdIn: String? = nil
	public var serverNodeIdNotIn: String? = nil
	public var createdAtLessThanOrEqual: Int? = nil
	public var createdAtGreaterThanOrEqual: Int? = nil
	public var updatedAtGreaterThanOrEqual: Int? = nil
	public var updatedAtLessThanOrEqual: Int? = nil
	public var statusEqual: EntryServerNodeStatus? = nil
	public var statusIn: String? = nil
	public var serverTypeEqual: EntryServerNodeType? = nil
	public var serverTypeIn: String? = nil
	public var serverTypeNotIn: String? = nil


	public func setMultiRequestToken(entryIdEqual: String) {
		self.dict["entryIdEqual"] = entryIdEqual
	}
	
	public func setMultiRequestToken(entryIdIn: String) {
		self.dict["entryIdIn"] = entryIdIn
	}
	
	public func setMultiRequestToken(serverNodeIdEqual: String) {
		self.dict["serverNodeIdEqual"] = serverNodeIdEqual
	}
	
	public func setMultiRequestToken(serverNodeIdIn: String) {
		self.dict["serverNodeIdIn"] = serverNodeIdIn
	}
	
	public func setMultiRequestToken(serverNodeIdNotIn: String) {
		self.dict["serverNodeIdNotIn"] = serverNodeIdNotIn
	}
	
	public func setMultiRequestToken(createdAtLessThanOrEqual: String) {
		self.dict["createdAtLessThanOrEqual"] = createdAtLessThanOrEqual
	}
	
	public func setMultiRequestToken(createdAtGreaterThanOrEqual: String) {
		self.dict["createdAtGreaterThanOrEqual"] = createdAtGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(updatedAtGreaterThanOrEqual: String) {
		self.dict["updatedAtGreaterThanOrEqual"] = updatedAtGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(updatedAtLessThanOrEqual: String) {
		self.dict["updatedAtLessThanOrEqual"] = updatedAtLessThanOrEqual
	}
	
	public func setMultiRequestToken(statusEqual: String) {
		self.dict["statusEqual"] = statusEqual
	}
	
	public func setMultiRequestToken(statusIn: String) {
		self.dict["statusIn"] = statusIn
	}
	
	public func setMultiRequestToken(serverTypeEqual: String) {
		self.dict["serverTypeEqual"] = serverTypeEqual
	}
	
	public func setMultiRequestToken(serverTypeIn: String) {
		self.dict["serverTypeIn"] = serverTypeIn
	}
	
	public func setMultiRequestToken(serverTypeNotIn: String) {
		self.dict["serverTypeNotIn"] = serverTypeNotIn
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["entryIdEqual"] != nil {
			entryIdEqual = dict["entryIdEqual"] as? String
		}
		if dict["entryIdIn"] != nil {
			entryIdIn = dict["entryIdIn"] as? String
		}
		if dict["serverNodeIdEqual"] != nil {
			serverNodeIdEqual = dict["serverNodeIdEqual"] as? Int
		}
		if dict["serverNodeIdIn"] != nil {
			serverNodeIdIn = dict["serverNodeIdIn"] as? String
		}
		if dict["serverNodeIdNotIn"] != nil {
			serverNodeIdNotIn = dict["serverNodeIdNotIn"] as? String
		}
		if dict["createdAtLessThanOrEqual"] != nil {
			createdAtLessThanOrEqual = dict["createdAtLessThanOrEqual"] as? Int
		}
		if dict["createdAtGreaterThanOrEqual"] != nil {
			createdAtGreaterThanOrEqual = dict["createdAtGreaterThanOrEqual"] as? Int
		}
		if dict["updatedAtGreaterThanOrEqual"] != nil {
			updatedAtGreaterThanOrEqual = dict["updatedAtGreaterThanOrEqual"] as? Int
		}
		if dict["updatedAtLessThanOrEqual"] != nil {
			updatedAtLessThanOrEqual = dict["updatedAtLessThanOrEqual"] as? Int
		}
		if dict["statusEqual"] != nil {
			statusEqual = EntryServerNodeStatus(rawValue: (dict["statusEqual"] as? Int)!)
		}
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
		}
		if dict["serverTypeEqual"] != nil {
			serverTypeEqual = EntryServerNodeType(rawValue: "\(dict["serverTypeEqual"]!)")
		}
		if dict["serverTypeIn"] != nil {
			serverTypeIn = dict["serverTypeIn"] as? String
		}
		if dict["serverTypeNotIn"] != nil {
			serverTypeNotIn = dict["serverTypeNotIn"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(entryIdEqual != nil) {
			dict["entryIdEqual"] = entryIdEqual!
		}
		if(entryIdIn != nil) {
			dict["entryIdIn"] = entryIdIn!
		}
		if(serverNodeIdEqual != nil) {
			dict["serverNodeIdEqual"] = serverNodeIdEqual!
		}
		if(serverNodeIdIn != nil) {
			dict["serverNodeIdIn"] = serverNodeIdIn!
		}
		if(serverNodeIdNotIn != nil) {
			dict["serverNodeIdNotIn"] = serverNodeIdNotIn!
		}
		if(createdAtLessThanOrEqual != nil) {
			dict["createdAtLessThanOrEqual"] = createdAtLessThanOrEqual!
		}
		if(createdAtGreaterThanOrEqual != nil) {
			dict["createdAtGreaterThanOrEqual"] = createdAtGreaterThanOrEqual!
		}
		if(updatedAtGreaterThanOrEqual != nil) {
			dict["updatedAtGreaterThanOrEqual"] = updatedAtGreaterThanOrEqual!
		}
		if(updatedAtLessThanOrEqual != nil) {
			dict["updatedAtLessThanOrEqual"] = updatedAtLessThanOrEqual!
		}
		if(statusEqual != nil) {
			dict["statusEqual"] = statusEqual!.rawValue
		}
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		if(serverTypeEqual != nil) {
			dict["serverTypeEqual"] = serverTypeEqual!.rawValue
		}
		if(serverTypeIn != nil) {
			dict["serverTypeIn"] = serverTypeIn!
		}
		if(serverTypeNotIn != nil) {
			dict["serverTypeNotIn"] = serverTypeNotIn!
		}
		return dict
	}
}

