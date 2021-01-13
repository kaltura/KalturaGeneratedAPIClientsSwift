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

open class CodeCuePointBaseFilter: CuePointFilter {

	public class CodeCuePointBaseFilterTokenizer: CuePointFilter.CuePointFilterTokenizer {
		
		public var codeLike: BaseTokenizedObject {
			get {
				return self.append("codeLike") 
			}
		}
		
		public var codeMultiLikeOr: BaseTokenizedObject {
			get {
				return self.append("codeMultiLikeOr") 
			}
		}
		
		public var codeMultiLikeAnd: BaseTokenizedObject {
			get {
				return self.append("codeMultiLikeAnd") 
			}
		}
		
		public var codeEqual: BaseTokenizedObject {
			get {
				return self.append("codeEqual") 
			}
		}
		
		public var codeIn: BaseTokenizedObject {
			get {
				return self.append("codeIn") 
			}
		}
		
		public var descriptionLike: BaseTokenizedObject {
			get {
				return self.append("descriptionLike") 
			}
		}
		
		public var descriptionMultiLikeOr: BaseTokenizedObject {
			get {
				return self.append("descriptionMultiLikeOr") 
			}
		}
		
		public var descriptionMultiLikeAnd: BaseTokenizedObject {
			get {
				return self.append("descriptionMultiLikeAnd") 
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
		
		public var durationGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("durationGreaterThanOrEqual") 
			}
		}
		
		public var durationLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("durationLessThanOrEqual") 
			}
		}
	}

	public var codeLike: String? = nil
	public var codeMultiLikeOr: String? = nil
	public var codeMultiLikeAnd: String? = nil
	public var codeEqual: String? = nil
	public var codeIn: String? = nil
	public var descriptionLike: String? = nil
	public var descriptionMultiLikeOr: String? = nil
	public var descriptionMultiLikeAnd: String? = nil
	public var endTimeGreaterThanOrEqual: Int? = nil
	public var endTimeLessThanOrEqual: Int? = nil
	public var durationGreaterThanOrEqual: Int? = nil
	public var durationLessThanOrEqual: Int? = nil


	public func setMultiRequestToken(codeLike: String) {
		self.dict["codeLike"] = codeLike
	}
	
	public func setMultiRequestToken(codeMultiLikeOr: String) {
		self.dict["codeMultiLikeOr"] = codeMultiLikeOr
	}
	
	public func setMultiRequestToken(codeMultiLikeAnd: String) {
		self.dict["codeMultiLikeAnd"] = codeMultiLikeAnd
	}
	
	public func setMultiRequestToken(codeEqual: String) {
		self.dict["codeEqual"] = codeEqual
	}
	
	public func setMultiRequestToken(codeIn: String) {
		self.dict["codeIn"] = codeIn
	}
	
	public func setMultiRequestToken(descriptionLike: String) {
		self.dict["descriptionLike"] = descriptionLike
	}
	
	public func setMultiRequestToken(descriptionMultiLikeOr: String) {
		self.dict["descriptionMultiLikeOr"] = descriptionMultiLikeOr
	}
	
	public func setMultiRequestToken(descriptionMultiLikeAnd: String) {
		self.dict["descriptionMultiLikeAnd"] = descriptionMultiLikeAnd
	}
	
	public func setMultiRequestToken(endTimeGreaterThanOrEqual: String) {
		self.dict["endTimeGreaterThanOrEqual"] = endTimeGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(endTimeLessThanOrEqual: String) {
		self.dict["endTimeLessThanOrEqual"] = endTimeLessThanOrEqual
	}
	
	public func setMultiRequestToken(durationGreaterThanOrEqual: String) {
		self.dict["durationGreaterThanOrEqual"] = durationGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(durationLessThanOrEqual: String) {
		self.dict["durationLessThanOrEqual"] = durationLessThanOrEqual
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["codeLike"] != nil {
			codeLike = dict["codeLike"] as? String
		}
		if dict["codeMultiLikeOr"] != nil {
			codeMultiLikeOr = dict["codeMultiLikeOr"] as? String
		}
		if dict["codeMultiLikeAnd"] != nil {
			codeMultiLikeAnd = dict["codeMultiLikeAnd"] as? String
		}
		if dict["codeEqual"] != nil {
			codeEqual = dict["codeEqual"] as? String
		}
		if dict["codeIn"] != nil {
			codeIn = dict["codeIn"] as? String
		}
		if dict["descriptionLike"] != nil {
			descriptionLike = dict["descriptionLike"] as? String
		}
		if dict["descriptionMultiLikeOr"] != nil {
			descriptionMultiLikeOr = dict["descriptionMultiLikeOr"] as? String
		}
		if dict["descriptionMultiLikeAnd"] != nil {
			descriptionMultiLikeAnd = dict["descriptionMultiLikeAnd"] as? String
		}
		if dict["endTimeGreaterThanOrEqual"] != nil {
			endTimeGreaterThanOrEqual = dict["endTimeGreaterThanOrEqual"] as? Int
		}
		if dict["endTimeLessThanOrEqual"] != nil {
			endTimeLessThanOrEqual = dict["endTimeLessThanOrEqual"] as? Int
		}
		if dict["durationGreaterThanOrEqual"] != nil {
			durationGreaterThanOrEqual = dict["durationGreaterThanOrEqual"] as? Int
		}
		if dict["durationLessThanOrEqual"] != nil {
			durationLessThanOrEqual = dict["durationLessThanOrEqual"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(codeLike != nil) {
			dict["codeLike"] = codeLike!
		}
		if(codeMultiLikeOr != nil) {
			dict["codeMultiLikeOr"] = codeMultiLikeOr!
		}
		if(codeMultiLikeAnd != nil) {
			dict["codeMultiLikeAnd"] = codeMultiLikeAnd!
		}
		if(codeEqual != nil) {
			dict["codeEqual"] = codeEqual!
		}
		if(codeIn != nil) {
			dict["codeIn"] = codeIn!
		}
		if(descriptionLike != nil) {
			dict["descriptionLike"] = descriptionLike!
		}
		if(descriptionMultiLikeOr != nil) {
			dict["descriptionMultiLikeOr"] = descriptionMultiLikeOr!
		}
		if(descriptionMultiLikeAnd != nil) {
			dict["descriptionMultiLikeAnd"] = descriptionMultiLikeAnd!
		}
		if(endTimeGreaterThanOrEqual != nil) {
			dict["endTimeGreaterThanOrEqual"] = endTimeGreaterThanOrEqual!
		}
		if(endTimeLessThanOrEqual != nil) {
			dict["endTimeLessThanOrEqual"] = endTimeLessThanOrEqual!
		}
		if(durationGreaterThanOrEqual != nil) {
			dict["durationGreaterThanOrEqual"] = durationGreaterThanOrEqual!
		}
		if(durationLessThanOrEqual != nil) {
			dict["durationLessThanOrEqual"] = durationLessThanOrEqual!
		}
		return dict
	}
}

