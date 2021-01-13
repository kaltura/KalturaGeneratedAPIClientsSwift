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

open class ConversionProfileBaseFilter: RelatedFilter {

	public class ConversionProfileBaseFilterTokenizer: RelatedFilter.RelatedFilterTokenizer {
		
		public var idEqual: BaseTokenizedObject {
			get {
				return self.append("idEqual") 
			}
		}
		
		public var idIn: BaseTokenizedObject {
			get {
				return self.append("idIn") 
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
		
		public var typeEqual: BaseTokenizedObject {
			get {
				return self.append("typeEqual") 
			}
		}
		
		public var typeIn: BaseTokenizedObject {
			get {
				return self.append("typeIn") 
			}
		}
		
		public var nameEqual: BaseTokenizedObject {
			get {
				return self.append("nameEqual") 
			}
		}
		
		public var systemNameEqual: BaseTokenizedObject {
			get {
				return self.append("systemNameEqual") 
			}
		}
		
		public var systemNameIn: BaseTokenizedObject {
			get {
				return self.append("systemNameIn") 
			}
		}
		
		public var tagsMultiLikeOr: BaseTokenizedObject {
			get {
				return self.append("tagsMultiLikeOr") 
			}
		}
		
		public var tagsMultiLikeAnd: BaseTokenizedObject {
			get {
				return self.append("tagsMultiLikeAnd") 
			}
		}
		
		public var defaultEntryIdEqual: BaseTokenizedObject {
			get {
				return self.append("defaultEntryIdEqual") 
			}
		}
		
		public var defaultEntryIdIn: BaseTokenizedObject {
			get {
				return self.append("defaultEntryIdIn") 
			}
		}
	}

	public var idEqual: Int? = nil
	public var idIn: String? = nil
	public var statusEqual: ConversionProfileStatus? = nil
	public var statusIn: String? = nil
	public var typeEqual: ConversionProfileType? = nil
	public var typeIn: String? = nil
	public var nameEqual: String? = nil
	public var systemNameEqual: String? = nil
	public var systemNameIn: String? = nil
	public var tagsMultiLikeOr: String? = nil
	public var tagsMultiLikeAnd: String? = nil
	public var defaultEntryIdEqual: String? = nil
	public var defaultEntryIdIn: String? = nil


	public func setMultiRequestToken(idEqual: String) {
		self.dict["idEqual"] = idEqual
	}
	
	public func setMultiRequestToken(idIn: String) {
		self.dict["idIn"] = idIn
	}
	
	public func setMultiRequestToken(statusEqual: String) {
		self.dict["statusEqual"] = statusEqual
	}
	
	public func setMultiRequestToken(statusIn: String) {
		self.dict["statusIn"] = statusIn
	}
	
	public func setMultiRequestToken(typeEqual: String) {
		self.dict["typeEqual"] = typeEqual
	}
	
	public func setMultiRequestToken(typeIn: String) {
		self.dict["typeIn"] = typeIn
	}
	
	public func setMultiRequestToken(nameEqual: String) {
		self.dict["nameEqual"] = nameEqual
	}
	
	public func setMultiRequestToken(systemNameEqual: String) {
		self.dict["systemNameEqual"] = systemNameEqual
	}
	
	public func setMultiRequestToken(systemNameIn: String) {
		self.dict["systemNameIn"] = systemNameIn
	}
	
	public func setMultiRequestToken(tagsMultiLikeOr: String) {
		self.dict["tagsMultiLikeOr"] = tagsMultiLikeOr
	}
	
	public func setMultiRequestToken(tagsMultiLikeAnd: String) {
		self.dict["tagsMultiLikeAnd"] = tagsMultiLikeAnd
	}
	
	public func setMultiRequestToken(defaultEntryIdEqual: String) {
		self.dict["defaultEntryIdEqual"] = defaultEntryIdEqual
	}
	
	public func setMultiRequestToken(defaultEntryIdIn: String) {
		self.dict["defaultEntryIdIn"] = defaultEntryIdIn
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["idEqual"] != nil {
			idEqual = dict["idEqual"] as? Int
		}
		if dict["idIn"] != nil {
			idIn = dict["idIn"] as? String
		}
		if dict["statusEqual"] != nil {
			statusEqual = ConversionProfileStatus(rawValue: "\(dict["statusEqual"]!)")
		}
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
		}
		if dict["typeEqual"] != nil {
			typeEqual = ConversionProfileType(rawValue: "\(dict["typeEqual"]!)")
		}
		if dict["typeIn"] != nil {
			typeIn = dict["typeIn"] as? String
		}
		if dict["nameEqual"] != nil {
			nameEqual = dict["nameEqual"] as? String
		}
		if dict["systemNameEqual"] != nil {
			systemNameEqual = dict["systemNameEqual"] as? String
		}
		if dict["systemNameIn"] != nil {
			systemNameIn = dict["systemNameIn"] as? String
		}
		if dict["tagsMultiLikeOr"] != nil {
			tagsMultiLikeOr = dict["tagsMultiLikeOr"] as? String
		}
		if dict["tagsMultiLikeAnd"] != nil {
			tagsMultiLikeAnd = dict["tagsMultiLikeAnd"] as? String
		}
		if dict["defaultEntryIdEqual"] != nil {
			defaultEntryIdEqual = dict["defaultEntryIdEqual"] as? String
		}
		if dict["defaultEntryIdIn"] != nil {
			defaultEntryIdIn = dict["defaultEntryIdIn"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(idEqual != nil) {
			dict["idEqual"] = idEqual!
		}
		if(idIn != nil) {
			dict["idIn"] = idIn!
		}
		if(statusEqual != nil) {
			dict["statusEqual"] = statusEqual!.rawValue
		}
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		if(typeEqual != nil) {
			dict["typeEqual"] = typeEqual!.rawValue
		}
		if(typeIn != nil) {
			dict["typeIn"] = typeIn!
		}
		if(nameEqual != nil) {
			dict["nameEqual"] = nameEqual!
		}
		if(systemNameEqual != nil) {
			dict["systemNameEqual"] = systemNameEqual!
		}
		if(systemNameIn != nil) {
			dict["systemNameIn"] = systemNameIn!
		}
		if(tagsMultiLikeOr != nil) {
			dict["tagsMultiLikeOr"] = tagsMultiLikeOr!
		}
		if(tagsMultiLikeAnd != nil) {
			dict["tagsMultiLikeAnd"] = tagsMultiLikeAnd!
		}
		if(defaultEntryIdEqual != nil) {
			dict["defaultEntryIdEqual"] = defaultEntryIdEqual!
		}
		if(defaultEntryIdIn != nil) {
			dict["defaultEntryIdIn"] = defaultEntryIdIn!
		}
		return dict
	}
}

