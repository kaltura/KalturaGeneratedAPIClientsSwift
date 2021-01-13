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

open class ScheduledTaskProfileBaseFilter: Filter {

	public class ScheduledTaskProfileBaseFilterTokenizer: Filter.FilterTokenizer {
		
		public var idEqual: BaseTokenizedObject {
			get {
				return self.append("idEqual") 
			}
		}
		
		public var idIn: BaseTokenizedObject {
			get {
				return self.append("idIn") 
			}
		}
		
		public var partnerIdEqual: BaseTokenizedObject {
			get {
				return self.append("partnerIdEqual") 
			}
		}
		
		public var partnerIdIn: BaseTokenizedObject {
			get {
				return self.append("partnerIdIn") 
			}
		}
		
		public var systemNameEqual: BaseTokenizedObject {
			get {
				return self.append("systemNameEqual") 
			}
		}
		
		public var systemNameIn: BaseTokenizedObject {
			get {
				return self.append("systemNameIn") 
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
		
		public var createdAtGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("createdAtGreaterThanOrEqual") 
			}
		}
		
		public var createdAtLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("createdAtLessThanOrEqual") 
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
		
		public var lastExecutionStartedAtGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("lastExecutionStartedAtGreaterThanOrEqual") 
			}
		}
		
		public var lastExecutionStartedAtLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("lastExecutionStartedAtLessThanOrEqual") 
			}
		}
		
		public var lastExecutionStartedAtLessThanOrEqualOrNull: BaseTokenizedObject {
			get {
				return self.append("lastExecutionStartedAtLessThanOrEqualOrNull") 
			}
		}
	}

	public var idEqual: Int? = nil
	public var idIn: String? = nil
	public var partnerIdEqual: Int? = nil
	public var partnerIdIn: String? = nil
	public var systemNameEqual: String? = nil
	public var systemNameIn: String? = nil
	public var statusEqual: ScheduledTaskProfileStatus? = nil
	public var statusIn: String? = nil
	public var createdAtGreaterThanOrEqual: Int? = nil
	public var createdAtLessThanOrEqual: Int? = nil
	public var updatedAtGreaterThanOrEqual: Int? = nil
	public var updatedAtLessThanOrEqual: Int? = nil
	public var lastExecutionStartedAtGreaterThanOrEqual: Int? = nil
	public var lastExecutionStartedAtLessThanOrEqual: Int? = nil
	public var lastExecutionStartedAtLessThanOrEqualOrNull: Int? = nil


	public func setMultiRequestToken(idEqual: String) {
		self.dict["idEqual"] = idEqual
	}
	
	public func setMultiRequestToken(idIn: String) {
		self.dict["idIn"] = idIn
	}
	
	public func setMultiRequestToken(partnerIdEqual: String) {
		self.dict["partnerIdEqual"] = partnerIdEqual
	}
	
	public func setMultiRequestToken(partnerIdIn: String) {
		self.dict["partnerIdIn"] = partnerIdIn
	}
	
	public func setMultiRequestToken(systemNameEqual: String) {
		self.dict["systemNameEqual"] = systemNameEqual
	}
	
	public func setMultiRequestToken(systemNameIn: String) {
		self.dict["systemNameIn"] = systemNameIn
	}
	
	public func setMultiRequestToken(statusEqual: String) {
		self.dict["statusEqual"] = statusEqual
	}
	
	public func setMultiRequestToken(statusIn: String) {
		self.dict["statusIn"] = statusIn
	}
	
	public func setMultiRequestToken(createdAtGreaterThanOrEqual: String) {
		self.dict["createdAtGreaterThanOrEqual"] = createdAtGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(createdAtLessThanOrEqual: String) {
		self.dict["createdAtLessThanOrEqual"] = createdAtLessThanOrEqual
	}
	
	public func setMultiRequestToken(updatedAtGreaterThanOrEqual: String) {
		self.dict["updatedAtGreaterThanOrEqual"] = updatedAtGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(updatedAtLessThanOrEqual: String) {
		self.dict["updatedAtLessThanOrEqual"] = updatedAtLessThanOrEqual
	}
	
	public func setMultiRequestToken(lastExecutionStartedAtGreaterThanOrEqual: String) {
		self.dict["lastExecutionStartedAtGreaterThanOrEqual"] = lastExecutionStartedAtGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(lastExecutionStartedAtLessThanOrEqual: String) {
		self.dict["lastExecutionStartedAtLessThanOrEqual"] = lastExecutionStartedAtLessThanOrEqual
	}
	
	public func setMultiRequestToken(lastExecutionStartedAtLessThanOrEqualOrNull: String) {
		self.dict["lastExecutionStartedAtLessThanOrEqualOrNull"] = lastExecutionStartedAtLessThanOrEqualOrNull
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["idEqual"] != nil {
			idEqual = dict["idEqual"] as? Int
		}
		if dict["idIn"] != nil {
			idIn = dict["idIn"] as? String
		}
		if dict["partnerIdEqual"] != nil {
			partnerIdEqual = dict["partnerIdEqual"] as? Int
		}
		if dict["partnerIdIn"] != nil {
			partnerIdIn = dict["partnerIdIn"] as? String
		}
		if dict["systemNameEqual"] != nil {
			systemNameEqual = dict["systemNameEqual"] as? String
		}
		if dict["systemNameIn"] != nil {
			systemNameIn = dict["systemNameIn"] as? String
		}
		if dict["statusEqual"] != nil {
			statusEqual = ScheduledTaskProfileStatus(rawValue: (dict["statusEqual"] as? Int)!)
		}
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
		}
		if dict["createdAtGreaterThanOrEqual"] != nil {
			createdAtGreaterThanOrEqual = dict["createdAtGreaterThanOrEqual"] as? Int
		}
		if dict["createdAtLessThanOrEqual"] != nil {
			createdAtLessThanOrEqual = dict["createdAtLessThanOrEqual"] as? Int
		}
		if dict["updatedAtGreaterThanOrEqual"] != nil {
			updatedAtGreaterThanOrEqual = dict["updatedAtGreaterThanOrEqual"] as? Int
		}
		if dict["updatedAtLessThanOrEqual"] != nil {
			updatedAtLessThanOrEqual = dict["updatedAtLessThanOrEqual"] as? Int
		}
		if dict["lastExecutionStartedAtGreaterThanOrEqual"] != nil {
			lastExecutionStartedAtGreaterThanOrEqual = dict["lastExecutionStartedAtGreaterThanOrEqual"] as? Int
		}
		if dict["lastExecutionStartedAtLessThanOrEqual"] != nil {
			lastExecutionStartedAtLessThanOrEqual = dict["lastExecutionStartedAtLessThanOrEqual"] as? Int
		}
		if dict["lastExecutionStartedAtLessThanOrEqualOrNull"] != nil {
			lastExecutionStartedAtLessThanOrEqualOrNull = dict["lastExecutionStartedAtLessThanOrEqualOrNull"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(idEqual != nil) {
			dict["idEqual"] = idEqual!
		}
		if(idIn != nil) {
			dict["idIn"] = idIn!
		}
		if(partnerIdEqual != nil) {
			dict["partnerIdEqual"] = partnerIdEqual!
		}
		if(partnerIdIn != nil) {
			dict["partnerIdIn"] = partnerIdIn!
		}
		if(systemNameEqual != nil) {
			dict["systemNameEqual"] = systemNameEqual!
		}
		if(systemNameIn != nil) {
			dict["systemNameIn"] = systemNameIn!
		}
		if(statusEqual != nil) {
			dict["statusEqual"] = statusEqual!.rawValue
		}
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		if(createdAtGreaterThanOrEqual != nil) {
			dict["createdAtGreaterThanOrEqual"] = createdAtGreaterThanOrEqual!
		}
		if(createdAtLessThanOrEqual != nil) {
			dict["createdAtLessThanOrEqual"] = createdAtLessThanOrEqual!
		}
		if(updatedAtGreaterThanOrEqual != nil) {
			dict["updatedAtGreaterThanOrEqual"] = updatedAtGreaterThanOrEqual!
		}
		if(updatedAtLessThanOrEqual != nil) {
			dict["updatedAtLessThanOrEqual"] = updatedAtLessThanOrEqual!
		}
		if(lastExecutionStartedAtGreaterThanOrEqual != nil) {
			dict["lastExecutionStartedAtGreaterThanOrEqual"] = lastExecutionStartedAtGreaterThanOrEqual!
		}
		if(lastExecutionStartedAtLessThanOrEqual != nil) {
			dict["lastExecutionStartedAtLessThanOrEqual"] = lastExecutionStartedAtLessThanOrEqual!
		}
		if(lastExecutionStartedAtLessThanOrEqualOrNull != nil) {
			dict["lastExecutionStartedAtLessThanOrEqualOrNull"] = lastExecutionStartedAtLessThanOrEqualOrNull!
		}
		return dict
	}
}

