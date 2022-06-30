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

open class AnnotationBaseFilter: CuePointFilter {

	public class AnnotationBaseFilterTokenizer: CuePointFilter.CuePointFilterTokenizer {
		
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
		
		public var textLike: BaseTokenizedObject {
			get {
				return self.append("textLike") 
			}
		}
		
		public var textMultiLikeOr: BaseTokenizedObject {
			get {
				return self.append("textMultiLikeOr") 
			}
		}
		
		public var textMultiLikeAnd: BaseTokenizedObject {
			get {
				return self.append("textMultiLikeAnd") 
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
		
		public var isPublicEqual: BaseTokenizedObject {
			get {
				return self.append("isPublicEqual") 
			}
		}
	}

	public var parentIdEqual: String? = nil
	public var parentIdIn: String? = nil
	public var textLike: String? = nil
	public var textMultiLikeOr: String? = nil
	public var textMultiLikeAnd: String? = nil
	public var endTimeGreaterThanOrEqual: Int? = nil
	public var endTimeLessThanOrEqual: Int? = nil
	public var durationGreaterThanOrEqual: Int? = nil
	public var durationLessThanOrEqual: Int? = nil
	public var isPublicEqual: Bool? = nil


	public func setMultiRequestToken(parentIdEqual: String) {
		self.dict["parentIdEqual"] = parentIdEqual
	}
	
	public func setMultiRequestToken(parentIdIn: String) {
		self.dict["parentIdIn"] = parentIdIn
	}
	
	public func setMultiRequestToken(textLike: String) {
		self.dict["textLike"] = textLike
	}
	
	public func setMultiRequestToken(textMultiLikeOr: String) {
		self.dict["textMultiLikeOr"] = textMultiLikeOr
	}
	
	public func setMultiRequestToken(textMultiLikeAnd: String) {
		self.dict["textMultiLikeAnd"] = textMultiLikeAnd
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
	
	public func setMultiRequestToken(isPublicEqual: String) {
		self.dict["isPublicEqual"] = isPublicEqual
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["parentIdEqual"] != nil {
			parentIdEqual = dict["parentIdEqual"] as? String
		}
		if dict["parentIdIn"] != nil {
			parentIdIn = dict["parentIdIn"] as? String
		}
		if dict["textLike"] != nil {
			textLike = dict["textLike"] as? String
		}
		if dict["textMultiLikeOr"] != nil {
			textMultiLikeOr = dict["textMultiLikeOr"] as? String
		}
		if dict["textMultiLikeAnd"] != nil {
			textMultiLikeAnd = dict["textMultiLikeAnd"] as? String
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
		if dict["isPublicEqual"] != nil {
			isPublicEqual = dict["isPublicEqual"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(parentIdEqual != nil) {
			dict["parentIdEqual"] = parentIdEqual!
		}
		if(parentIdIn != nil) {
			dict["parentIdIn"] = parentIdIn!
		}
		if(textLike != nil) {
			dict["textLike"] = textLike!
		}
		if(textMultiLikeOr != nil) {
			dict["textMultiLikeOr"] = textMultiLikeOr!
		}
		if(textMultiLikeAnd != nil) {
			dict["textMultiLikeAnd"] = textMultiLikeAnd!
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
		if(isPublicEqual != nil) {
			dict["isPublicEqual"] = isPublicEqual!
		}
		return dict
	}
}

