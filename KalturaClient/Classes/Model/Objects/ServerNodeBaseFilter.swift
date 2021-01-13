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

open class ServerNodeBaseFilter: Filter {

	public class ServerNodeBaseFilterTokenizer: Filter.FilterTokenizer {
		
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
		
		public var heartbeatTimeGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("heartbeatTimeGreaterThanOrEqual") 
			}
		}
		
		public var heartbeatTimeLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("heartbeatTimeLessThanOrEqual") 
			}
		}
		
		public var nameEqual: BaseTokenizedObject {
			get {
				return self.append("nameEqual") 
			}
		}
		
		public var nameIn: BaseTokenizedObject {
			get {
				return self.append("nameIn") 
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
		
		public var hostNameLike: BaseTokenizedObject {
			get {
				return self.append("hostNameLike") 
			}
		}
		
		public var hostNameMultiLikeOr: BaseTokenizedObject {
			get {
				return self.append("hostNameMultiLikeOr") 
			}
		}
		
		public var hostNameMultiLikeAnd: BaseTokenizedObject {
			get {
				return self.append("hostNameMultiLikeAnd") 
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
		
		public var tagsLike: BaseTokenizedObject {
			get {
				return self.append("tagsLike") 
			}
		}
		
		public var tagsMultiLikeOr: BaseTokenizedObject {
			get {
				return self.append("tagsMultiLikeOr") 
			}
		}
		
		public var tagsMultiLikeAnd: BaseTokenizedObject {
			get {
				return self.append("tagsMultiLikeAnd") 
			}
		}
		
		public var dcEqual: BaseTokenizedObject {
			get {
				return self.append("dcEqual") 
			}
		}
		
		public var dcIn: BaseTokenizedObject {
			get {
				return self.append("dcIn") 
			}
		}
		
		public var parentIdLike: BaseTokenizedObject {
			get {
				return self.append("parentIdLike") 
			}
		}
		
		public var parentIdMultiLikeOr: BaseTokenizedObject {
			get {
				return self.append("parentIdMultiLikeOr") 
			}
		}
		
		public var parentIdMultiLikeAnd: BaseTokenizedObject {
			get {
				return self.append("parentIdMultiLikeAnd") 
			}
		}
		
		public var environmentEqual: BaseTokenizedObject {
			get {
				return self.append("environmentEqual") 
			}
		}
		
		public var environmentIn: BaseTokenizedObject {
			get {
				return self.append("environmentIn") 
			}
		}
	}

	public var idEqual: Int? = nil
	public var idIn: String? = nil
	public var createdAtGreaterThanOrEqual: Int? = nil
	public var createdAtLessThanOrEqual: Int? = nil
	public var updatedAtGreaterThanOrEqual: Int? = nil
	public var updatedAtLessThanOrEqual: Int? = nil
	public var heartbeatTimeGreaterThanOrEqual: Int? = nil
	public var heartbeatTimeLessThanOrEqual: Int? = nil
	public var nameEqual: String? = nil
	public var nameIn: String? = nil
	public var systemNameEqual: String? = nil
	public var systemNameIn: String? = nil
	public var hostNameLike: String? = nil
	public var hostNameMultiLikeOr: String? = nil
	public var hostNameMultiLikeAnd: String? = nil
	public var statusEqual: ServerNodeStatus? = nil
	public var statusIn: String? = nil
	public var typeEqual: ServerNodeType? = nil
	public var typeIn: String? = nil
	public var tagsLike: String? = nil
	public var tagsMultiLikeOr: String? = nil
	public var tagsMultiLikeAnd: String? = nil
	public var dcEqual: Int? = nil
	public var dcIn: String? = nil
	public var parentIdLike: String? = nil
	public var parentIdMultiLikeOr: String? = nil
	public var parentIdMultiLikeAnd: String? = nil
	public var environmentEqual: String? = nil
	public var environmentIn: String? = nil


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
	
	public func setMultiRequestToken(updatedAtGreaterThanOrEqual: String) {
		self.dict["updatedAtGreaterThanOrEqual"] = updatedAtGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(updatedAtLessThanOrEqual: String) {
		self.dict["updatedAtLessThanOrEqual"] = updatedAtLessThanOrEqual
	}
	
	public func setMultiRequestToken(heartbeatTimeGreaterThanOrEqual: String) {
		self.dict["heartbeatTimeGreaterThanOrEqual"] = heartbeatTimeGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(heartbeatTimeLessThanOrEqual: String) {
		self.dict["heartbeatTimeLessThanOrEqual"] = heartbeatTimeLessThanOrEqual
	}
	
	public func setMultiRequestToken(nameEqual: String) {
		self.dict["nameEqual"] = nameEqual
	}
	
	public func setMultiRequestToken(nameIn: String) {
		self.dict["nameIn"] = nameIn
	}
	
	public func setMultiRequestToken(systemNameEqual: String) {
		self.dict["systemNameEqual"] = systemNameEqual
	}
	
	public func setMultiRequestToken(systemNameIn: String) {
		self.dict["systemNameIn"] = systemNameIn
	}
	
	public func setMultiRequestToken(hostNameLike: String) {
		self.dict["hostNameLike"] = hostNameLike
	}
	
	public func setMultiRequestToken(hostNameMultiLikeOr: String) {
		self.dict["hostNameMultiLikeOr"] = hostNameMultiLikeOr
	}
	
	public func setMultiRequestToken(hostNameMultiLikeAnd: String) {
		self.dict["hostNameMultiLikeAnd"] = hostNameMultiLikeAnd
	}
	
	public func setMultiRequestToken(statusEqual: String) {
		self.dict["statusEqual"] = statusEqual
	}
	
	public func setMultiRequestToken(statusIn: String) {
		self.dict["statusIn"] = statusIn
	}
	
	public func setMultiRequestToken(typeEqual: String) {
		self.dict["typeEqual"] = typeEqual
	}
	
	public func setMultiRequestToken(typeIn: String) {
		self.dict["typeIn"] = typeIn
	}
	
	public func setMultiRequestToken(tagsLike: String) {
		self.dict["tagsLike"] = tagsLike
	}
	
	public func setMultiRequestToken(tagsMultiLikeOr: String) {
		self.dict["tagsMultiLikeOr"] = tagsMultiLikeOr
	}
	
	public func setMultiRequestToken(tagsMultiLikeAnd: String) {
		self.dict["tagsMultiLikeAnd"] = tagsMultiLikeAnd
	}
	
	public func setMultiRequestToken(dcEqual: String) {
		self.dict["dcEqual"] = dcEqual
	}
	
	public func setMultiRequestToken(dcIn: String) {
		self.dict["dcIn"] = dcIn
	}
	
	public func setMultiRequestToken(parentIdLike: String) {
		self.dict["parentIdLike"] = parentIdLike
	}
	
	public func setMultiRequestToken(parentIdMultiLikeOr: String) {
		self.dict["parentIdMultiLikeOr"] = parentIdMultiLikeOr
	}
	
	public func setMultiRequestToken(parentIdMultiLikeAnd: String) {
		self.dict["parentIdMultiLikeAnd"] = parentIdMultiLikeAnd
	}
	
	public func setMultiRequestToken(environmentEqual: String) {
		self.dict["environmentEqual"] = environmentEqual
	}
	
	public func setMultiRequestToken(environmentIn: String) {
		self.dict["environmentIn"] = environmentIn
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
		if dict["updatedAtGreaterThanOrEqual"] != nil {
			updatedAtGreaterThanOrEqual = dict["updatedAtGreaterThanOrEqual"] as? Int
		}
		if dict["updatedAtLessThanOrEqual"] != nil {
			updatedAtLessThanOrEqual = dict["updatedAtLessThanOrEqual"] as? Int
		}
		if dict["heartbeatTimeGreaterThanOrEqual"] != nil {
			heartbeatTimeGreaterThanOrEqual = dict["heartbeatTimeGreaterThanOrEqual"] as? Int
		}
		if dict["heartbeatTimeLessThanOrEqual"] != nil {
			heartbeatTimeLessThanOrEqual = dict["heartbeatTimeLessThanOrEqual"] as? Int
		}
		if dict["nameEqual"] != nil {
			nameEqual = dict["nameEqual"] as? String
		}
		if dict["nameIn"] != nil {
			nameIn = dict["nameIn"] as? String
		}
		if dict["systemNameEqual"] != nil {
			systemNameEqual = dict["systemNameEqual"] as? String
		}
		if dict["systemNameIn"] != nil {
			systemNameIn = dict["systemNameIn"] as? String
		}
		if dict["hostNameLike"] != nil {
			hostNameLike = dict["hostNameLike"] as? String
		}
		if dict["hostNameMultiLikeOr"] != nil {
			hostNameMultiLikeOr = dict["hostNameMultiLikeOr"] as? String
		}
		if dict["hostNameMultiLikeAnd"] != nil {
			hostNameMultiLikeAnd = dict["hostNameMultiLikeAnd"] as? String
		}
		if dict["statusEqual"] != nil {
			statusEqual = ServerNodeStatus(rawValue: (dict["statusEqual"] as? Int)!)
		}
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
		}
		if dict["typeEqual"] != nil {
			typeEqual = ServerNodeType(rawValue: "\(dict["typeEqual"]!)")
		}
		if dict["typeIn"] != nil {
			typeIn = dict["typeIn"] as? String
		}
		if dict["tagsLike"] != nil {
			tagsLike = dict["tagsLike"] as? String
		}
		if dict["tagsMultiLikeOr"] != nil {
			tagsMultiLikeOr = dict["tagsMultiLikeOr"] as? String
		}
		if dict["tagsMultiLikeAnd"] != nil {
			tagsMultiLikeAnd = dict["tagsMultiLikeAnd"] as? String
		}
		if dict["dcEqual"] != nil {
			dcEqual = dict["dcEqual"] as? Int
		}
		if dict["dcIn"] != nil {
			dcIn = dict["dcIn"] as? String
		}
		if dict["parentIdLike"] != nil {
			parentIdLike = dict["parentIdLike"] as? String
		}
		if dict["parentIdMultiLikeOr"] != nil {
			parentIdMultiLikeOr = dict["parentIdMultiLikeOr"] as? String
		}
		if dict["parentIdMultiLikeAnd"] != nil {
			parentIdMultiLikeAnd = dict["parentIdMultiLikeAnd"] as? String
		}
		if dict["environmentEqual"] != nil {
			environmentEqual = dict["environmentEqual"] as? String
		}
		if dict["environmentIn"] != nil {
			environmentIn = dict["environmentIn"] as? String
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
		if(updatedAtGreaterThanOrEqual != nil) {
			dict["updatedAtGreaterThanOrEqual"] = updatedAtGreaterThanOrEqual!
		}
		if(updatedAtLessThanOrEqual != nil) {
			dict["updatedAtLessThanOrEqual"] = updatedAtLessThanOrEqual!
		}
		if(heartbeatTimeGreaterThanOrEqual != nil) {
			dict["heartbeatTimeGreaterThanOrEqual"] = heartbeatTimeGreaterThanOrEqual!
		}
		if(heartbeatTimeLessThanOrEqual != nil) {
			dict["heartbeatTimeLessThanOrEqual"] = heartbeatTimeLessThanOrEqual!
		}
		if(nameEqual != nil) {
			dict["nameEqual"] = nameEqual!
		}
		if(nameIn != nil) {
			dict["nameIn"] = nameIn!
		}
		if(systemNameEqual != nil) {
			dict["systemNameEqual"] = systemNameEqual!
		}
		if(systemNameIn != nil) {
			dict["systemNameIn"] = systemNameIn!
		}
		if(hostNameLike != nil) {
			dict["hostNameLike"] = hostNameLike!
		}
		if(hostNameMultiLikeOr != nil) {
			dict["hostNameMultiLikeOr"] = hostNameMultiLikeOr!
		}
		if(hostNameMultiLikeAnd != nil) {
			dict["hostNameMultiLikeAnd"] = hostNameMultiLikeAnd!
		}
		if(statusEqual != nil) {
			dict["statusEqual"] = statusEqual!.rawValue
		}
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		if(typeEqual != nil) {
			dict["typeEqual"] = typeEqual!.rawValue
		}
		if(typeIn != nil) {
			dict["typeIn"] = typeIn!
		}
		if(tagsLike != nil) {
			dict["tagsLike"] = tagsLike!
		}
		if(tagsMultiLikeOr != nil) {
			dict["tagsMultiLikeOr"] = tagsMultiLikeOr!
		}
		if(tagsMultiLikeAnd != nil) {
			dict["tagsMultiLikeAnd"] = tagsMultiLikeAnd!
		}
		if(dcEqual != nil) {
			dict["dcEqual"] = dcEqual!
		}
		if(dcIn != nil) {
			dict["dcIn"] = dcIn!
		}
		if(parentIdLike != nil) {
			dict["parentIdLike"] = parentIdLike!
		}
		if(parentIdMultiLikeOr != nil) {
			dict["parentIdMultiLikeOr"] = parentIdMultiLikeOr!
		}
		if(parentIdMultiLikeAnd != nil) {
			dict["parentIdMultiLikeAnd"] = parentIdMultiLikeAnd!
		}
		if(environmentEqual != nil) {
			dict["environmentEqual"] = environmentEqual!
		}
		if(environmentIn != nil) {
			dict["environmentIn"] = environmentIn!
		}
		return dict
	}
}

