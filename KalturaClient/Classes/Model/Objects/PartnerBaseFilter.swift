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

open class PartnerBaseFilter: Filter {

	public class PartnerBaseFilterTokenizer: Filter.FilterTokenizer {
		
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
		
		public var idNotIn: BaseTokenizedObject {
			get {
				return self.append("idNotIn") 
			}
		}
		
		public var nameLike: BaseTokenizedObject {
			get {
				return self.append("nameLike") 
			}
		}
		
		public var nameMultiLikeOr: BaseTokenizedObject {
			get {
				return self.append("nameMultiLikeOr") 
			}
		}
		
		public var nameMultiLikeAnd: BaseTokenizedObject {
			get {
				return self.append("nameMultiLikeAnd") 
			}
		}
		
		public var nameEqual: BaseTokenizedObject {
			get {
				return self.append("nameEqual") 
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
		
		public var partnerPackageEqual: BaseTokenizedObject {
			get {
				return self.append("partnerPackageEqual") 
			}
		}
		
		public var partnerPackageGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("partnerPackageGreaterThanOrEqual") 
			}
		}
		
		public var partnerPackageLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("partnerPackageLessThanOrEqual") 
			}
		}
		
		public var partnerPackageIn: BaseTokenizedObject {
			get {
				return self.append("partnerPackageIn") 
			}
		}
		
		public var partnerGroupTypeEqual: BaseTokenizedObject {
			get {
				return self.append("partnerGroupTypeEqual") 
			}
		}
		
		public var partnerNameDescriptionWebsiteAdminNameAdminEmailLike: BaseTokenizedObject {
			get {
				return self.append("partnerNameDescriptionWebsiteAdminNameAdminEmailLike") 
			}
		}
		
		public var createdAtGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("createdAtGreaterThanOrEqual") 
			}
		}
		
		public var idGreaterThan: BaseTokenizedObject {
			get {
				return self.append("idGreaterThan") 
			}
		}
		
		public var monitorUsageEqual: BaseTokenizedObject {
			get {
				return self.append("monitorUsageEqual") 
			}
		}
	}

	public var idEqual: Int? = nil
	public var idIn: String? = nil
	public var idNotIn: String? = nil
	public var nameLike: String? = nil
	public var nameMultiLikeOr: String? = nil
	public var nameMultiLikeAnd: String? = nil
	public var nameEqual: String? = nil
	public var statusEqual: PartnerStatus? = nil
	public var statusIn: String? = nil
	public var partnerPackageEqual: Int? = nil
	public var partnerPackageGreaterThanOrEqual: Int? = nil
	public var partnerPackageLessThanOrEqual: Int? = nil
	public var partnerPackageIn: String? = nil
	public var partnerGroupTypeEqual: PartnerGroupType? = nil
	public var partnerNameDescriptionWebsiteAdminNameAdminEmailLike: String? = nil
	public var createdAtGreaterThanOrEqual: Int? = nil
	public var idGreaterThan: Int? = nil
	public var monitorUsageEqual: Int? = nil


	public func setMultiRequestToken(idEqual: String) {
		self.dict["idEqual"] = idEqual
	}
	
	public func setMultiRequestToken(idIn: String) {
		self.dict["idIn"] = idIn
	}
	
	public func setMultiRequestToken(idNotIn: String) {
		self.dict["idNotIn"] = idNotIn
	}
	
	public func setMultiRequestToken(nameLike: String) {
		self.dict["nameLike"] = nameLike
	}
	
	public func setMultiRequestToken(nameMultiLikeOr: String) {
		self.dict["nameMultiLikeOr"] = nameMultiLikeOr
	}
	
	public func setMultiRequestToken(nameMultiLikeAnd: String) {
		self.dict["nameMultiLikeAnd"] = nameMultiLikeAnd
	}
	
	public func setMultiRequestToken(nameEqual: String) {
		self.dict["nameEqual"] = nameEqual
	}
	
	public func setMultiRequestToken(statusEqual: String) {
		self.dict["statusEqual"] = statusEqual
	}
	
	public func setMultiRequestToken(statusIn: String) {
		self.dict["statusIn"] = statusIn
	}
	
	public func setMultiRequestToken(partnerPackageEqual: String) {
		self.dict["partnerPackageEqual"] = partnerPackageEqual
	}
	
	public func setMultiRequestToken(partnerPackageGreaterThanOrEqual: String) {
		self.dict["partnerPackageGreaterThanOrEqual"] = partnerPackageGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(partnerPackageLessThanOrEqual: String) {
		self.dict["partnerPackageLessThanOrEqual"] = partnerPackageLessThanOrEqual
	}
	
	public func setMultiRequestToken(partnerPackageIn: String) {
		self.dict["partnerPackageIn"] = partnerPackageIn
	}
	
	public func setMultiRequestToken(partnerGroupTypeEqual: String) {
		self.dict["partnerGroupTypeEqual"] = partnerGroupTypeEqual
	}
	
	public func setMultiRequestToken(partnerNameDescriptionWebsiteAdminNameAdminEmailLike: String) {
		self.dict["partnerNameDescriptionWebsiteAdminNameAdminEmailLike"] = partnerNameDescriptionWebsiteAdminNameAdminEmailLike
	}
	
	public func setMultiRequestToken(createdAtGreaterThanOrEqual: String) {
		self.dict["createdAtGreaterThanOrEqual"] = createdAtGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(idGreaterThan: String) {
		self.dict["idGreaterThan"] = idGreaterThan
	}
	
	public func setMultiRequestToken(monitorUsageEqual: String) {
		self.dict["monitorUsageEqual"] = monitorUsageEqual
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
		if dict["idNotIn"] != nil {
			idNotIn = dict["idNotIn"] as? String
		}
		if dict["nameLike"] != nil {
			nameLike = dict["nameLike"] as? String
		}
		if dict["nameMultiLikeOr"] != nil {
			nameMultiLikeOr = dict["nameMultiLikeOr"] as? String
		}
		if dict["nameMultiLikeAnd"] != nil {
			nameMultiLikeAnd = dict["nameMultiLikeAnd"] as? String
		}
		if dict["nameEqual"] != nil {
			nameEqual = dict["nameEqual"] as? String
		}
		if dict["statusEqual"] != nil {
			statusEqual = PartnerStatus(rawValue: (dict["statusEqual"] as? Int)!)
		}
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
		}
		if dict["partnerPackageEqual"] != nil {
			partnerPackageEqual = dict["partnerPackageEqual"] as? Int
		}
		if dict["partnerPackageGreaterThanOrEqual"] != nil {
			partnerPackageGreaterThanOrEqual = dict["partnerPackageGreaterThanOrEqual"] as? Int
		}
		if dict["partnerPackageLessThanOrEqual"] != nil {
			partnerPackageLessThanOrEqual = dict["partnerPackageLessThanOrEqual"] as? Int
		}
		if dict["partnerPackageIn"] != nil {
			partnerPackageIn = dict["partnerPackageIn"] as? String
		}
		if dict["partnerGroupTypeEqual"] != nil {
			partnerGroupTypeEqual = PartnerGroupType(rawValue: (dict["partnerGroupTypeEqual"] as? Int)!)
		}
		if dict["partnerNameDescriptionWebsiteAdminNameAdminEmailLike"] != nil {
			partnerNameDescriptionWebsiteAdminNameAdminEmailLike = dict["partnerNameDescriptionWebsiteAdminNameAdminEmailLike"] as? String
		}
		if dict["createdAtGreaterThanOrEqual"] != nil {
			createdAtGreaterThanOrEqual = dict["createdAtGreaterThanOrEqual"] as? Int
		}
		if dict["idGreaterThan"] != nil {
			idGreaterThan = dict["idGreaterThan"] as? Int
		}
		if dict["monitorUsageEqual"] != nil {
			monitorUsageEqual = dict["monitorUsageEqual"] as? Int
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
		if(idNotIn != nil) {
			dict["idNotIn"] = idNotIn!
		}
		if(nameLike != nil) {
			dict["nameLike"] = nameLike!
		}
		if(nameMultiLikeOr != nil) {
			dict["nameMultiLikeOr"] = nameMultiLikeOr!
		}
		if(nameMultiLikeAnd != nil) {
			dict["nameMultiLikeAnd"] = nameMultiLikeAnd!
		}
		if(nameEqual != nil) {
			dict["nameEqual"] = nameEqual!
		}
		if(statusEqual != nil) {
			dict["statusEqual"] = statusEqual!.rawValue
		}
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		if(partnerPackageEqual != nil) {
			dict["partnerPackageEqual"] = partnerPackageEqual!
		}
		if(partnerPackageGreaterThanOrEqual != nil) {
			dict["partnerPackageGreaterThanOrEqual"] = partnerPackageGreaterThanOrEqual!
		}
		if(partnerPackageLessThanOrEqual != nil) {
			dict["partnerPackageLessThanOrEqual"] = partnerPackageLessThanOrEqual!
		}
		if(partnerPackageIn != nil) {
			dict["partnerPackageIn"] = partnerPackageIn!
		}
		if(partnerGroupTypeEqual != nil) {
			dict["partnerGroupTypeEqual"] = partnerGroupTypeEqual!.rawValue
		}
		if(partnerNameDescriptionWebsiteAdminNameAdminEmailLike != nil) {
			dict["partnerNameDescriptionWebsiteAdminNameAdminEmailLike"] = partnerNameDescriptionWebsiteAdminNameAdminEmailLike!
		}
		if(createdAtGreaterThanOrEqual != nil) {
			dict["createdAtGreaterThanOrEqual"] = createdAtGreaterThanOrEqual!
		}
		if(idGreaterThan != nil) {
			dict["idGreaterThan"] = idGreaterThan!
		}
		if(monitorUsageEqual != nil) {
			dict["monitorUsageEqual"] = monitorUsageEqual!
		}
		return dict
	}
}

