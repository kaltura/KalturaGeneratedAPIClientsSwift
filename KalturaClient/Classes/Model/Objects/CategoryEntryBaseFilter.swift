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

open class CategoryEntryBaseFilter: RelatedFilter {

	public class CategoryEntryBaseFilterTokenizer: RelatedFilter.RelatedFilterTokenizer {
		
		public var categoryIdEqual: BaseTokenizedObject {
			get {
				return self.append("categoryIdEqual") 
			}
		}
		
		public var categoryIdIn: BaseTokenizedObject {
			get {
				return self.append("categoryIdIn") 
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
		
		public var categoryFullIdsStartsWith: BaseTokenizedObject {
			get {
				return self.append("categoryFullIdsStartsWith") 
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
		
		public var creatorUserIdEqual: BaseTokenizedObject {
			get {
				return self.append("creatorUserIdEqual") 
			}
		}
		
		public var creatorUserIdIn: BaseTokenizedObject {
			get {
				return self.append("creatorUserIdIn") 
			}
		}
	}

	public var categoryIdEqual: Int? = nil
	public var categoryIdIn: String? = nil
	public var entryIdEqual: String? = nil
	public var entryIdIn: String? = nil
	public var createdAtGreaterThanOrEqual: Int? = nil
	public var createdAtLessThanOrEqual: Int? = nil
	public var categoryFullIdsStartsWith: String? = nil
	public var statusEqual: CategoryEntryStatus? = nil
	public var statusIn: String? = nil
	public var creatorUserIdEqual: String? = nil
	public var creatorUserIdIn: String? = nil


	public func setMultiRequestToken(categoryIdEqual: String) {
		self.dict["categoryIdEqual"] = categoryIdEqual
	}
	
	public func setMultiRequestToken(categoryIdIn: String) {
		self.dict["categoryIdIn"] = categoryIdIn
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
	
	public func setMultiRequestToken(categoryFullIdsStartsWith: String) {
		self.dict["categoryFullIdsStartsWith"] = categoryFullIdsStartsWith
	}
	
	public func setMultiRequestToken(statusEqual: String) {
		self.dict["statusEqual"] = statusEqual
	}
	
	public func setMultiRequestToken(statusIn: String) {
		self.dict["statusIn"] = statusIn
	}
	
	public func setMultiRequestToken(creatorUserIdEqual: String) {
		self.dict["creatorUserIdEqual"] = creatorUserIdEqual
	}
	
	public func setMultiRequestToken(creatorUserIdIn: String) {
		self.dict["creatorUserIdIn"] = creatorUserIdIn
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["categoryIdEqual"] != nil {
			categoryIdEqual = dict["categoryIdEqual"] as? Int
		}
		if dict["categoryIdIn"] != nil {
			categoryIdIn = dict["categoryIdIn"] as? String
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
		if dict["categoryFullIdsStartsWith"] != nil {
			categoryFullIdsStartsWith = dict["categoryFullIdsStartsWith"] as? String
		}
		if dict["statusEqual"] != nil {
			statusEqual = CategoryEntryStatus(rawValue: (dict["statusEqual"] as? Int)!)
		}
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
		}
		if dict["creatorUserIdEqual"] != nil {
			creatorUserIdEqual = dict["creatorUserIdEqual"] as? String
		}
		if dict["creatorUserIdIn"] != nil {
			creatorUserIdIn = dict["creatorUserIdIn"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(categoryIdEqual != nil) {
			dict["categoryIdEqual"] = categoryIdEqual!
		}
		if(categoryIdIn != nil) {
			dict["categoryIdIn"] = categoryIdIn!
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
		if(categoryFullIdsStartsWith != nil) {
			dict["categoryFullIdsStartsWith"] = categoryFullIdsStartsWith!
		}
		if(statusEqual != nil) {
			dict["statusEqual"] = statusEqual!.rawValue
		}
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		if(creatorUserIdEqual != nil) {
			dict["creatorUserIdEqual"] = creatorUserIdEqual!
		}
		if(creatorUserIdIn != nil) {
			dict["creatorUserIdIn"] = creatorUserIdIn!
		}
		return dict
	}
}

