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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class BaseUserBaseFilter: RelatedFilter {

	public class BaseUserBaseFilterTokenizer: RelatedFilter.RelatedFilterTokenizer {
		
		public var partnerIdEqual: BaseTokenizedObject {
			get {
				return self.append("partnerIdEqual") 
			}
		}
		
		public var screenNameLike: BaseTokenizedObject {
			get {
				return self.append("screenNameLike") 
			}
		}
		
		public var screenNameStartsWith: BaseTokenizedObject {
			get {
				return self.append("screenNameStartsWith") 
			}
		}
		
		public var emailLike: BaseTokenizedObject {
			get {
				return self.append("emailLike") 
			}
		}
		
		public var emailStartsWith: BaseTokenizedObject {
			get {
				return self.append("emailStartsWith") 
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
	}

	public var partnerIdEqual: Int? = nil
	public var screenNameLike: String? = nil
	public var screenNameStartsWith: String? = nil
	public var emailLike: String? = nil
	public var emailStartsWith: String? = nil
	public var tagsMultiLikeOr: String? = nil
	public var tagsMultiLikeAnd: String? = nil
	public var statusEqual: UserStatus? = nil
	public var statusIn: String? = nil
	public var createdAtGreaterThanOrEqual: Int? = nil
	public var createdAtLessThanOrEqual: Int? = nil
	public var updatedAtGreaterThanOrEqual: Int? = nil
	public var updatedAtLessThanOrEqual: Int? = nil


	public func setMultiRequestToken(partnerIdEqual: String) {
		self.dict["partnerIdEqual"] = partnerIdEqual
	}
	
	public func setMultiRequestToken(screenNameLike: String) {
		self.dict["screenNameLike"] = screenNameLike
	}
	
	public func setMultiRequestToken(screenNameStartsWith: String) {
		self.dict["screenNameStartsWith"] = screenNameStartsWith
	}
	
	public func setMultiRequestToken(emailLike: String) {
		self.dict["emailLike"] = emailLike
	}
	
	public func setMultiRequestToken(emailStartsWith: String) {
		self.dict["emailStartsWith"] = emailStartsWith
	}
	
	public func setMultiRequestToken(tagsMultiLikeOr: String) {
		self.dict["tagsMultiLikeOr"] = tagsMultiLikeOr
	}
	
	public func setMultiRequestToken(tagsMultiLikeAnd: String) {
		self.dict["tagsMultiLikeAnd"] = tagsMultiLikeAnd
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
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["partnerIdEqual"] != nil {
			partnerIdEqual = dict["partnerIdEqual"] as? Int
		}
		if dict["screenNameLike"] != nil {
			screenNameLike = dict["screenNameLike"] as? String
		}
		if dict["screenNameStartsWith"] != nil {
			screenNameStartsWith = dict["screenNameStartsWith"] as? String
		}
		if dict["emailLike"] != nil {
			emailLike = dict["emailLike"] as? String
		}
		if dict["emailStartsWith"] != nil {
			emailStartsWith = dict["emailStartsWith"] as? String
		}
		if dict["tagsMultiLikeOr"] != nil {
			tagsMultiLikeOr = dict["tagsMultiLikeOr"] as? String
		}
		if dict["tagsMultiLikeAnd"] != nil {
			tagsMultiLikeAnd = dict["tagsMultiLikeAnd"] as? String
		}
		if dict["statusEqual"] != nil {
			statusEqual = UserStatus(rawValue: (dict["statusEqual"] as? Int)!)
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

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(partnerIdEqual != nil) {
			dict["partnerIdEqual"] = partnerIdEqual!
		}
		if(screenNameLike != nil) {
			dict["screenNameLike"] = screenNameLike!
		}
		if(screenNameStartsWith != nil) {
			dict["screenNameStartsWith"] = screenNameStartsWith!
		}
		if(emailLike != nil) {
			dict["emailLike"] = emailLike!
		}
		if(emailStartsWith != nil) {
			dict["emailStartsWith"] = emailStartsWith!
		}
		if(tagsMultiLikeOr != nil) {
			dict["tagsMultiLikeOr"] = tagsMultiLikeOr!
		}
		if(tagsMultiLikeAnd != nil) {
			dict["tagsMultiLikeAnd"] = tagsMultiLikeAnd!
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
		return dict
	}
}

