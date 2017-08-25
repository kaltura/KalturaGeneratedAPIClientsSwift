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
// Copyright (C) 2006-2017  Kaltura Inc.
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

open class CuePointBaseFilter: RelatedFilter {

	public class CuePointBaseFilterTokenizer: RelatedFilter.RelatedFilterTokenizer {
		
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
		
		public var cuePointTypeEqual: BaseTokenizedObject {
			get {
				return self.append("cuePointTypeEqual") 
			}
		}
		
		public var cuePointTypeIn: BaseTokenizedObject {
			get {
				return self.append("cuePointTypeIn") 
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
		
		public var triggeredAtGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("triggeredAtGreaterThanOrEqual") 
			}
		}
		
		public var triggeredAtLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("triggeredAtLessThanOrEqual") 
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
		
		public var startTimeGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("startTimeGreaterThanOrEqual") 
			}
		}
		
		public var startTimeLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("startTimeLessThanOrEqual") 
			}
		}
		
		public var userIdEqual: BaseTokenizedObject {
			get {
				return self.append("userIdEqual") 
			}
		}
		
		public var userIdIn: BaseTokenizedObject {
			get {
				return self.append("userIdIn") 
			}
		}
		
		public var partnerSortValueEqual: BaseTokenizedObject {
			get {
				return self.append("partnerSortValueEqual") 
			}
		}
		
		public var partnerSortValueIn: BaseTokenizedObject {
			get {
				return self.append("partnerSortValueIn") 
			}
		}
		
		public var partnerSortValueGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("partnerSortValueGreaterThanOrEqual") 
			}
		}
		
		public var partnerSortValueLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("partnerSortValueLessThanOrEqual") 
			}
		}
		
		public var forceStopEqual: BaseTokenizedObject {
			get {
				return self.append("forceStopEqual") 
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
	}

	public var idEqual: String? = nil
	public var idIn: String? = nil
	public var cuePointTypeEqual: CuePointType? = nil
	public var cuePointTypeIn: String? = nil
	public var statusEqual: CuePointStatus? = nil
	public var statusIn: String? = nil
	public var entryIdEqual: String? = nil
	public var entryIdIn: String? = nil
	public var createdAtGreaterThanOrEqual: Int? = nil
	public var createdAtLessThanOrEqual: Int? = nil
	public var updatedAtGreaterThanOrEqual: Int? = nil
	public var updatedAtLessThanOrEqual: Int? = nil
	public var triggeredAtGreaterThanOrEqual: Int? = nil
	public var triggeredAtLessThanOrEqual: Int? = nil
	public var tagsLike: String? = nil
	public var tagsMultiLikeOr: String? = nil
	public var tagsMultiLikeAnd: String? = nil
	public var startTimeGreaterThanOrEqual: Int? = nil
	public var startTimeLessThanOrEqual: Int? = nil
	public var userIdEqual: String? = nil
	public var userIdIn: String? = nil
	public var partnerSortValueEqual: Int? = nil
	public var partnerSortValueIn: String? = nil
	public var partnerSortValueGreaterThanOrEqual: Int? = nil
	public var partnerSortValueLessThanOrEqual: Int? = nil
	public var forceStopEqual: Bool? = nil
	public var systemNameEqual: String? = nil
	public var systemNameIn: String? = nil


	public func setMultiRequestToken(idEqual: String) {
		self.dict["idEqual"] = idEqual
	}
	
	public func setMultiRequestToken(idIn: String) {
		self.dict["idIn"] = idIn
	}
	
	public func setMultiRequestToken(cuePointTypeEqual: String) {
		self.dict["cuePointTypeEqual"] = cuePointTypeEqual
	}
	
	public func setMultiRequestToken(cuePointTypeIn: String) {
		self.dict["cuePointTypeIn"] = cuePointTypeIn
	}
	
	public func setMultiRequestToken(statusEqual: String) {
		self.dict["statusEqual"] = statusEqual
	}
	
	public func setMultiRequestToken(statusIn: String) {
		self.dict["statusIn"] = statusIn
	}
	
	public func setMultiRequestToken(entryIdEqual: String) {
		self.dict["entryIdEqual"] = entryIdEqual
	}
	
	public func setMultiRequestToken(entryIdIn: String) {
		self.dict["entryIdIn"] = entryIdIn
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
	
	public func setMultiRequestToken(triggeredAtGreaterThanOrEqual: String) {
		self.dict["triggeredAtGreaterThanOrEqual"] = triggeredAtGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(triggeredAtLessThanOrEqual: String) {
		self.dict["triggeredAtLessThanOrEqual"] = triggeredAtLessThanOrEqual
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
	
	public func setMultiRequestToken(startTimeGreaterThanOrEqual: String) {
		self.dict["startTimeGreaterThanOrEqual"] = startTimeGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(startTimeLessThanOrEqual: String) {
		self.dict["startTimeLessThanOrEqual"] = startTimeLessThanOrEqual
	}
	
	public func setMultiRequestToken(userIdEqual: String) {
		self.dict["userIdEqual"] = userIdEqual
	}
	
	public func setMultiRequestToken(userIdIn: String) {
		self.dict["userIdIn"] = userIdIn
	}
	
	public func setMultiRequestToken(partnerSortValueEqual: String) {
		self.dict["partnerSortValueEqual"] = partnerSortValueEqual
	}
	
	public func setMultiRequestToken(partnerSortValueIn: String) {
		self.dict["partnerSortValueIn"] = partnerSortValueIn
	}
	
	public func setMultiRequestToken(partnerSortValueGreaterThanOrEqual: String) {
		self.dict["partnerSortValueGreaterThanOrEqual"] = partnerSortValueGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(partnerSortValueLessThanOrEqual: String) {
		self.dict["partnerSortValueLessThanOrEqual"] = partnerSortValueLessThanOrEqual
	}
	
	public func setMultiRequestToken(forceStopEqual: String) {
		self.dict["forceStopEqual"] = forceStopEqual
	}
	
	public func setMultiRequestToken(systemNameEqual: String) {
		self.dict["systemNameEqual"] = systemNameEqual
	}
	
	public func setMultiRequestToken(systemNameIn: String) {
		self.dict["systemNameIn"] = systemNameIn
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["idEqual"] != nil {
			idEqual = dict["idEqual"] as? String
		}
		if dict["idIn"] != nil {
			idIn = dict["idIn"] as? String
		}
		if dict["cuePointTypeEqual"] != nil {
			cuePointTypeEqual = CuePointType(rawValue: "\(dict["cuePointTypeEqual"]!)")
		}
		if dict["cuePointTypeIn"] != nil {
			cuePointTypeIn = dict["cuePointTypeIn"] as? String
		}
		if dict["statusEqual"] != nil {
			statusEqual = CuePointStatus(rawValue: (dict["statusEqual"] as? Int)!)
		}
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
		}
		if dict["entryIdEqual"] != nil {
			entryIdEqual = dict["entryIdEqual"] as? String
		}
		if dict["entryIdIn"] != nil {
			entryIdIn = dict["entryIdIn"] as? String
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
		if dict["triggeredAtGreaterThanOrEqual"] != nil {
			triggeredAtGreaterThanOrEqual = dict["triggeredAtGreaterThanOrEqual"] as? Int
		}
		if dict["triggeredAtLessThanOrEqual"] != nil {
			triggeredAtLessThanOrEqual = dict["triggeredAtLessThanOrEqual"] as? Int
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
		if dict["startTimeGreaterThanOrEqual"] != nil {
			startTimeGreaterThanOrEqual = dict["startTimeGreaterThanOrEqual"] as? Int
		}
		if dict["startTimeLessThanOrEqual"] != nil {
			startTimeLessThanOrEqual = dict["startTimeLessThanOrEqual"] as? Int
		}
		if dict["userIdEqual"] != nil {
			userIdEqual = dict["userIdEqual"] as? String
		}
		if dict["userIdIn"] != nil {
			userIdIn = dict["userIdIn"] as? String
		}
		if dict["partnerSortValueEqual"] != nil {
			partnerSortValueEqual = dict["partnerSortValueEqual"] as? Int
		}
		if dict["partnerSortValueIn"] != nil {
			partnerSortValueIn = dict["partnerSortValueIn"] as? String
		}
		if dict["partnerSortValueGreaterThanOrEqual"] != nil {
			partnerSortValueGreaterThanOrEqual = dict["partnerSortValueGreaterThanOrEqual"] as? Int
		}
		if dict["partnerSortValueLessThanOrEqual"] != nil {
			partnerSortValueLessThanOrEqual = dict["partnerSortValueLessThanOrEqual"] as? Int
		}
		if dict["forceStopEqual"] != nil {
			forceStopEqual = dict["forceStopEqual"] as? Bool
		}
		if dict["systemNameEqual"] != nil {
			systemNameEqual = dict["systemNameEqual"] as? String
		}
		if dict["systemNameIn"] != nil {
			systemNameIn = dict["systemNameIn"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(idEqual != nil) {
			dict["idEqual"] = idEqual!
		}
		if(idIn != nil) {
			dict["idIn"] = idIn!
		}
		if(cuePointTypeEqual != nil) {
			dict["cuePointTypeEqual"] = cuePointTypeEqual!.rawValue
		}
		if(cuePointTypeIn != nil) {
			dict["cuePointTypeIn"] = cuePointTypeIn!
		}
		if(statusEqual != nil) {
			dict["statusEqual"] = statusEqual!.rawValue
		}
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		if(entryIdEqual != nil) {
			dict["entryIdEqual"] = entryIdEqual!
		}
		if(entryIdIn != nil) {
			dict["entryIdIn"] = entryIdIn!
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
		if(triggeredAtGreaterThanOrEqual != nil) {
			dict["triggeredAtGreaterThanOrEqual"] = triggeredAtGreaterThanOrEqual!
		}
		if(triggeredAtLessThanOrEqual != nil) {
			dict["triggeredAtLessThanOrEqual"] = triggeredAtLessThanOrEqual!
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
		if(startTimeGreaterThanOrEqual != nil) {
			dict["startTimeGreaterThanOrEqual"] = startTimeGreaterThanOrEqual!
		}
		if(startTimeLessThanOrEqual != nil) {
			dict["startTimeLessThanOrEqual"] = startTimeLessThanOrEqual!
		}
		if(userIdEqual != nil) {
			dict["userIdEqual"] = userIdEqual!
		}
		if(userIdIn != nil) {
			dict["userIdIn"] = userIdIn!
		}
		if(partnerSortValueEqual != nil) {
			dict["partnerSortValueEqual"] = partnerSortValueEqual!
		}
		if(partnerSortValueIn != nil) {
			dict["partnerSortValueIn"] = partnerSortValueIn!
		}
		if(partnerSortValueGreaterThanOrEqual != nil) {
			dict["partnerSortValueGreaterThanOrEqual"] = partnerSortValueGreaterThanOrEqual!
		}
		if(partnerSortValueLessThanOrEqual != nil) {
			dict["partnerSortValueLessThanOrEqual"] = partnerSortValueLessThanOrEqual!
		}
		if(forceStopEqual != nil) {
			dict["forceStopEqual"] = forceStopEqual!
		}
		if(systemNameEqual != nil) {
			dict["systemNameEqual"] = systemNameEqual!
		}
		if(systemNameIn != nil) {
			dict["systemNameIn"] = systemNameIn!
		}
		return dict
	}
}

