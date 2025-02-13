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

open class BaseEntryFilter: BaseEntryBaseFilter {

	public class BaseEntryFilterTokenizer: BaseEntryBaseFilter.BaseEntryBaseFilterTokenizer {
		
		public var freeText: BaseTokenizedObject {
			get {
				return self.append("freeText") 
			}
		}
		
		public var excludedFreeTextGroups: BaseTokenizedObject {
			get {
				return self.append("excludedFreeTextGroups") 
			}
		}
		
		public var descriptionLike: BaseTokenizedObject {
			get {
				return self.append("descriptionLike") 
			}
		}
		
		public var isRoot: BaseTokenizedObject {
			get {
				return self.append("isRoot") 
			}
		}
		
		public var categoriesFullNameIn: BaseTokenizedObject {
			get {
				return self.append("categoriesFullNameIn") 
			}
		}
		
		public var categoryAncestorIdIn: BaseTokenizedObject {
			get {
				return self.append("categoryAncestorIdIn") 
			}
		}
		
		public var redirectFromEntryId: BaseTokenizedObject {
			get {
				return self.append("redirectFromEntryId") 
			}
		}
		
		public var conversionProfileIdEqual: BaseTokenizedObject {
			get {
				return self.append("conversionProfileIdEqual") 
			}
		}
	}

	public var freeText: String? = nil
	public var excludedFreeTextGroups: String? = nil
	public var descriptionLike: String? = nil
	public var isRoot: Bool? = nil
	public var categoriesFullNameIn: String? = nil
	/**  All entries within this categoy or in child categories  */
	public var categoryAncestorIdIn: String? = nil
	/**  The id of the original entry  */
	public var redirectFromEntryId: String? = nil
	public var conversionProfileIdEqual: Int? = nil


	public func setMultiRequestToken(freeText: String) {
		self.dict["freeText"] = freeText
	}
	
	public func setMultiRequestToken(excludedFreeTextGroups: String) {
		self.dict["excludedFreeTextGroups"] = excludedFreeTextGroups
	}
	
	public func setMultiRequestToken(descriptionLike: String) {
		self.dict["descriptionLike"] = descriptionLike
	}
	
	public func setMultiRequestToken(isRoot: String) {
		self.dict["isRoot"] = isRoot
	}
	
	public func setMultiRequestToken(categoriesFullNameIn: String) {
		self.dict["categoriesFullNameIn"] = categoriesFullNameIn
	}
	
	public func setMultiRequestToken(categoryAncestorIdIn: String) {
		self.dict["categoryAncestorIdIn"] = categoryAncestorIdIn
	}
	
	public func setMultiRequestToken(redirectFromEntryId: String) {
		self.dict["redirectFromEntryId"] = redirectFromEntryId
	}
	
	public func setMultiRequestToken(conversionProfileIdEqual: String) {
		self.dict["conversionProfileIdEqual"] = conversionProfileIdEqual
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["freeText"] != nil {
			freeText = dict["freeText"] as? String
		}
		if dict["excludedFreeTextGroups"] != nil {
			excludedFreeTextGroups = dict["excludedFreeTextGroups"] as? String
		}
		if dict["descriptionLike"] != nil {
			descriptionLike = dict["descriptionLike"] as? String
		}
		if dict["isRoot"] != nil {
			isRoot = dict["isRoot"] as? Bool
		}
		if dict["categoriesFullNameIn"] != nil {
			categoriesFullNameIn = dict["categoriesFullNameIn"] as? String
		}
		if dict["categoryAncestorIdIn"] != nil {
			categoryAncestorIdIn = dict["categoryAncestorIdIn"] as? String
		}
		if dict["redirectFromEntryId"] != nil {
			redirectFromEntryId = dict["redirectFromEntryId"] as? String
		}
		if dict["conversionProfileIdEqual"] != nil {
			conversionProfileIdEqual = dict["conversionProfileIdEqual"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(freeText != nil) {
			dict["freeText"] = freeText!
		}
		if(excludedFreeTextGroups != nil) {
			dict["excludedFreeTextGroups"] = excludedFreeTextGroups!
		}
		if(descriptionLike != nil) {
			dict["descriptionLike"] = descriptionLike!
		}
		if(isRoot != nil) {
			dict["isRoot"] = isRoot!
		}
		if(categoriesFullNameIn != nil) {
			dict["categoriesFullNameIn"] = categoriesFullNameIn!
		}
		if(categoryAncestorIdIn != nil) {
			dict["categoryAncestorIdIn"] = categoryAncestorIdIn!
		}
		if(redirectFromEntryId != nil) {
			dict["redirectFromEntryId"] = redirectFromEntryId!
		}
		if(conversionProfileIdEqual != nil) {
			dict["conversionProfileIdEqual"] = conversionProfileIdEqual!
		}
		return dict
	}
}

