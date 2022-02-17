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

open class ControlPanelCommandBaseFilter: Filter {

	public class ControlPanelCommandBaseFilterTokenizer: Filter.FilterTokenizer {
		
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
		
		public var createdByIdEqual: BaseTokenizedObject {
			get {
				return self.append("createdByIdEqual") 
			}
		}
		
		public var typeEqual: BaseTokenizedObject {
			get {
				return self.append("typeEqual") 
			}
		}
		
		public var typeIn: BaseTokenizedObject {
			get {
				return self.append("typeIn") 
			}
		}
		
		public var targetTypeEqual: BaseTokenizedObject {
			get {
				return self.append("targetTypeEqual") 
			}
		}
		
		public var targetTypeIn: BaseTokenizedObject {
			get {
				return self.append("targetTypeIn") 
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
	}

	public var idEqual: Int? = nil
	public var idIn: String? = nil
	public var createdAtGreaterThanOrEqual: Int? = nil
	public var createdAtLessThanOrEqual: Int? = nil
	public var createdByIdEqual: Int? = nil
	public var typeEqual: ControlPanelCommandType? = nil
	public var typeIn: String? = nil
	public var targetTypeEqual: ControlPanelCommandTargetType? = nil
	public var targetTypeIn: String? = nil
	public var statusEqual: ControlPanelCommandStatus? = nil
	public var statusIn: String? = nil


	public func setMultiRequestToken(idEqual: String) {
		self.dict["idEqual"] = idEqual
	}
	
	public func setMultiRequestToken(idIn: String) {
		self.dict["idIn"] = idIn
	}
	
	public func setMultiRequestToken(createdAtGreaterThanOrEqual: String) {
		self.dict["createdAtGreaterThanOrEqual"] = createdAtGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(createdAtLessThanOrEqual: String) {
		self.dict["createdAtLessThanOrEqual"] = createdAtLessThanOrEqual
	}
	
	public func setMultiRequestToken(createdByIdEqual: String) {
		self.dict["createdByIdEqual"] = createdByIdEqual
	}
	
	public func setMultiRequestToken(typeEqual: String) {
		self.dict["typeEqual"] = typeEqual
	}
	
	public func setMultiRequestToken(typeIn: String) {
		self.dict["typeIn"] = typeIn
	}
	
	public func setMultiRequestToken(targetTypeEqual: String) {
		self.dict["targetTypeEqual"] = targetTypeEqual
	}
	
	public func setMultiRequestToken(targetTypeIn: String) {
		self.dict["targetTypeIn"] = targetTypeIn
	}
	
	public func setMultiRequestToken(statusEqual: String) {
		self.dict["statusEqual"] = statusEqual
	}
	
	public func setMultiRequestToken(statusIn: String) {
		self.dict["statusIn"] = statusIn
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
		if dict["createdAtGreaterThanOrEqual"] != nil {
			createdAtGreaterThanOrEqual = dict["createdAtGreaterThanOrEqual"] as? Int
		}
		if dict["createdAtLessThanOrEqual"] != nil {
			createdAtLessThanOrEqual = dict["createdAtLessThanOrEqual"] as? Int
		}
		if dict["createdByIdEqual"] != nil {
			createdByIdEqual = dict["createdByIdEqual"] as? Int
		}
		if dict["typeEqual"] != nil {
			typeEqual = ControlPanelCommandType(rawValue: (dict["typeEqual"] as? Int)!)
		}
		if dict["typeIn"] != nil {
			typeIn = dict["typeIn"] as? String
		}
		if dict["targetTypeEqual"] != nil {
			targetTypeEqual = ControlPanelCommandTargetType(rawValue: (dict["targetTypeEqual"] as? Int)!)
		}
		if dict["targetTypeIn"] != nil {
			targetTypeIn = dict["targetTypeIn"] as? String
		}
		if dict["statusEqual"] != nil {
			statusEqual = ControlPanelCommandStatus(rawValue: (dict["statusEqual"] as? Int)!)
		}
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
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
		if(createdAtGreaterThanOrEqual != nil) {
			dict["createdAtGreaterThanOrEqual"] = createdAtGreaterThanOrEqual!
		}
		if(createdAtLessThanOrEqual != nil) {
			dict["createdAtLessThanOrEqual"] = createdAtLessThanOrEqual!
		}
		if(createdByIdEqual != nil) {
			dict["createdByIdEqual"] = createdByIdEqual!
		}
		if(typeEqual != nil) {
			dict["typeEqual"] = typeEqual!.rawValue
		}
		if(typeIn != nil) {
			dict["typeIn"] = typeIn!
		}
		if(targetTypeEqual != nil) {
			dict["targetTypeEqual"] = targetTypeEqual!.rawValue
		}
		if(targetTypeIn != nil) {
			dict["targetTypeIn"] = targetTypeIn!
		}
		if(statusEqual != nil) {
			dict["statusEqual"] = statusEqual!.rawValue
		}
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		return dict
	}
}

