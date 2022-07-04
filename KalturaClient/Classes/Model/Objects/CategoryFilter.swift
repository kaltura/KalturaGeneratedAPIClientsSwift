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

open class CategoryFilter: CategoryBaseFilter {

	public class CategoryFilterTokenizer: CategoryBaseFilter.CategoryBaseFilterTokenizer {
		
		public var freeText: BaseTokenizedObject {
			get {
				return self.append("freeText") 
			}
		}
		
		public var membersIn: BaseTokenizedObject {
			get {
				return self.append("membersIn") 
			}
		}
		
		public var nameOrReferenceIdStartsWith: BaseTokenizedObject {
			get {
				return self.append("nameOrReferenceIdStartsWith") 
			}
		}
		
		public var managerEqual: BaseTokenizedObject {
			get {
				return self.append("managerEqual") 
			}
		}
		
		public var memberEqual: BaseTokenizedObject {
			get {
				return self.append("memberEqual") 
			}
		}
		
		public var fullNameStartsWithIn: BaseTokenizedObject {
			get {
				return self.append("fullNameStartsWithIn") 
			}
		}
		
		public var ancestorIdIn: BaseTokenizedObject {
			get {
				return self.append("ancestorIdIn") 
			}
		}
		
		public var idOrInheritedParentIdIn: BaseTokenizedObject {
			get {
				return self.append("idOrInheritedParentIdIn") 
			}
		}
	}

	public var freeText: String? = nil
	public var membersIn: String? = nil
	public var nameOrReferenceIdStartsWith: String? = nil
	public var managerEqual: String? = nil
	public var memberEqual: String? = nil
	public var fullNameStartsWithIn: String? = nil
	/**  not includes the category itself (only sub categories)  */
	public var ancestorIdIn: String? = nil
	public var idOrInheritedParentIdIn: String? = nil


	public func setMultiRequestToken(freeText: String) {
		self.dict["freeText"] = freeText
	}
	
	public func setMultiRequestToken(membersIn: String) {
		self.dict["membersIn"] = membersIn
	}
	
	public func setMultiRequestToken(nameOrReferenceIdStartsWith: String) {
		self.dict["nameOrReferenceIdStartsWith"] = nameOrReferenceIdStartsWith
	}
	
	public func setMultiRequestToken(managerEqual: String) {
		self.dict["managerEqual"] = managerEqual
	}
	
	public func setMultiRequestToken(memberEqual: String) {
		self.dict["memberEqual"] = memberEqual
	}
	
	public func setMultiRequestToken(fullNameStartsWithIn: String) {
		self.dict["fullNameStartsWithIn"] = fullNameStartsWithIn
	}
	
	public func setMultiRequestToken(ancestorIdIn: String) {
		self.dict["ancestorIdIn"] = ancestorIdIn
	}
	
	public func setMultiRequestToken(idOrInheritedParentIdIn: String) {
		self.dict["idOrInheritedParentIdIn"] = idOrInheritedParentIdIn
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["freeText"] != nil {
			freeText = dict["freeText"] as? String
		}
		if dict["membersIn"] != nil {
			membersIn = dict["membersIn"] as? String
		}
		if dict["nameOrReferenceIdStartsWith"] != nil {
			nameOrReferenceIdStartsWith = dict["nameOrReferenceIdStartsWith"] as? String
		}
		if dict["managerEqual"] != nil {
			managerEqual = dict["managerEqual"] as? String
		}
		if dict["memberEqual"] != nil {
			memberEqual = dict["memberEqual"] as? String
		}
		if dict["fullNameStartsWithIn"] != nil {
			fullNameStartsWithIn = dict["fullNameStartsWithIn"] as? String
		}
		if dict["ancestorIdIn"] != nil {
			ancestorIdIn = dict["ancestorIdIn"] as? String
		}
		if dict["idOrInheritedParentIdIn"] != nil {
			idOrInheritedParentIdIn = dict["idOrInheritedParentIdIn"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(freeText != nil) {
			dict["freeText"] = freeText!
		}
		if(membersIn != nil) {
			dict["membersIn"] = membersIn!
		}
		if(nameOrReferenceIdStartsWith != nil) {
			dict["nameOrReferenceIdStartsWith"] = nameOrReferenceIdStartsWith!
		}
		if(managerEqual != nil) {
			dict["managerEqual"] = managerEqual!
		}
		if(memberEqual != nil) {
			dict["memberEqual"] = memberEqual!
		}
		if(fullNameStartsWithIn != nil) {
			dict["fullNameStartsWithIn"] = fullNameStartsWithIn!
		}
		if(ancestorIdIn != nil) {
			dict["ancestorIdIn"] = ancestorIdIn!
		}
		if(idOrInheritedParentIdIn != nil) {
			dict["idOrInheritedParentIdIn"] = idOrInheritedParentIdIn!
		}
		return dict
	}
}

