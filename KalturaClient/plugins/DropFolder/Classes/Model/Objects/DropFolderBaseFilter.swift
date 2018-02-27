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
// Copyright (C) 2006-2018  Kaltura Inc.
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

open class DropFolderBaseFilter: Filter {

	public class DropFolderBaseFilterTokenizer: Filter.FilterTokenizer {
		
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
		
		public var partnerIdEqual: BaseTokenizedObject {
			get {
				return self.append("partnerIdEqual") 
			}
		}
		
		public var partnerIdIn: BaseTokenizedObject {
			get {
				return self.append("partnerIdIn") 
			}
		}
		
		public var nameLike: BaseTokenizedObject {
			get {
				return self.append("nameLike") 
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
		
		public var conversionProfileIdEqual: BaseTokenizedObject {
			get {
				return self.append("conversionProfileIdEqual") 
			}
		}
		
		public var conversionProfileIdIn: BaseTokenizedObject {
			get {
				return self.append("conversionProfileIdIn") 
			}
		}
		
		public var dcEqual: BaseTokenizedObject {
			get {
				return self.append("dcEqual") 
			}
		}
		
		public var dcIn: BaseTokenizedObject {
			get {
				return self.append("dcIn") 
			}
		}
		
		public var pathEqual: BaseTokenizedObject {
			get {
				return self.append("pathEqual") 
			}
		}
		
		public var pathLike: BaseTokenizedObject {
			get {
				return self.append("pathLike") 
			}
		}
		
		public var fileHandlerTypeEqual: BaseTokenizedObject {
			get {
				return self.append("fileHandlerTypeEqual") 
			}
		}
		
		public var fileHandlerTypeIn: BaseTokenizedObject {
			get {
				return self.append("fileHandlerTypeIn") 
			}
		}
		
		public var fileNamePatternsLike: BaseTokenizedObject {
			get {
				return self.append("fileNamePatternsLike") 
			}
		}
		
		public var fileNamePatternsMultiLikeOr: BaseTokenizedObject {
			get {
				return self.append("fileNamePatternsMultiLikeOr") 
			}
		}
		
		public var fileNamePatternsMultiLikeAnd: BaseTokenizedObject {
			get {
				return self.append("fileNamePatternsMultiLikeAnd") 
			}
		}
		
		public var tagsLike: BaseTokenizedObject {
			get {
				return self.append("tagsLike") 
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
		
		public var errorCodeEqual: BaseTokenizedObject {
			get {
				return self.append("errorCodeEqual") 
			}
		}
		
		public var errorCodeIn: BaseTokenizedObject {
			get {
				return self.append("errorCodeIn") 
			}
		}
		
		public var createdAtGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("createdAtGreaterThanOrEqual") 
			}
		}
		
		public var createdAtLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("createdAtLessThanOrEqual") 
			}
		}
		
		public var updatedAtGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("updatedAtGreaterThanOrEqual") 
			}
		}
		
		public var updatedAtLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("updatedAtLessThanOrEqual") 
			}
		}
	}

	public var idEqual: Int? = nil
	public var idIn: String? = nil
	public var partnerIdEqual: Int? = nil
	public var partnerIdIn: String? = nil
	public var nameLike: String? = nil
	public var typeEqual: DropFolderType? = nil
	public var typeIn: String? = nil
	public var statusEqual: DropFolderStatus? = nil
	public var statusIn: String? = nil
	public var conversionProfileIdEqual: Int? = nil
	public var conversionProfileIdIn: String? = nil
	public var dcEqual: Int? = nil
	public var dcIn: String? = nil
	public var pathEqual: String? = nil
	public var pathLike: String? = nil
	public var fileHandlerTypeEqual: DropFolderFileHandlerType? = nil
	public var fileHandlerTypeIn: String? = nil
	public var fileNamePatternsLike: String? = nil
	public var fileNamePatternsMultiLikeOr: String? = nil
	public var fileNamePatternsMultiLikeAnd: String? = nil
	public var tagsLike: String? = nil
	public var tagsMultiLikeOr: String? = nil
	public var tagsMultiLikeAnd: String? = nil
	public var errorCodeEqual: DropFolderErrorCode? = nil
	public var errorCodeIn: String? = nil
	public var createdAtGreaterThanOrEqual: Int? = nil
	public var createdAtLessThanOrEqual: Int? = nil
	public var updatedAtGreaterThanOrEqual: Int? = nil
	public var updatedAtLessThanOrEqual: Int? = nil


	public func setMultiRequestToken(idEqual: String) {
		self.dict["idEqual"] = idEqual
	}
	
	public func setMultiRequestToken(idIn: String) {
		self.dict["idIn"] = idIn
	}
	
	public func setMultiRequestToken(partnerIdEqual: String) {
		self.dict["partnerIdEqual"] = partnerIdEqual
	}
	
	public func setMultiRequestToken(partnerIdIn: String) {
		self.dict["partnerIdIn"] = partnerIdIn
	}
	
	public func setMultiRequestToken(nameLike: String) {
		self.dict["nameLike"] = nameLike
	}
	
	public func setMultiRequestToken(typeEqual: String) {
		self.dict["typeEqual"] = typeEqual
	}
	
	public func setMultiRequestToken(typeIn: String) {
		self.dict["typeIn"] = typeIn
	}
	
	public func setMultiRequestToken(statusEqual: String) {
		self.dict["statusEqual"] = statusEqual
	}
	
	public func setMultiRequestToken(statusIn: String) {
		self.dict["statusIn"] = statusIn
	}
	
	public func setMultiRequestToken(conversionProfileIdEqual: String) {
		self.dict["conversionProfileIdEqual"] = conversionProfileIdEqual
	}
	
	public func setMultiRequestToken(conversionProfileIdIn: String) {
		self.dict["conversionProfileIdIn"] = conversionProfileIdIn
	}
	
	public func setMultiRequestToken(dcEqual: String) {
		self.dict["dcEqual"] = dcEqual
	}
	
	public func setMultiRequestToken(dcIn: String) {
		self.dict["dcIn"] = dcIn
	}
	
	public func setMultiRequestToken(pathEqual: String) {
		self.dict["pathEqual"] = pathEqual
	}
	
	public func setMultiRequestToken(pathLike: String) {
		self.dict["pathLike"] = pathLike
	}
	
	public func setMultiRequestToken(fileHandlerTypeEqual: String) {
		self.dict["fileHandlerTypeEqual"] = fileHandlerTypeEqual
	}
	
	public func setMultiRequestToken(fileHandlerTypeIn: String) {
		self.dict["fileHandlerTypeIn"] = fileHandlerTypeIn
	}
	
	public func setMultiRequestToken(fileNamePatternsLike: String) {
		self.dict["fileNamePatternsLike"] = fileNamePatternsLike
	}
	
	public func setMultiRequestToken(fileNamePatternsMultiLikeOr: String) {
		self.dict["fileNamePatternsMultiLikeOr"] = fileNamePatternsMultiLikeOr
	}
	
	public func setMultiRequestToken(fileNamePatternsMultiLikeAnd: String) {
		self.dict["fileNamePatternsMultiLikeAnd"] = fileNamePatternsMultiLikeAnd
	}
	
	public func setMultiRequestToken(tagsLike: String) {
		self.dict["tagsLike"] = tagsLike
	}
	
	public func setMultiRequestToken(tagsMultiLikeOr: String) {
		self.dict["tagsMultiLikeOr"] = tagsMultiLikeOr
	}
	
	public func setMultiRequestToken(tagsMultiLikeAnd: String) {
		self.dict["tagsMultiLikeAnd"] = tagsMultiLikeAnd
	}
	
	public func setMultiRequestToken(errorCodeEqual: String) {
		self.dict["errorCodeEqual"] = errorCodeEqual
	}
	
	public func setMultiRequestToken(errorCodeIn: String) {
		self.dict["errorCodeIn"] = errorCodeIn
	}
	
	public func setMultiRequestToken(createdAtGreaterThanOrEqual: String) {
		self.dict["createdAtGreaterThanOrEqual"] = createdAtGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(createdAtLessThanOrEqual: String) {
		self.dict["createdAtLessThanOrEqual"] = createdAtLessThanOrEqual
	}
	
	public func setMultiRequestToken(updatedAtGreaterThanOrEqual: String) {
		self.dict["updatedAtGreaterThanOrEqual"] = updatedAtGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(updatedAtLessThanOrEqual: String) {
		self.dict["updatedAtLessThanOrEqual"] = updatedAtLessThanOrEqual
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
		if dict["partnerIdEqual"] != nil {
			partnerIdEqual = dict["partnerIdEqual"] as? Int
		}
		if dict["partnerIdIn"] != nil {
			partnerIdIn = dict["partnerIdIn"] as? String
		}
		if dict["nameLike"] != nil {
			nameLike = dict["nameLike"] as? String
		}
		if dict["typeEqual"] != nil {
			typeEqual = DropFolderType(rawValue: "\(dict["typeEqual"]!)")
		}
		if dict["typeIn"] != nil {
			typeIn = dict["typeIn"] as? String
		}
		if dict["statusEqual"] != nil {
			statusEqual = DropFolderStatus(rawValue: (dict["statusEqual"] as? Int)!)
		}
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
		}
		if dict["conversionProfileIdEqual"] != nil {
			conversionProfileIdEqual = dict["conversionProfileIdEqual"] as? Int
		}
		if dict["conversionProfileIdIn"] != nil {
			conversionProfileIdIn = dict["conversionProfileIdIn"] as? String
		}
		if dict["dcEqual"] != nil {
			dcEqual = dict["dcEqual"] as? Int
		}
		if dict["dcIn"] != nil {
			dcIn = dict["dcIn"] as? String
		}
		if dict["pathEqual"] != nil {
			pathEqual = dict["pathEqual"] as? String
		}
		if dict["pathLike"] != nil {
			pathLike = dict["pathLike"] as? String
		}
		if dict["fileHandlerTypeEqual"] != nil {
			fileHandlerTypeEqual = DropFolderFileHandlerType(rawValue: "\(dict["fileHandlerTypeEqual"]!)")
		}
		if dict["fileHandlerTypeIn"] != nil {
			fileHandlerTypeIn = dict["fileHandlerTypeIn"] as? String
		}
		if dict["fileNamePatternsLike"] != nil {
			fileNamePatternsLike = dict["fileNamePatternsLike"] as? String
		}
		if dict["fileNamePatternsMultiLikeOr"] != nil {
			fileNamePatternsMultiLikeOr = dict["fileNamePatternsMultiLikeOr"] as? String
		}
		if dict["fileNamePatternsMultiLikeAnd"] != nil {
			fileNamePatternsMultiLikeAnd = dict["fileNamePatternsMultiLikeAnd"] as? String
		}
		if dict["tagsLike"] != nil {
			tagsLike = dict["tagsLike"] as? String
		}
		if dict["tagsMultiLikeOr"] != nil {
			tagsMultiLikeOr = dict["tagsMultiLikeOr"] as? String
		}
		if dict["tagsMultiLikeAnd"] != nil {
			tagsMultiLikeAnd = dict["tagsMultiLikeAnd"] as? String
		}
		if dict["errorCodeEqual"] != nil {
			errorCodeEqual = DropFolderErrorCode(rawValue: "\(dict["errorCodeEqual"]!)")
		}
		if dict["errorCodeIn"] != nil {
			errorCodeIn = dict["errorCodeIn"] as? String
		}
		if dict["createdAtGreaterThanOrEqual"] != nil {
			createdAtGreaterThanOrEqual = dict["createdAtGreaterThanOrEqual"] as? Int
		}
		if dict["createdAtLessThanOrEqual"] != nil {
			createdAtLessThanOrEqual = dict["createdAtLessThanOrEqual"] as? Int
		}
		if dict["updatedAtGreaterThanOrEqual"] != nil {
			updatedAtGreaterThanOrEqual = dict["updatedAtGreaterThanOrEqual"] as? Int
		}
		if dict["updatedAtLessThanOrEqual"] != nil {
			updatedAtLessThanOrEqual = dict["updatedAtLessThanOrEqual"] as? Int
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
		if(partnerIdEqual != nil) {
			dict["partnerIdEqual"] = partnerIdEqual!
		}
		if(partnerIdIn != nil) {
			dict["partnerIdIn"] = partnerIdIn!
		}
		if(nameLike != nil) {
			dict["nameLike"] = nameLike!
		}
		if(typeEqual != nil) {
			dict["typeEqual"] = typeEqual!.rawValue
		}
		if(typeIn != nil) {
			dict["typeIn"] = typeIn!
		}
		if(statusEqual != nil) {
			dict["statusEqual"] = statusEqual!.rawValue
		}
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		if(conversionProfileIdEqual != nil) {
			dict["conversionProfileIdEqual"] = conversionProfileIdEqual!
		}
		if(conversionProfileIdIn != nil) {
			dict["conversionProfileIdIn"] = conversionProfileIdIn!
		}
		if(dcEqual != nil) {
			dict["dcEqual"] = dcEqual!
		}
		if(dcIn != nil) {
			dict["dcIn"] = dcIn!
		}
		if(pathEqual != nil) {
			dict["pathEqual"] = pathEqual!
		}
		if(pathLike != nil) {
			dict["pathLike"] = pathLike!
		}
		if(fileHandlerTypeEqual != nil) {
			dict["fileHandlerTypeEqual"] = fileHandlerTypeEqual!.rawValue
		}
		if(fileHandlerTypeIn != nil) {
			dict["fileHandlerTypeIn"] = fileHandlerTypeIn!
		}
		if(fileNamePatternsLike != nil) {
			dict["fileNamePatternsLike"] = fileNamePatternsLike!
		}
		if(fileNamePatternsMultiLikeOr != nil) {
			dict["fileNamePatternsMultiLikeOr"] = fileNamePatternsMultiLikeOr!
		}
		if(fileNamePatternsMultiLikeAnd != nil) {
			dict["fileNamePatternsMultiLikeAnd"] = fileNamePatternsMultiLikeAnd!
		}
		if(tagsLike != nil) {
			dict["tagsLike"] = tagsLike!
		}
		if(tagsMultiLikeOr != nil) {
			dict["tagsMultiLikeOr"] = tagsMultiLikeOr!
		}
		if(tagsMultiLikeAnd != nil) {
			dict["tagsMultiLikeAnd"] = tagsMultiLikeAnd!
		}
		if(errorCodeEqual != nil) {
			dict["errorCodeEqual"] = errorCodeEqual!.rawValue
		}
		if(errorCodeIn != nil) {
			dict["errorCodeIn"] = errorCodeIn!
		}
		if(createdAtGreaterThanOrEqual != nil) {
			dict["createdAtGreaterThanOrEqual"] = createdAtGreaterThanOrEqual!
		}
		if(createdAtLessThanOrEqual != nil) {
			dict["createdAtLessThanOrEqual"] = createdAtLessThanOrEqual!
		}
		if(updatedAtGreaterThanOrEqual != nil) {
			dict["updatedAtGreaterThanOrEqual"] = updatedAtGreaterThanOrEqual!
		}
		if(updatedAtLessThanOrEqual != nil) {
			dict["updatedAtLessThanOrEqual"] = updatedAtLessThanOrEqual!
		}
		return dict
	}
}

