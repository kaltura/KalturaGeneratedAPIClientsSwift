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
// Copyright (C) 2006-2023  Kaltura Inc.
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

open class PermissionBaseFilter: RelatedFilter {

	public class PermissionBaseFilterTokenizer: RelatedFilter.RelatedFilterTokenizer {
		
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
		
		public var friendlyNameLike: BaseTokenizedObject {
			get {
				return self.append("friendlyNameLike") 
			}
		}
		
		public var descriptionLike: BaseTokenizedObject {
			get {
				return self.append("descriptionLike") 
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
		
		public var dependsOnPermissionNamesMultiLikeOr: BaseTokenizedObject {
			get {
				return self.append("dependsOnPermissionNamesMultiLikeOr") 
			}
		}
		
		public var dependsOnPermissionNamesMultiLikeAnd: BaseTokenizedObject {
			get {
				return self.append("dependsOnPermissionNamesMultiLikeAnd") 
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
	}

	public var idEqual: Int? = nil
	public var idIn: String? = nil
	public var typeEqual: PermissionType? = nil
	public var typeIn: String? = nil
	public var nameEqual: String? = nil
	public var nameIn: String? = nil
	public var friendlyNameLike: String? = nil
	public var descriptionLike: String? = nil
	public var statusEqual: PermissionStatus? = nil
	public var statusIn: String? = nil
	public var partnerIdEqual: Int? = nil
	public var partnerIdIn: String? = nil
	public var dependsOnPermissionNamesMultiLikeOr: String? = nil
	public var dependsOnPermissionNamesMultiLikeAnd: String? = nil
	public var tagsMultiLikeOr: String? = nil
	public var tagsMultiLikeAnd: String? = nil
	public var createdAtGreaterThanOrEqual: Int? = nil
	public var createdAtLessThanOrEqual: Int? = nil
	public var updatedAtGreaterThanOrEqual: Int? = nil
	public var updatedAtLessThanOrEqual: Int? = nil


	public func setMultiRequestToken(idEqual: String) {
		self.dict["idEqual"] = idEqual
	}
	
	public func setMultiRequestToken(idIn: String) {
		self.dict["idIn"] = idIn
	}
	
	public func setMultiRequestToken(typeEqual: String) {
		self.dict["typeEqual"] = typeEqual
	}
	
	public func setMultiRequestToken(typeIn: String) {
		self.dict["typeIn"] = typeIn
	}
	
	public func setMultiRequestToken(nameEqual: String) {
		self.dict["nameEqual"] = nameEqual
	}
	
	public func setMultiRequestToken(nameIn: String) {
		self.dict["nameIn"] = nameIn
	}
	
	public func setMultiRequestToken(friendlyNameLike: String) {
		self.dict["friendlyNameLike"] = friendlyNameLike
	}
	
	public func setMultiRequestToken(descriptionLike: String) {
		self.dict["descriptionLike"] = descriptionLike
	}
	
	public func setMultiRequestToken(statusEqual: String) {
		self.dict["statusEqual"] = statusEqual
	}
	
	public func setMultiRequestToken(statusIn: String) {
		self.dict["statusIn"] = statusIn
	}
	
	public func setMultiRequestToken(partnerIdEqual: String) {
		self.dict["partnerIdEqual"] = partnerIdEqual
	}
	
	public func setMultiRequestToken(partnerIdIn: String) {
		self.dict["partnerIdIn"] = partnerIdIn
	}
	
	public func setMultiRequestToken(dependsOnPermissionNamesMultiLikeOr: String) {
		self.dict["dependsOnPermissionNamesMultiLikeOr"] = dependsOnPermissionNamesMultiLikeOr
	}
	
	public func setMultiRequestToken(dependsOnPermissionNamesMultiLikeAnd: String) {
		self.dict["dependsOnPermissionNamesMultiLikeAnd"] = dependsOnPermissionNamesMultiLikeAnd
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
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["idEqual"] != nil {
			idEqual = dict["idEqual"] as? Int
		}
		if dict["idIn"] != nil {
			idIn = dict["idIn"] as? String
		}
		if dict["typeEqual"] != nil {
			typeEqual = PermissionType(rawValue: (dict["typeEqual"] as? Int)!)
		}
		if dict["typeIn"] != nil {
			typeIn = dict["typeIn"] as? String
		}
		if dict["nameEqual"] != nil {
			nameEqual = dict["nameEqual"] as? String
		}
		if dict["nameIn"] != nil {
			nameIn = dict["nameIn"] as? String
		}
		if dict["friendlyNameLike"] != nil {
			friendlyNameLike = dict["friendlyNameLike"] as? String
		}
		if dict["descriptionLike"] != nil {
			descriptionLike = dict["descriptionLike"] as? String
		}
		if dict["statusEqual"] != nil {
			statusEqual = PermissionStatus(rawValue: (dict["statusEqual"] as? Int)!)
		}
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
		}
		if dict["partnerIdEqual"] != nil {
			partnerIdEqual = dict["partnerIdEqual"] as? Int
		}
		if dict["partnerIdIn"] != nil {
			partnerIdIn = dict["partnerIdIn"] as? String
		}
		if dict["dependsOnPermissionNamesMultiLikeOr"] != nil {
			dependsOnPermissionNamesMultiLikeOr = dict["dependsOnPermissionNamesMultiLikeOr"] as? String
		}
		if dict["dependsOnPermissionNamesMultiLikeAnd"] != nil {
			dependsOnPermissionNamesMultiLikeAnd = dict["dependsOnPermissionNamesMultiLikeAnd"] as? String
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

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(idEqual != nil) {
			dict["idEqual"] = idEqual!
		}
		if(idIn != nil) {
			dict["idIn"] = idIn!
		}
		if(typeEqual != nil) {
			dict["typeEqual"] = typeEqual!.rawValue
		}
		if(typeIn != nil) {
			dict["typeIn"] = typeIn!
		}
		if(nameEqual != nil) {
			dict["nameEqual"] = nameEqual!
		}
		if(nameIn != nil) {
			dict["nameIn"] = nameIn!
		}
		if(friendlyNameLike != nil) {
			dict["friendlyNameLike"] = friendlyNameLike!
		}
		if(descriptionLike != nil) {
			dict["descriptionLike"] = descriptionLike!
		}
		if(statusEqual != nil) {
			dict["statusEqual"] = statusEqual!.rawValue
		}
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		if(partnerIdEqual != nil) {
			dict["partnerIdEqual"] = partnerIdEqual!
		}
		if(partnerIdIn != nil) {
			dict["partnerIdIn"] = partnerIdIn!
		}
		if(dependsOnPermissionNamesMultiLikeOr != nil) {
			dict["dependsOnPermissionNamesMultiLikeOr"] = dependsOnPermissionNamesMultiLikeOr!
		}
		if(dependsOnPermissionNamesMultiLikeAnd != nil) {
			dict["dependsOnPermissionNamesMultiLikeAnd"] = dependsOnPermissionNamesMultiLikeAnd!
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
		return dict
	}
}

