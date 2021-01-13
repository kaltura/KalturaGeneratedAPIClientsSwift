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

open class BulkUploadResultCategory: BulkUploadResult {

	public class BulkUploadResultCategoryTokenizer: BulkUploadResult.BulkUploadResultTokenizer {
		
		public var relativePath: BaseTokenizedObject {
			get {
				return self.append("relativePath") 
			}
		}
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var referenceId: BaseTokenizedObject {
			get {
				return self.append("referenceId") 
			}
		}
		
		public var description: BaseTokenizedObject {
			get {
				return self.append("description") 
			}
		}
		
		public var tags: BaseTokenizedObject {
			get {
				return self.append("tags") 
			}
		}
		
		public var appearInList: BaseTokenizedObject {
			get {
				return self.append("appearInList") 
			}
		}
		
		public var privacy: BaseTokenizedObject {
			get {
				return self.append("privacy") 
			}
		}
		
		public var inheritanceType: BaseTokenizedObject {
			get {
				return self.append("inheritanceType") 
			}
		}
		
		public var userJoinPolicy: BaseTokenizedObject {
			get {
				return self.append("userJoinPolicy") 
			}
		}
		
		public var defaultPermissionLevel: BaseTokenizedObject {
			get {
				return self.append("defaultPermissionLevel") 
			}
		}
		
		public var owner: BaseTokenizedObject {
			get {
				return self.append("owner") 
			}
		}
		
		public var contributionPolicy: BaseTokenizedObject {
			get {
				return self.append("contributionPolicy") 
			}
		}
		
		public var partnerSortValue: BaseTokenizedObject {
			get {
				return self.append("partnerSortValue") 
			}
		}
		
		public var moderation: BaseTokenizedObject {
			get {
				return self.append("moderation") 
			}
		}
	}

	public var relativePath: String? = nil
	public var name: String? = nil
	public var referenceId: String? = nil
	public var description: String? = nil
	public var tags: String? = nil
	public var appearInList: Int? = nil
	public var privacy: Int? = nil
	public var inheritanceType: Int? = nil
	public var userJoinPolicy: Int? = nil
	public var defaultPermissionLevel: Int? = nil
	public var owner: String? = nil
	public var contributionPolicy: Int? = nil
	public var partnerSortValue: Int? = nil
	public var moderation: Bool? = nil


	public func setMultiRequestToken(relativePath: String) {
		self.dict["relativePath"] = relativePath
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(referenceId: String) {
		self.dict["referenceId"] = referenceId
	}
	
	public func setMultiRequestToken(description: String) {
		self.dict["description"] = description
	}
	
	public func setMultiRequestToken(tags: String) {
		self.dict["tags"] = tags
	}
	
	public func setMultiRequestToken(appearInList: String) {
		self.dict["appearInList"] = appearInList
	}
	
	public func setMultiRequestToken(privacy: String) {
		self.dict["privacy"] = privacy
	}
	
	public func setMultiRequestToken(inheritanceType: String) {
		self.dict["inheritanceType"] = inheritanceType
	}
	
	public func setMultiRequestToken(userJoinPolicy: String) {
		self.dict["userJoinPolicy"] = userJoinPolicy
	}
	
	public func setMultiRequestToken(defaultPermissionLevel: String) {
		self.dict["defaultPermissionLevel"] = defaultPermissionLevel
	}
	
	public func setMultiRequestToken(owner: String) {
		self.dict["owner"] = owner
	}
	
	public func setMultiRequestToken(contributionPolicy: String) {
		self.dict["contributionPolicy"] = contributionPolicy
	}
	
	public func setMultiRequestToken(partnerSortValue: String) {
		self.dict["partnerSortValue"] = partnerSortValue
	}
	
	public func setMultiRequestToken(moderation: String) {
		self.dict["moderation"] = moderation
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["relativePath"] != nil {
			relativePath = dict["relativePath"] as? String
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["referenceId"] != nil {
			referenceId = dict["referenceId"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["tags"] != nil {
			tags = dict["tags"] as? String
		}
		if dict["appearInList"] != nil {
			appearInList = dict["appearInList"] as? Int
		}
		if dict["privacy"] != nil {
			privacy = dict["privacy"] as? Int
		}
		if dict["inheritanceType"] != nil {
			inheritanceType = dict["inheritanceType"] as? Int
		}
		if dict["userJoinPolicy"] != nil {
			userJoinPolicy = dict["userJoinPolicy"] as? Int
		}
		if dict["defaultPermissionLevel"] != nil {
			defaultPermissionLevel = dict["defaultPermissionLevel"] as? Int
		}
		if dict["owner"] != nil {
			owner = dict["owner"] as? String
		}
		if dict["contributionPolicy"] != nil {
			contributionPolicy = dict["contributionPolicy"] as? Int
		}
		if dict["partnerSortValue"] != nil {
			partnerSortValue = dict["partnerSortValue"] as? Int
		}
		if dict["moderation"] != nil {
			moderation = dict["moderation"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(relativePath != nil) {
			dict["relativePath"] = relativePath!
		}
		if(name != nil) {
			dict["name"] = name!
		}
		if(referenceId != nil) {
			dict["referenceId"] = referenceId!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(tags != nil) {
			dict["tags"] = tags!
		}
		if(appearInList != nil) {
			dict["appearInList"] = appearInList!
		}
		if(privacy != nil) {
			dict["privacy"] = privacy!
		}
		if(inheritanceType != nil) {
			dict["inheritanceType"] = inheritanceType!
		}
		if(userJoinPolicy != nil) {
			dict["userJoinPolicy"] = userJoinPolicy!
		}
		if(defaultPermissionLevel != nil) {
			dict["defaultPermissionLevel"] = defaultPermissionLevel!
		}
		if(owner != nil) {
			dict["owner"] = owner!
		}
		if(contributionPolicy != nil) {
			dict["contributionPolicy"] = contributionPolicy!
		}
		if(partnerSortValue != nil) {
			dict["partnerSortValue"] = partnerSortValue!
		}
		if(moderation != nil) {
			dict["moderation"] = moderation!
		}
		return dict
	}
}

