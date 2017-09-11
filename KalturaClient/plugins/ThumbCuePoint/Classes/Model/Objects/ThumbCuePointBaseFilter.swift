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
 * This class was generated using generate.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class ThumbCuePointBaseFilter: CuePointFilter {

	public class ThumbCuePointBaseFilterTokenizer: CuePointFilter.CuePointFilterTokenizer {
		
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
		
		public var titleLike: BaseTokenizedObject {
			get {
				return self.append("titleLike") 
			}
		}
		
		public var titleMultiLikeOr: BaseTokenizedObject {
			get {
				return self.append("titleMultiLikeOr") 
			}
		}
		
		public var titleMultiLikeAnd: BaseTokenizedObject {
			get {
				return self.append("titleMultiLikeAnd") 
			}
		}
		
		public var subTypeEqual: BaseTokenizedObject {
			get {
				return self.append("subTypeEqual") 
			}
		}
		
		public var subTypeIn: BaseTokenizedObject {
			get {
				return self.append("subTypeIn") 
			}
		}
	}

	public var descriptionLike: String? = nil
	public var descriptionMultiLikeOr: String? = nil
	public var descriptionMultiLikeAnd: String? = nil
	public var titleLike: String? = nil
	public var titleMultiLikeOr: String? = nil
	public var titleMultiLikeAnd: String? = nil
	public var subTypeEqual: ThumbCuePointSubType? = nil
	public var subTypeIn: String? = nil


	public func setMultiRequestToken(descriptionLike: String) {
		self.dict["descriptionLike"] = descriptionLike
	}
	
	public func setMultiRequestToken(descriptionMultiLikeOr: String) {
		self.dict["descriptionMultiLikeOr"] = descriptionMultiLikeOr
	}
	
	public func setMultiRequestToken(descriptionMultiLikeAnd: String) {
		self.dict["descriptionMultiLikeAnd"] = descriptionMultiLikeAnd
	}
	
	public func setMultiRequestToken(titleLike: String) {
		self.dict["titleLike"] = titleLike
	}
	
	public func setMultiRequestToken(titleMultiLikeOr: String) {
		self.dict["titleMultiLikeOr"] = titleMultiLikeOr
	}
	
	public func setMultiRequestToken(titleMultiLikeAnd: String) {
		self.dict["titleMultiLikeAnd"] = titleMultiLikeAnd
	}
	
	public func setMultiRequestToken(subTypeEqual: String) {
		self.dict["subTypeEqual"] = subTypeEqual
	}
	
	public func setMultiRequestToken(subTypeIn: String) {
		self.dict["subTypeIn"] = subTypeIn
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["descriptionLike"] != nil {
			descriptionLike = dict["descriptionLike"] as? String
		}
		if dict["descriptionMultiLikeOr"] != nil {
			descriptionMultiLikeOr = dict["descriptionMultiLikeOr"] as? String
		}
		if dict["descriptionMultiLikeAnd"] != nil {
			descriptionMultiLikeAnd = dict["descriptionMultiLikeAnd"] as? String
		}
		if dict["titleLike"] != nil {
			titleLike = dict["titleLike"] as? String
		}
		if dict["titleMultiLikeOr"] != nil {
			titleMultiLikeOr = dict["titleMultiLikeOr"] as? String
		}
		if dict["titleMultiLikeAnd"] != nil {
			titleMultiLikeAnd = dict["titleMultiLikeAnd"] as? String
		}
		if dict["subTypeEqual"] != nil {
			subTypeEqual = ThumbCuePointSubType(rawValue: (dict["subTypeEqual"] as? Int)!)
		}
		if dict["subTypeIn"] != nil {
			subTypeIn = dict["subTypeIn"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(descriptionLike != nil) {
			dict["descriptionLike"] = descriptionLike!
		}
		if(descriptionMultiLikeOr != nil) {
			dict["descriptionMultiLikeOr"] = descriptionMultiLikeOr!
		}
		if(descriptionMultiLikeAnd != nil) {
			dict["descriptionMultiLikeAnd"] = descriptionMultiLikeAnd!
		}
		if(titleLike != nil) {
			dict["titleLike"] = titleLike!
		}
		if(titleMultiLikeOr != nil) {
			dict["titleMultiLikeOr"] = titleMultiLikeOr!
		}
		if(titleMultiLikeAnd != nil) {
			dict["titleMultiLikeAnd"] = titleMultiLikeAnd!
		}
		if(subTypeEqual != nil) {
			dict["subTypeEqual"] = subTypeEqual!.rawValue
		}
		if(subTypeIn != nil) {
			dict["subTypeIn"] = subTypeIn!
		}
		return dict
	}
}

