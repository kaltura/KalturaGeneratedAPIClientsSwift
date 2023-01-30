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
 * This class was generated using generate.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class TagFilter: Filter {

	public class TagFilterTokenizer: Filter.FilterTokenizer {
		
		public var objectTypeEqual: BaseTokenizedObject {
			get {
				return self.append("objectTypeEqual") 
			}
		}
		
		public var tagEqual: BaseTokenizedObject {
			get {
				return self.append("tagEqual") 
			}
		}
		
		public var tagStartsWith: BaseTokenizedObject {
			get {
				return self.append("tagStartsWith") 
			}
		}
		
		public var instanceCountEqual: BaseTokenizedObject {
			get {
				return self.append("instanceCountEqual") 
			}
		}
		
		public var instanceCountIn: BaseTokenizedObject {
			get {
				return self.append("instanceCountIn") 
			}
		}
	}

	public var objectTypeEqual: TaggedObjectType? = nil
	public var tagEqual: String? = nil
	public var tagStartsWith: String? = nil
	public var instanceCountEqual: Int? = nil
	public var instanceCountIn: Int? = nil


	public func setMultiRequestToken(objectTypeEqual: String) {
		self.dict["objectTypeEqual"] = objectTypeEqual
	}
	
	public func setMultiRequestToken(tagEqual: String) {
		self.dict["tagEqual"] = tagEqual
	}
	
	public func setMultiRequestToken(tagStartsWith: String) {
		self.dict["tagStartsWith"] = tagStartsWith
	}
	
	public func setMultiRequestToken(instanceCountEqual: String) {
		self.dict["instanceCountEqual"] = instanceCountEqual
	}
	
	public func setMultiRequestToken(instanceCountIn: String) {
		self.dict["instanceCountIn"] = instanceCountIn
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["objectTypeEqual"] != nil {
			objectTypeEqual = TaggedObjectType(rawValue: "\(dict["objectTypeEqual"]!)")
		}
		if dict["tagEqual"] != nil {
			tagEqual = dict["tagEqual"] as? String
		}
		if dict["tagStartsWith"] != nil {
			tagStartsWith = dict["tagStartsWith"] as? String
		}
		if dict["instanceCountEqual"] != nil {
			instanceCountEqual = dict["instanceCountEqual"] as? Int
		}
		if dict["instanceCountIn"] != nil {
			instanceCountIn = dict["instanceCountIn"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(objectTypeEqual != nil) {
			dict["objectTypeEqual"] = objectTypeEqual!.rawValue
		}
		if(tagEqual != nil) {
			dict["tagEqual"] = tagEqual!
		}
		if(tagStartsWith != nil) {
			dict["tagStartsWith"] = tagStartsWith!
		}
		if(instanceCountEqual != nil) {
			dict["instanceCountEqual"] = instanceCountEqual!
		}
		if(instanceCountIn != nil) {
			dict["instanceCountIn"] = instanceCountIn!
		}
		return dict
	}
}

