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

open class AssetBaseFilter: RelatedFilter {

	public class AssetBaseFilterTokenizer: RelatedFilter.RelatedFilterTokenizer {
		
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
		
		public var sizeGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("sizeGreaterThanOrEqual") 
			}
		}
		
		public var sizeLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("sizeLessThanOrEqual") 
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
		
		public var deletedAtGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("deletedAtGreaterThanOrEqual") 
			}
		}
		
		public var deletedAtLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("deletedAtLessThanOrEqual") 
			}
		}
	}

	public var idEqual: String? = nil
	public var idIn: String? = nil
	public var entryIdEqual: String? = nil
	public var entryIdIn: String? = nil
	public var partnerIdEqual: Int? = nil
	public var partnerIdIn: String? = nil
	public var sizeGreaterThanOrEqual: Int? = nil
	public var sizeLessThanOrEqual: Int? = nil
	public var tagsLike: String? = nil
	public var tagsMultiLikeOr: String? = nil
	public var tagsMultiLikeAnd: String? = nil
	public var createdAtGreaterThanOrEqual: Int? = nil
	public var createdAtLessThanOrEqual: Int? = nil
	public var updatedAtGreaterThanOrEqual: Int? = nil
	public var updatedAtLessThanOrEqual: Int? = nil
	public var deletedAtGreaterThanOrEqual: Int? = nil
	public var deletedAtLessThanOrEqual: Int? = nil


	public func setMultiRequestToken(idEqual: String) {
		self.dict["idEqual"] = idEqual
	}
	
	public func setMultiRequestToken(idIn: String) {
		self.dict["idIn"] = idIn
	}
	
	public func setMultiRequestToken(entryIdEqual: String) {
		self.dict["entryIdEqual"] = entryIdEqual
	}
	
	public func setMultiRequestToken(entryIdIn: String) {
		self.dict["entryIdIn"] = entryIdIn
	}
	
	public func setMultiRequestToken(partnerIdEqual: String) {
		self.dict["partnerIdEqual"] = partnerIdEqual
	}
	
	public func setMultiRequestToken(partnerIdIn: String) {
		self.dict["partnerIdIn"] = partnerIdIn
	}
	
	public func setMultiRequestToken(sizeGreaterThanOrEqual: String) {
		self.dict["sizeGreaterThanOrEqual"] = sizeGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(sizeLessThanOrEqual: String) {
		self.dict["sizeLessThanOrEqual"] = sizeLessThanOrEqual
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
	
	public func setMultiRequestToken(deletedAtGreaterThanOrEqual: String) {
		self.dict["deletedAtGreaterThanOrEqual"] = deletedAtGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(deletedAtLessThanOrEqual: String) {
		self.dict["deletedAtLessThanOrEqual"] = deletedAtLessThanOrEqual
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
		if dict["entryIdEqual"] != nil {
			entryIdEqual = dict["entryIdEqual"] as? String
		}
		if dict["entryIdIn"] != nil {
			entryIdIn = dict["entryIdIn"] as? String
		}
		if dict["partnerIdEqual"] != nil {
			partnerIdEqual = dict["partnerIdEqual"] as? Int
		}
		if dict["partnerIdIn"] != nil {
			partnerIdIn = dict["partnerIdIn"] as? String
		}
		if dict["sizeGreaterThanOrEqual"] != nil {
			sizeGreaterThanOrEqual = dict["sizeGreaterThanOrEqual"] as? Int
		}
		if dict["sizeLessThanOrEqual"] != nil {
			sizeLessThanOrEqual = dict["sizeLessThanOrEqual"] as? Int
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
		if dict["deletedAtGreaterThanOrEqual"] != nil {
			deletedAtGreaterThanOrEqual = dict["deletedAtGreaterThanOrEqual"] as? Int
		}
		if dict["deletedAtLessThanOrEqual"] != nil {
			deletedAtLessThanOrEqual = dict["deletedAtLessThanOrEqual"] as? Int
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
		if(entryIdEqual != nil) {
			dict["entryIdEqual"] = entryIdEqual!
		}
		if(entryIdIn != nil) {
			dict["entryIdIn"] = entryIdIn!
		}
		if(partnerIdEqual != nil) {
			dict["partnerIdEqual"] = partnerIdEqual!
		}
		if(partnerIdIn != nil) {
			dict["partnerIdIn"] = partnerIdIn!
		}
		if(sizeGreaterThanOrEqual != nil) {
			dict["sizeGreaterThanOrEqual"] = sizeGreaterThanOrEqual!
		}
		if(sizeLessThanOrEqual != nil) {
			dict["sizeLessThanOrEqual"] = sizeLessThanOrEqual!
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
		if(deletedAtGreaterThanOrEqual != nil) {
			dict["deletedAtGreaterThanOrEqual"] = deletedAtGreaterThanOrEqual!
		}
		if(deletedAtLessThanOrEqual != nil) {
			dict["deletedAtLessThanOrEqual"] = deletedAtLessThanOrEqual!
		}
		return dict
	}
}

