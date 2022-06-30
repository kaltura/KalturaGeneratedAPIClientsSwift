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

open class MediaEntryBaseFilter: PlayableEntryFilter {

	public class MediaEntryBaseFilterTokenizer: PlayableEntryFilter.PlayableEntryFilterTokenizer {
		
		public var mediaTypeEqual: BaseTokenizedObject {
			get {
				return self.append("mediaTypeEqual") 
			}
		}
		
		public var mediaTypeIn: BaseTokenizedObject {
			get {
				return self.append("mediaTypeIn") 
			}
		}
		
		public var sourceTypeEqual: BaseTokenizedObject {
			get {
				return self.append("sourceTypeEqual") 
			}
		}
		
		public var sourceTypeNotEqual: BaseTokenizedObject {
			get {
				return self.append("sourceTypeNotEqual") 
			}
		}
		
		public var sourceTypeIn: BaseTokenizedObject {
			get {
				return self.append("sourceTypeIn") 
			}
		}
		
		public var sourceTypeNotIn: BaseTokenizedObject {
			get {
				return self.append("sourceTypeNotIn") 
			}
		}
		
		public var mediaDateGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("mediaDateGreaterThanOrEqual") 
			}
		}
		
		public var mediaDateLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("mediaDateLessThanOrEqual") 
			}
		}
		
		public var flavorParamsIdsMatchOr: BaseTokenizedObject {
			get {
				return self.append("flavorParamsIdsMatchOr") 
			}
		}
		
		public var flavorParamsIdsMatchAnd: BaseTokenizedObject {
			get {
				return self.append("flavorParamsIdsMatchAnd") 
			}
		}
	}

	public var mediaTypeEqual: MediaType? = nil
	public var mediaTypeIn: String? = nil
	public var sourceTypeEqual: SourceType? = nil
	public var sourceTypeNotEqual: SourceType? = nil
	public var sourceTypeIn: String? = nil
	public var sourceTypeNotIn: String? = nil
	public var mediaDateGreaterThanOrEqual: Int? = nil
	public var mediaDateLessThanOrEqual: Int? = nil
	public var flavorParamsIdsMatchOr: String? = nil
	public var flavorParamsIdsMatchAnd: String? = nil


	public func setMultiRequestToken(mediaTypeEqual: String) {
		self.dict["mediaTypeEqual"] = mediaTypeEqual
	}
	
	public func setMultiRequestToken(mediaTypeIn: String) {
		self.dict["mediaTypeIn"] = mediaTypeIn
	}
	
	public func setMultiRequestToken(sourceTypeEqual: String) {
		self.dict["sourceTypeEqual"] = sourceTypeEqual
	}
	
	public func setMultiRequestToken(sourceTypeNotEqual: String) {
		self.dict["sourceTypeNotEqual"] = sourceTypeNotEqual
	}
	
	public func setMultiRequestToken(sourceTypeIn: String) {
		self.dict["sourceTypeIn"] = sourceTypeIn
	}
	
	public func setMultiRequestToken(sourceTypeNotIn: String) {
		self.dict["sourceTypeNotIn"] = sourceTypeNotIn
	}
	
	public func setMultiRequestToken(mediaDateGreaterThanOrEqual: String) {
		self.dict["mediaDateGreaterThanOrEqual"] = mediaDateGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(mediaDateLessThanOrEqual: String) {
		self.dict["mediaDateLessThanOrEqual"] = mediaDateLessThanOrEqual
	}
	
	public func setMultiRequestToken(flavorParamsIdsMatchOr: String) {
		self.dict["flavorParamsIdsMatchOr"] = flavorParamsIdsMatchOr
	}
	
	public func setMultiRequestToken(flavorParamsIdsMatchAnd: String) {
		self.dict["flavorParamsIdsMatchAnd"] = flavorParamsIdsMatchAnd
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["mediaTypeEqual"] != nil {
			mediaTypeEqual = MediaType(rawValue: (dict["mediaTypeEqual"] as? Int)!)
		}
		if dict["mediaTypeIn"] != nil {
			mediaTypeIn = dict["mediaTypeIn"] as? String
		}
		if dict["sourceTypeEqual"] != nil {
			sourceTypeEqual = SourceType(rawValue: "\(dict["sourceTypeEqual"]!)")
		}
		if dict["sourceTypeNotEqual"] != nil {
			sourceTypeNotEqual = SourceType(rawValue: "\(dict["sourceTypeNotEqual"]!)")
		}
		if dict["sourceTypeIn"] != nil {
			sourceTypeIn = dict["sourceTypeIn"] as? String
		}
		if dict["sourceTypeNotIn"] != nil {
			sourceTypeNotIn = dict["sourceTypeNotIn"] as? String
		}
		if dict["mediaDateGreaterThanOrEqual"] != nil {
			mediaDateGreaterThanOrEqual = dict["mediaDateGreaterThanOrEqual"] as? Int
		}
		if dict["mediaDateLessThanOrEqual"] != nil {
			mediaDateLessThanOrEqual = dict["mediaDateLessThanOrEqual"] as? Int
		}
		if dict["flavorParamsIdsMatchOr"] != nil {
			flavorParamsIdsMatchOr = dict["flavorParamsIdsMatchOr"] as? String
		}
		if dict["flavorParamsIdsMatchAnd"] != nil {
			flavorParamsIdsMatchAnd = dict["flavorParamsIdsMatchAnd"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(mediaTypeEqual != nil) {
			dict["mediaTypeEqual"] = mediaTypeEqual!.rawValue
		}
		if(mediaTypeIn != nil) {
			dict["mediaTypeIn"] = mediaTypeIn!
		}
		if(sourceTypeEqual != nil) {
			dict["sourceTypeEqual"] = sourceTypeEqual!.rawValue
		}
		if(sourceTypeNotEqual != nil) {
			dict["sourceTypeNotEqual"] = sourceTypeNotEqual!.rawValue
		}
		if(sourceTypeIn != nil) {
			dict["sourceTypeIn"] = sourceTypeIn!
		}
		if(sourceTypeNotIn != nil) {
			dict["sourceTypeNotIn"] = sourceTypeNotIn!
		}
		if(mediaDateGreaterThanOrEqual != nil) {
			dict["mediaDateGreaterThanOrEqual"] = mediaDateGreaterThanOrEqual!
		}
		if(mediaDateLessThanOrEqual != nil) {
			dict["mediaDateLessThanOrEqual"] = mediaDateLessThanOrEqual!
		}
		if(flavorParamsIdsMatchOr != nil) {
			dict["flavorParamsIdsMatchOr"] = flavorParamsIdsMatchOr!
		}
		if(flavorParamsIdsMatchAnd != nil) {
			dict["flavorParamsIdsMatchAnd"] = flavorParamsIdsMatchAnd!
		}
		return dict
	}
}

