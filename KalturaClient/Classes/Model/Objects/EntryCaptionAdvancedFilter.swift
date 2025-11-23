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

open class EntryCaptionAdvancedFilter: SearchItem {

	public class EntryCaptionAdvancedFilterTokenizer: SearchItem.SearchItemTokenizer {
		
		public var hasCaption: BaseTokenizedObject {
			get {
				return self.append("hasCaption") 
			}
		}
		
		public var language: BaseTokenizedObject {
			get {
				return self.append("language") 
			}
		}
		
		public var accuracyGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("accuracyGreaterThanOrEqual") 
			}
		}
		
		public var accuracyLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("accuracyLessThanOrEqual") 
			}
		}
		
		public var accuracyGreaterThan: BaseTokenizedObject {
			get {
				return self.append("accuracyGreaterThan") 
			}
		}
		
		public var accuracyLessThan: BaseTokenizedObject {
			get {
				return self.append("accuracyLessThan") 
			}
		}
		
		public var usage: BaseTokenizedObject {
			get {
				return self.append("usage") 
			}
		}
	}

	public var hasCaption: Bool? = nil
	public var language: Language? = nil
	public var accuracyGreaterThanOrEqual: Int? = nil
	public var accuracyLessThanOrEqual: Int? = nil
	public var accuracyGreaterThan: Int? = nil
	public var accuracyLessThan: Int? = nil
	public var usage: CaptionAssetUsage? = nil


	public func setMultiRequestToken(hasCaption: String) {
		self.dict["hasCaption"] = hasCaption
	}
	
	public func setMultiRequestToken(language: String) {
		self.dict["language"] = language
	}
	
	public func setMultiRequestToken(accuracyGreaterThanOrEqual: String) {
		self.dict["accuracyGreaterThanOrEqual"] = accuracyGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(accuracyLessThanOrEqual: String) {
		self.dict["accuracyLessThanOrEqual"] = accuracyLessThanOrEqual
	}
	
	public func setMultiRequestToken(accuracyGreaterThan: String) {
		self.dict["accuracyGreaterThan"] = accuracyGreaterThan
	}
	
	public func setMultiRequestToken(accuracyLessThan: String) {
		self.dict["accuracyLessThan"] = accuracyLessThan
	}
	
	public func setMultiRequestToken(usage: String) {
		self.dict["usage"] = usage
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["hasCaption"] != nil {
			hasCaption = dict["hasCaption"] as? Bool
		}
		if dict["language"] != nil {
			language = Language(rawValue: "\(dict["language"]!)")
		}
		if dict["accuracyGreaterThanOrEqual"] != nil {
			accuracyGreaterThanOrEqual = dict["accuracyGreaterThanOrEqual"] as? Int
		}
		if dict["accuracyLessThanOrEqual"] != nil {
			accuracyLessThanOrEqual = dict["accuracyLessThanOrEqual"] as? Int
		}
		if dict["accuracyGreaterThan"] != nil {
			accuracyGreaterThan = dict["accuracyGreaterThan"] as? Int
		}
		if dict["accuracyLessThan"] != nil {
			accuracyLessThan = dict["accuracyLessThan"] as? Int
		}
		if dict["usage"] != nil {
			usage = CaptionAssetUsage(rawValue: "\(dict["usage"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(hasCaption != nil) {
			dict["hasCaption"] = hasCaption!
		}
		if(language != nil) {
			dict["language"] = language!.rawValue
		}
		if(accuracyGreaterThanOrEqual != nil) {
			dict["accuracyGreaterThanOrEqual"] = accuracyGreaterThanOrEqual!
		}
		if(accuracyLessThanOrEqual != nil) {
			dict["accuracyLessThanOrEqual"] = accuracyLessThanOrEqual!
		}
		if(accuracyGreaterThan != nil) {
			dict["accuracyGreaterThan"] = accuracyGreaterThan!
		}
		if(accuracyLessThan != nil) {
			dict["accuracyLessThan"] = accuracyLessThan!
		}
		if(usage != nil) {
			dict["usage"] = usage!.rawValue
		}
		return dict
	}
}

