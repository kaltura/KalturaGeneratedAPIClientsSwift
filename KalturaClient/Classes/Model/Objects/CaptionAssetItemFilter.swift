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

open class CaptionAssetItemFilter: CaptionAssetFilter {

	public class CaptionAssetItemFilterTokenizer: CaptionAssetFilter.CaptionAssetFilterTokenizer {
		
		public var contentLike: BaseTokenizedObject {
			get {
				return self.append("contentLike") 
			}
		}
		
		public var contentMultiLikeOr: BaseTokenizedObject {
			get {
				return self.append("contentMultiLikeOr") 
			}
		}
		
		public var contentMultiLikeAnd: BaseTokenizedObject {
			get {
				return self.append("contentMultiLikeAnd") 
			}
		}
		
		public var partnerDescriptionLike: BaseTokenizedObject {
			get {
				return self.append("partnerDescriptionLike") 
			}
		}
		
		public var partnerDescriptionMultiLikeOr: BaseTokenizedObject {
			get {
				return self.append("partnerDescriptionMultiLikeOr") 
			}
		}
		
		public var partnerDescriptionMultiLikeAnd: BaseTokenizedObject {
			get {
				return self.append("partnerDescriptionMultiLikeAnd") 
			}
		}
		
		public var languageEqual: BaseTokenizedObject {
			get {
				return self.append("languageEqual") 
			}
		}
		
		public var languageIn: BaseTokenizedObject {
			get {
				return self.append("languageIn") 
			}
		}
		
		public var labelEqual: BaseTokenizedObject {
			get {
				return self.append("labelEqual") 
			}
		}
		
		public var labelIn: BaseTokenizedObject {
			get {
				return self.append("labelIn") 
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
		
		public var endTimeGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("endTimeGreaterThanOrEqual") 
			}
		}
		
		public var endTimeLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("endTimeLessThanOrEqual") 
			}
		}
	}

	public var contentLike: String? = nil
	public var contentMultiLikeOr: String? = nil
	public var contentMultiLikeAnd: String? = nil
	public var partnerDescriptionLike: String? = nil
	public var partnerDescriptionMultiLikeOr: String? = nil
	public var partnerDescriptionMultiLikeAnd: String? = nil
	public var languageEqual: Language? = nil
	public var languageIn: String? = nil
	public var labelEqual: String? = nil
	public var labelIn: String? = nil
	public var startTimeGreaterThanOrEqual: Int? = nil
	public var startTimeLessThanOrEqual: Int? = nil
	public var endTimeGreaterThanOrEqual: Int? = nil
	public var endTimeLessThanOrEqual: Int? = nil


	public func setMultiRequestToken(contentLike: String) {
		self.dict["contentLike"] = contentLike
	}
	
	public func setMultiRequestToken(contentMultiLikeOr: String) {
		self.dict["contentMultiLikeOr"] = contentMultiLikeOr
	}
	
	public func setMultiRequestToken(contentMultiLikeAnd: String) {
		self.dict["contentMultiLikeAnd"] = contentMultiLikeAnd
	}
	
	public func setMultiRequestToken(partnerDescriptionLike: String) {
		self.dict["partnerDescriptionLike"] = partnerDescriptionLike
	}
	
	public func setMultiRequestToken(partnerDescriptionMultiLikeOr: String) {
		self.dict["partnerDescriptionMultiLikeOr"] = partnerDescriptionMultiLikeOr
	}
	
	public func setMultiRequestToken(partnerDescriptionMultiLikeAnd: String) {
		self.dict["partnerDescriptionMultiLikeAnd"] = partnerDescriptionMultiLikeAnd
	}
	
	public func setMultiRequestToken(languageEqual: String) {
		self.dict["languageEqual"] = languageEqual
	}
	
	public func setMultiRequestToken(languageIn: String) {
		self.dict["languageIn"] = languageIn
	}
	
	public func setMultiRequestToken(labelEqual: String) {
		self.dict["labelEqual"] = labelEqual
	}
	
	public func setMultiRequestToken(labelIn: String) {
		self.dict["labelIn"] = labelIn
	}
	
	public func setMultiRequestToken(startTimeGreaterThanOrEqual: String) {
		self.dict["startTimeGreaterThanOrEqual"] = startTimeGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(startTimeLessThanOrEqual: String) {
		self.dict["startTimeLessThanOrEqual"] = startTimeLessThanOrEqual
	}
	
	public func setMultiRequestToken(endTimeGreaterThanOrEqual: String) {
		self.dict["endTimeGreaterThanOrEqual"] = endTimeGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(endTimeLessThanOrEqual: String) {
		self.dict["endTimeLessThanOrEqual"] = endTimeLessThanOrEqual
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["contentLike"] != nil {
			contentLike = dict["contentLike"] as? String
		}
		if dict["contentMultiLikeOr"] != nil {
			contentMultiLikeOr = dict["contentMultiLikeOr"] as? String
		}
		if dict["contentMultiLikeAnd"] != nil {
			contentMultiLikeAnd = dict["contentMultiLikeAnd"] as? String
		}
		if dict["partnerDescriptionLike"] != nil {
			partnerDescriptionLike = dict["partnerDescriptionLike"] as? String
		}
		if dict["partnerDescriptionMultiLikeOr"] != nil {
			partnerDescriptionMultiLikeOr = dict["partnerDescriptionMultiLikeOr"] as? String
		}
		if dict["partnerDescriptionMultiLikeAnd"] != nil {
			partnerDescriptionMultiLikeAnd = dict["partnerDescriptionMultiLikeAnd"] as? String
		}
		if dict["languageEqual"] != nil {
			languageEqual = Language(rawValue: "\(dict["languageEqual"]!)")
		}
		if dict["languageIn"] != nil {
			languageIn = dict["languageIn"] as? String
		}
		if dict["labelEqual"] != nil {
			labelEqual = dict["labelEqual"] as? String
		}
		if dict["labelIn"] != nil {
			labelIn = dict["labelIn"] as? String
		}
		if dict["startTimeGreaterThanOrEqual"] != nil {
			startTimeGreaterThanOrEqual = dict["startTimeGreaterThanOrEqual"] as? Int
		}
		if dict["startTimeLessThanOrEqual"] != nil {
			startTimeLessThanOrEqual = dict["startTimeLessThanOrEqual"] as? Int
		}
		if dict["endTimeGreaterThanOrEqual"] != nil {
			endTimeGreaterThanOrEqual = dict["endTimeGreaterThanOrEqual"] as? Int
		}
		if dict["endTimeLessThanOrEqual"] != nil {
			endTimeLessThanOrEqual = dict["endTimeLessThanOrEqual"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(contentLike != nil) {
			dict["contentLike"] = contentLike!
		}
		if(contentMultiLikeOr != nil) {
			dict["contentMultiLikeOr"] = contentMultiLikeOr!
		}
		if(contentMultiLikeAnd != nil) {
			dict["contentMultiLikeAnd"] = contentMultiLikeAnd!
		}
		if(partnerDescriptionLike != nil) {
			dict["partnerDescriptionLike"] = partnerDescriptionLike!
		}
		if(partnerDescriptionMultiLikeOr != nil) {
			dict["partnerDescriptionMultiLikeOr"] = partnerDescriptionMultiLikeOr!
		}
		if(partnerDescriptionMultiLikeAnd != nil) {
			dict["partnerDescriptionMultiLikeAnd"] = partnerDescriptionMultiLikeAnd!
		}
		if(languageEqual != nil) {
			dict["languageEqual"] = languageEqual!.rawValue
		}
		if(languageIn != nil) {
			dict["languageIn"] = languageIn!
		}
		if(labelEqual != nil) {
			dict["labelEqual"] = labelEqual!
		}
		if(labelIn != nil) {
			dict["labelIn"] = labelIn!
		}
		if(startTimeGreaterThanOrEqual != nil) {
			dict["startTimeGreaterThanOrEqual"] = startTimeGreaterThanOrEqual!
		}
		if(startTimeLessThanOrEqual != nil) {
			dict["startTimeLessThanOrEqual"] = startTimeLessThanOrEqual!
		}
		if(endTimeGreaterThanOrEqual != nil) {
			dict["endTimeGreaterThanOrEqual"] = endTimeGreaterThanOrEqual!
		}
		if(endTimeLessThanOrEqual != nil) {
			dict["endTimeLessThanOrEqual"] = endTimeLessThanOrEqual!
		}
		return dict
	}
}

