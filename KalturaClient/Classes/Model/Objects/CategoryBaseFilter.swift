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

open class CategoryBaseFilter: RelatedFilter {

	public class CategoryBaseFilterTokenizer: RelatedFilter.RelatedFilterTokenizer {
		
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
		
		public var parentIdEqual: BaseTokenizedObject {
			get {
				return self.append("parentIdEqual") 
			}
		}
		
		public var parentIdIn: BaseTokenizedObject {
			get {
				return self.append("parentIdIn") 
			}
		}
		
		public var depthEqual: BaseTokenizedObject {
			get {
				return self.append("depthEqual") 
			}
		}
		
		public var fullNameEqual: BaseTokenizedObject {
			get {
				return self.append("fullNameEqual") 
			}
		}
		
		public var fullNameStartsWith: BaseTokenizedObject {
			get {
				return self.append("fullNameStartsWith") 
			}
		}
		
		public var fullNameIn: BaseTokenizedObject {
			get {
				return self.append("fullNameIn") 
			}
		}
		
		public var fullIdsEqual: BaseTokenizedObject {
			get {
				return self.append("fullIdsEqual") 
			}
		}
		
		public var fullIdsStartsWith: BaseTokenizedObject {
			get {
				return self.append("fullIdsStartsWith") 
			}
		}
		
		public var fullIdsMatchOr: BaseTokenizedObject {
			get {
				return self.append("fullIdsMatchOr") 
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
		
		public var appearInListEqual: BaseTokenizedObject {
			get {
				return self.append("appearInListEqual") 
			}
		}
		
		public var privacyEqual: BaseTokenizedObject {
			get {
				return self.append("privacyEqual") 
			}
		}
		
		public var privacyIn: BaseTokenizedObject {
			get {
				return self.append("privacyIn") 
			}
		}
		
		public var inheritanceTypeEqual: BaseTokenizedObject {
			get {
				return self.append("inheritanceTypeEqual") 
			}
		}
		
		public var inheritanceTypeIn: BaseTokenizedObject {
			get {
				return self.append("inheritanceTypeIn") 
			}
		}
		
		public var referenceIdEqual: BaseTokenizedObject {
			get {
				return self.append("referenceIdEqual") 
			}
		}
		
		public var referenceIdEmpty: BaseTokenizedObject {
			get {
				return self.append("referenceIdEmpty") 
			}
		}
		
		public var contributionPolicyEqual: BaseTokenizedObject {
			get {
				return self.append("contributionPolicyEqual") 
			}
		}
		
		public var membersCountGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("membersCountGreaterThanOrEqual") 
			}
		}
		
		public var membersCountLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("membersCountLessThanOrEqual") 
			}
		}
		
		public var pendingMembersCountGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("pendingMembersCountGreaterThanOrEqual") 
			}
		}
		
		public var pendingMembersCountLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("pendingMembersCountLessThanOrEqual") 
			}
		}
		
		public var privacyContextEqual: BaseTokenizedObject {
			get {
				return self.append("privacyContextEqual") 
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
		
		public var inheritedParentIdEqual: BaseTokenizedObject {
			get {
				return self.append("inheritedParentIdEqual") 
			}
		}
		
		public var inheritedParentIdIn: BaseTokenizedObject {
			get {
				return self.append("inheritedParentIdIn") 
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
		
		public var aggregationCategoriesMultiLikeOr: BaseTokenizedObject {
			get {
				return self.append("aggregationCategoriesMultiLikeOr") 
			}
		}
		
		public var aggregationCategoriesMultiLikeAnd: BaseTokenizedObject {
			get {
				return self.append("aggregationCategoriesMultiLikeAnd") 
			}
		}
	}

	public var idEqual: Int? = nil
	public var idIn: String? = nil
	public var idNotIn: String? = nil
	public var parentIdEqual: Int? = nil
	public var parentIdIn: String? = nil
	public var depthEqual: Int? = nil
	public var fullNameEqual: String? = nil
	public var fullNameStartsWith: String? = nil
	public var fullNameIn: String? = nil
	public var fullIdsEqual: String? = nil
	public var fullIdsStartsWith: String? = nil
	public var fullIdsMatchOr: String? = nil
	public var createdAtGreaterThanOrEqual: Int? = nil
	public var createdAtLessThanOrEqual: Int? = nil
	public var updatedAtGreaterThanOrEqual: Int? = nil
	public var updatedAtLessThanOrEqual: Int? = nil
	public var tagsLike: String? = nil
	public var tagsMultiLikeOr: String? = nil
	public var tagsMultiLikeAnd: String? = nil
	public var appearInListEqual: AppearInListType? = nil
	public var privacyEqual: PrivacyType? = nil
	public var privacyIn: String? = nil
	public var inheritanceTypeEqual: InheritanceType? = nil
	public var inheritanceTypeIn: String? = nil
	public var referenceIdEqual: String? = nil
	public var referenceIdEmpty: Bool? = nil
	public var contributionPolicyEqual: ContributionPolicyType? = nil
	public var membersCountGreaterThanOrEqual: Int? = nil
	public var membersCountLessThanOrEqual: Int? = nil
	public var pendingMembersCountGreaterThanOrEqual: Int? = nil
	public var pendingMembersCountLessThanOrEqual: Int? = nil
	public var privacyContextEqual: String? = nil
	public var statusEqual: CategoryStatus? = nil
	public var statusIn: String? = nil
	public var inheritedParentIdEqual: Int? = nil
	public var inheritedParentIdIn: String? = nil
	public var partnerSortValueGreaterThanOrEqual: Int? = nil
	public var partnerSortValueLessThanOrEqual: Int? = nil
	public var aggregationCategoriesMultiLikeOr: String? = nil
	public var aggregationCategoriesMultiLikeAnd: String? = nil


	public func setMultiRequestToken(idEqual: String) {
		self.dict["idEqual"] = idEqual
	}
	
	public func setMultiRequestToken(idIn: String) {
		self.dict["idIn"] = idIn
	}
	
	public func setMultiRequestToken(idNotIn: String) {
		self.dict["idNotIn"] = idNotIn
	}
	
	public func setMultiRequestToken(parentIdEqual: String) {
		self.dict["parentIdEqual"] = parentIdEqual
	}
	
	public func setMultiRequestToken(parentIdIn: String) {
		self.dict["parentIdIn"] = parentIdIn
	}
	
	public func setMultiRequestToken(depthEqual: String) {
		self.dict["depthEqual"] = depthEqual
	}
	
	public func setMultiRequestToken(fullNameEqual: String) {
		self.dict["fullNameEqual"] = fullNameEqual
	}
	
	public func setMultiRequestToken(fullNameStartsWith: String) {
		self.dict["fullNameStartsWith"] = fullNameStartsWith
	}
	
	public func setMultiRequestToken(fullNameIn: String) {
		self.dict["fullNameIn"] = fullNameIn
	}
	
	public func setMultiRequestToken(fullIdsEqual: String) {
		self.dict["fullIdsEqual"] = fullIdsEqual
	}
	
	public func setMultiRequestToken(fullIdsStartsWith: String) {
		self.dict["fullIdsStartsWith"] = fullIdsStartsWith
	}
	
	public func setMultiRequestToken(fullIdsMatchOr: String) {
		self.dict["fullIdsMatchOr"] = fullIdsMatchOr
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
	
	public func setMultiRequestToken(tagsLike: String) {
		self.dict["tagsLike"] = tagsLike
	}
	
	public func setMultiRequestToken(tagsMultiLikeOr: String) {
		self.dict["tagsMultiLikeOr"] = tagsMultiLikeOr
	}
	
	public func setMultiRequestToken(tagsMultiLikeAnd: String) {
		self.dict["tagsMultiLikeAnd"] = tagsMultiLikeAnd
	}
	
	public func setMultiRequestToken(appearInListEqual: String) {
		self.dict["appearInListEqual"] = appearInListEqual
	}
	
	public func setMultiRequestToken(privacyEqual: String) {
		self.dict["privacyEqual"] = privacyEqual
	}
	
	public func setMultiRequestToken(privacyIn: String) {
		self.dict["privacyIn"] = privacyIn
	}
	
	public func setMultiRequestToken(inheritanceTypeEqual: String) {
		self.dict["inheritanceTypeEqual"] = inheritanceTypeEqual
	}
	
	public func setMultiRequestToken(inheritanceTypeIn: String) {
		self.dict["inheritanceTypeIn"] = inheritanceTypeIn
	}
	
	public func setMultiRequestToken(referenceIdEqual: String) {
		self.dict["referenceIdEqual"] = referenceIdEqual
	}
	
	public func setMultiRequestToken(referenceIdEmpty: String) {
		self.dict["referenceIdEmpty"] = referenceIdEmpty
	}
	
	public func setMultiRequestToken(contributionPolicyEqual: String) {
		self.dict["contributionPolicyEqual"] = contributionPolicyEqual
	}
	
	public func setMultiRequestToken(membersCountGreaterThanOrEqual: String) {
		self.dict["membersCountGreaterThanOrEqual"] = membersCountGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(membersCountLessThanOrEqual: String) {
		self.dict["membersCountLessThanOrEqual"] = membersCountLessThanOrEqual
	}
	
	public func setMultiRequestToken(pendingMembersCountGreaterThanOrEqual: String) {
		self.dict["pendingMembersCountGreaterThanOrEqual"] = pendingMembersCountGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(pendingMembersCountLessThanOrEqual: String) {
		self.dict["pendingMembersCountLessThanOrEqual"] = pendingMembersCountLessThanOrEqual
	}
	
	public func setMultiRequestToken(privacyContextEqual: String) {
		self.dict["privacyContextEqual"] = privacyContextEqual
	}
	
	public func setMultiRequestToken(statusEqual: String) {
		self.dict["statusEqual"] = statusEqual
	}
	
	public func setMultiRequestToken(statusIn: String) {
		self.dict["statusIn"] = statusIn
	}
	
	public func setMultiRequestToken(inheritedParentIdEqual: String) {
		self.dict["inheritedParentIdEqual"] = inheritedParentIdEqual
	}
	
	public func setMultiRequestToken(inheritedParentIdIn: String) {
		self.dict["inheritedParentIdIn"] = inheritedParentIdIn
	}
	
	public func setMultiRequestToken(partnerSortValueGreaterThanOrEqual: String) {
		self.dict["partnerSortValueGreaterThanOrEqual"] = partnerSortValueGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(partnerSortValueLessThanOrEqual: String) {
		self.dict["partnerSortValueLessThanOrEqual"] = partnerSortValueLessThanOrEqual
	}
	
	public func setMultiRequestToken(aggregationCategoriesMultiLikeOr: String) {
		self.dict["aggregationCategoriesMultiLikeOr"] = aggregationCategoriesMultiLikeOr
	}
	
	public func setMultiRequestToken(aggregationCategoriesMultiLikeAnd: String) {
		self.dict["aggregationCategoriesMultiLikeAnd"] = aggregationCategoriesMultiLikeAnd
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
		if dict["idNotIn"] != nil {
			idNotIn = dict["idNotIn"] as? String
		}
		if dict["parentIdEqual"] != nil {
			parentIdEqual = dict["parentIdEqual"] as? Int
		}
		if dict["parentIdIn"] != nil {
			parentIdIn = dict["parentIdIn"] as? String
		}
		if dict["depthEqual"] != nil {
			depthEqual = dict["depthEqual"] as? Int
		}
		if dict["fullNameEqual"] != nil {
			fullNameEqual = dict["fullNameEqual"] as? String
		}
		if dict["fullNameStartsWith"] != nil {
			fullNameStartsWith = dict["fullNameStartsWith"] as? String
		}
		if dict["fullNameIn"] != nil {
			fullNameIn = dict["fullNameIn"] as? String
		}
		if dict["fullIdsEqual"] != nil {
			fullIdsEqual = dict["fullIdsEqual"] as? String
		}
		if dict["fullIdsStartsWith"] != nil {
			fullIdsStartsWith = dict["fullIdsStartsWith"] as? String
		}
		if dict["fullIdsMatchOr"] != nil {
			fullIdsMatchOr = dict["fullIdsMatchOr"] as? String
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
		if dict["tagsLike"] != nil {
			tagsLike = dict["tagsLike"] as? String
		}
		if dict["tagsMultiLikeOr"] != nil {
			tagsMultiLikeOr = dict["tagsMultiLikeOr"] as? String
		}
		if dict["tagsMultiLikeAnd"] != nil {
			tagsMultiLikeAnd = dict["tagsMultiLikeAnd"] as? String
		}
		if dict["appearInListEqual"] != nil {
			appearInListEqual = AppearInListType(rawValue: (dict["appearInListEqual"] as? Int)!)
		}
		if dict["privacyEqual"] != nil {
			privacyEqual = PrivacyType(rawValue: (dict["privacyEqual"] as? Int)!)
		}
		if dict["privacyIn"] != nil {
			privacyIn = dict["privacyIn"] as? String
		}
		if dict["inheritanceTypeEqual"] != nil {
			inheritanceTypeEqual = InheritanceType(rawValue: (dict["inheritanceTypeEqual"] as? Int)!)
		}
		if dict["inheritanceTypeIn"] != nil {
			inheritanceTypeIn = dict["inheritanceTypeIn"] as? String
		}
		if dict["referenceIdEqual"] != nil {
			referenceIdEqual = dict["referenceIdEqual"] as? String
		}
		if dict["referenceIdEmpty"] != nil {
			referenceIdEmpty = dict["referenceIdEmpty"] as? Bool
		}
		if dict["contributionPolicyEqual"] != nil {
			contributionPolicyEqual = ContributionPolicyType(rawValue: (dict["contributionPolicyEqual"] as? Int)!)
		}
		if dict["membersCountGreaterThanOrEqual"] != nil {
			membersCountGreaterThanOrEqual = dict["membersCountGreaterThanOrEqual"] as? Int
		}
		if dict["membersCountLessThanOrEqual"] != nil {
			membersCountLessThanOrEqual = dict["membersCountLessThanOrEqual"] as? Int
		}
		if dict["pendingMembersCountGreaterThanOrEqual"] != nil {
			pendingMembersCountGreaterThanOrEqual = dict["pendingMembersCountGreaterThanOrEqual"] as? Int
		}
		if dict["pendingMembersCountLessThanOrEqual"] != nil {
			pendingMembersCountLessThanOrEqual = dict["pendingMembersCountLessThanOrEqual"] as? Int
		}
		if dict["privacyContextEqual"] != nil {
			privacyContextEqual = dict["privacyContextEqual"] as? String
		}
		if dict["statusEqual"] != nil {
			statusEqual = CategoryStatus(rawValue: (dict["statusEqual"] as? Int)!)
		}
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
		}
		if dict["inheritedParentIdEqual"] != nil {
			inheritedParentIdEqual = dict["inheritedParentIdEqual"] as? Int
		}
		if dict["inheritedParentIdIn"] != nil {
			inheritedParentIdIn = dict["inheritedParentIdIn"] as? String
		}
		if dict["partnerSortValueGreaterThanOrEqual"] != nil {
			partnerSortValueGreaterThanOrEqual = dict["partnerSortValueGreaterThanOrEqual"] as? Int
		}
		if dict["partnerSortValueLessThanOrEqual"] != nil {
			partnerSortValueLessThanOrEqual = dict["partnerSortValueLessThanOrEqual"] as? Int
		}
		if dict["aggregationCategoriesMultiLikeOr"] != nil {
			aggregationCategoriesMultiLikeOr = dict["aggregationCategoriesMultiLikeOr"] as? String
		}
		if dict["aggregationCategoriesMultiLikeAnd"] != nil {
			aggregationCategoriesMultiLikeAnd = dict["aggregationCategoriesMultiLikeAnd"] as? String
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
		if(parentIdEqual != nil) {
			dict["parentIdEqual"] = parentIdEqual!
		}
		if(parentIdIn != nil) {
			dict["parentIdIn"] = parentIdIn!
		}
		if(depthEqual != nil) {
			dict["depthEqual"] = depthEqual!
		}
		if(fullNameEqual != nil) {
			dict["fullNameEqual"] = fullNameEqual!
		}
		if(fullNameStartsWith != nil) {
			dict["fullNameStartsWith"] = fullNameStartsWith!
		}
		if(fullNameIn != nil) {
			dict["fullNameIn"] = fullNameIn!
		}
		if(fullIdsEqual != nil) {
			dict["fullIdsEqual"] = fullIdsEqual!
		}
		if(fullIdsStartsWith != nil) {
			dict["fullIdsStartsWith"] = fullIdsStartsWith!
		}
		if(fullIdsMatchOr != nil) {
			dict["fullIdsMatchOr"] = fullIdsMatchOr!
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
		if(tagsLike != nil) {
			dict["tagsLike"] = tagsLike!
		}
		if(tagsMultiLikeOr != nil) {
			dict["tagsMultiLikeOr"] = tagsMultiLikeOr!
		}
		if(tagsMultiLikeAnd != nil) {
			dict["tagsMultiLikeAnd"] = tagsMultiLikeAnd!
		}
		if(appearInListEqual != nil) {
			dict["appearInListEqual"] = appearInListEqual!.rawValue
		}
		if(privacyEqual != nil) {
			dict["privacyEqual"] = privacyEqual!.rawValue
		}
		if(privacyIn != nil) {
			dict["privacyIn"] = privacyIn!
		}
		if(inheritanceTypeEqual != nil) {
			dict["inheritanceTypeEqual"] = inheritanceTypeEqual!.rawValue
		}
		if(inheritanceTypeIn != nil) {
			dict["inheritanceTypeIn"] = inheritanceTypeIn!
		}
		if(referenceIdEqual != nil) {
			dict["referenceIdEqual"] = referenceIdEqual!
		}
		if(referenceIdEmpty != nil) {
			dict["referenceIdEmpty"] = referenceIdEmpty!
		}
		if(contributionPolicyEqual != nil) {
			dict["contributionPolicyEqual"] = contributionPolicyEqual!.rawValue
		}
		if(membersCountGreaterThanOrEqual != nil) {
			dict["membersCountGreaterThanOrEqual"] = membersCountGreaterThanOrEqual!
		}
		if(membersCountLessThanOrEqual != nil) {
			dict["membersCountLessThanOrEqual"] = membersCountLessThanOrEqual!
		}
		if(pendingMembersCountGreaterThanOrEqual != nil) {
			dict["pendingMembersCountGreaterThanOrEqual"] = pendingMembersCountGreaterThanOrEqual!
		}
		if(pendingMembersCountLessThanOrEqual != nil) {
			dict["pendingMembersCountLessThanOrEqual"] = pendingMembersCountLessThanOrEqual!
		}
		if(privacyContextEqual != nil) {
			dict["privacyContextEqual"] = privacyContextEqual!
		}
		if(statusEqual != nil) {
			dict["statusEqual"] = statusEqual!.rawValue
		}
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		if(inheritedParentIdEqual != nil) {
			dict["inheritedParentIdEqual"] = inheritedParentIdEqual!
		}
		if(inheritedParentIdIn != nil) {
			dict["inheritedParentIdIn"] = inheritedParentIdIn!
		}
		if(partnerSortValueGreaterThanOrEqual != nil) {
			dict["partnerSortValueGreaterThanOrEqual"] = partnerSortValueGreaterThanOrEqual!
		}
		if(partnerSortValueLessThanOrEqual != nil) {
			dict["partnerSortValueLessThanOrEqual"] = partnerSortValueLessThanOrEqual!
		}
		if(aggregationCategoriesMultiLikeOr != nil) {
			dict["aggregationCategoriesMultiLikeOr"] = aggregationCategoriesMultiLikeOr!
		}
		if(aggregationCategoriesMultiLikeAnd != nil) {
			dict["aggregationCategoriesMultiLikeAnd"] = aggregationCategoriesMultiLikeAnd!
		}
		return dict
	}
}

