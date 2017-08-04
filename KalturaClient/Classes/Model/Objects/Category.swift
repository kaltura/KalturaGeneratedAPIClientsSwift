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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class Category: ObjectBase {

	/**  The id of the Category  */
	public var id: Int? = nil
	public var parentId: Int? = nil
	public var depth: Int? = nil
	public var partnerId: Int? = nil
	/**  The name of the Category.    The following characters are not allowed: '&lt;',
	  '&gt;', ','  */
	public var name: String? = nil
	/**  The full name of the Category  */
	public var fullName: String? = nil
	/**  The full ids of the Category  */
	public var fullIds: String? = nil
	/**  Number of entries in this Category (including child categories)  */
	public var entriesCount: Int? = nil
	/**  Creation date as Unix timestamp (In seconds)  */
	public var createdAt: Int? = nil
	/**  Update date as Unix timestamp (In seconds)  */
	public var updatedAt: Int? = nil
	/**  Category description  */
	public var description: String? = nil
	/**  Category tags  */
	public var tags: String? = nil
	/**  If category will be returned for list action.  */
	public var appearInList: AppearInListType? = nil
	/**  defines the privacy of the entries that assigned to this category  */
	public var privacy: PrivacyType? = nil
	/**  If Category members are inherited from parent category or set manualy.  */
	public var inheritanceType: InheritanceType? = nil
	/**  Who can ask to join this category  */
	public var userJoinPolicy: UserJoinPolicyType? = nil
	/**  Default permissionLevel for new users  */
	public var defaultPermissionLevel: CategoryUserPermissionLevel? = nil
	/**  Category Owner (User id)  */
	public var owner: String? = nil
	/**  Number of entries that belong to this category directly  */
	public var directEntriesCount: Int? = nil
	/**  Category external id, controlled and managed by the partner.  */
	public var referenceId: String? = nil
	/**  who can assign entries to this category  */
	public var contributionPolicy: ContributionPolicyType? = nil
	/**  Number of active members for this category  */
	public var membersCount: Int? = nil
	/**  Number of pending members for this category  */
	public var pendingMembersCount: Int? = nil
	/**  Set privacy context for search entries that assiged to private and public
	  categories. the entries will be private if the search context is set with those
	  categories.  */
	public var privacyContext: String? = nil
	/**  comma separated parents that defines a privacyContext for search  */
	public var privacyContexts: String? = nil
	/**  Status  */
	public var status: CategoryStatus? = nil
	/**  The category id that this category inherit its members and members permission
	  (for contribution and join)  */
	public var inheritedParentId: Int? = nil
	/**  Can be used to store various partner related data as a numeric value  */
	public var partnerSortValue: Int? = nil
	/**  Can be used to store various partner related data as a string  */
	public var partnerData: String? = nil
	/**  Enable client side applications to define how to sort the category child
	  categories  */
	public var defaultOrderBy: CategoryOrderBy? = nil
	/**  Number of direct children categories  */
	public var directSubCategoriesCount: Int? = nil
	/**  Moderation to add entries to this category by users that are not of permission
	  level Manager or Moderator.  */
	public var moderation: Bool? = nil
	/**  Nunber of pending moderation entries  */
	public var pendingEntriesCount: Int? = nil
	/**  Flag indicating that the category is an aggregation category  */
	public var isAggregationCategory: Bool? = nil
	/**  List of aggregation channels the category belongs to  */
	public var aggregationCategories: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["parentId"] != nil {
			parentId = dict["parentId"] as? Int
		}
		if dict["depth"] != nil {
			depth = dict["depth"] as? Int
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["fullName"] != nil {
			fullName = dict["fullName"] as? String
		}
		if dict["fullIds"] != nil {
			fullIds = dict["fullIds"] as? String
		}
		if dict["entriesCount"] != nil {
			entriesCount = dict["entriesCount"] as? Int
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["tags"] != nil {
			tags = dict["tags"] as? String
		}
		if dict["appearInList"] != nil {
			appearInList = AppearInListType(rawValue: (dict["appearInList"] as? Int)!)
		}
		if dict["privacy"] != nil {
			privacy = PrivacyType(rawValue: (dict["privacy"] as? Int)!)
		}
		if dict["inheritanceType"] != nil {
			inheritanceType = InheritanceType(rawValue: (dict["inheritanceType"] as? Int)!)
		}
		if dict["userJoinPolicy"] != nil {
			userJoinPolicy = UserJoinPolicyType(rawValue: (dict["userJoinPolicy"] as? Int)!)
		}
		if dict["defaultPermissionLevel"] != nil {
			defaultPermissionLevel = CategoryUserPermissionLevel(rawValue: (dict["defaultPermissionLevel"] as? Int)!)
		}
		if dict["owner"] != nil {
			owner = dict["owner"] as? String
		}
		if dict["directEntriesCount"] != nil {
			directEntriesCount = dict["directEntriesCount"] as? Int
		}
		if dict["referenceId"] != nil {
			referenceId = dict["referenceId"] as? String
		}
		if dict["contributionPolicy"] != nil {
			contributionPolicy = ContributionPolicyType(rawValue: (dict["contributionPolicy"] as? Int)!)
		}
		if dict["membersCount"] != nil {
			membersCount = dict["membersCount"] as? Int
		}
		if dict["pendingMembersCount"] != nil {
			pendingMembersCount = dict["pendingMembersCount"] as? Int
		}
		if dict["privacyContext"] != nil {
			privacyContext = dict["privacyContext"] as? String
		}
		if dict["privacyContexts"] != nil {
			privacyContexts = dict["privacyContexts"] as? String
		}
		if dict["status"] != nil {
			status = CategoryStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["inheritedParentId"] != nil {
			inheritedParentId = dict["inheritedParentId"] as? Int
		}
		if dict["partnerSortValue"] != nil {
			partnerSortValue = dict["partnerSortValue"] as? Int
		}
		if dict["partnerData"] != nil {
			partnerData = dict["partnerData"] as? String
		}
		if dict["defaultOrderBy"] != nil {
			defaultOrderBy = CategoryOrderBy(rawValue: "\(dict["defaultOrderBy"]!)")
		}
		if dict["directSubCategoriesCount"] != nil {
			directSubCategoriesCount = dict["directSubCategoriesCount"] as? Int
		}
		if dict["moderation"] != nil {
			moderation = dict["moderation"] as? Bool
		}
		if dict["pendingEntriesCount"] != nil {
			pendingEntriesCount = dict["pendingEntriesCount"] as? Int
		}
		if dict["isAggregationCategory"] != nil {
			isAggregationCategory = dict["isAggregationCategory"] as? Bool
		}
		if dict["aggregationCategories"] != nil {
			aggregationCategories = dict["aggregationCategories"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(parentId != nil) {
			dict["parentId"] = parentId!
		}
		if(name != nil) {
			dict["name"] = name!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(tags != nil) {
			dict["tags"] = tags!
		}
		if(appearInList != nil) {
			dict["appearInList"] = appearInList!.rawValue
		}
		if(privacy != nil) {
			dict["privacy"] = privacy!.rawValue
		}
		if(inheritanceType != nil) {
			dict["inheritanceType"] = inheritanceType!.rawValue
		}
		if(defaultPermissionLevel != nil) {
			dict["defaultPermissionLevel"] = defaultPermissionLevel!.rawValue
		}
		if(owner != nil) {
			dict["owner"] = owner!
		}
		if(referenceId != nil) {
			dict["referenceId"] = referenceId!
		}
		if(contributionPolicy != nil) {
			dict["contributionPolicy"] = contributionPolicy!.rawValue
		}
		if(privacyContext != nil) {
			dict["privacyContext"] = privacyContext!
		}
		if(partnerSortValue != nil) {
			dict["partnerSortValue"] = partnerSortValue!
		}
		if(partnerData != nil) {
			dict["partnerData"] = partnerData!
		}
		if(defaultOrderBy != nil) {
			dict["defaultOrderBy"] = defaultOrderBy!.rawValue
		}
		if(moderation != nil) {
			dict["moderation"] = moderation!
		}
		if(isAggregationCategory != nil) {
			dict["isAggregationCategory"] = isAggregationCategory!
		}
		if(aggregationCategories != nil) {
			dict["aggregationCategories"] = aggregationCategories!
		}
		return dict
	}
}

