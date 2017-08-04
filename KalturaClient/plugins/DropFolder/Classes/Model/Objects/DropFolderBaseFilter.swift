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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class DropFolderBaseFilter: Filter {

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

	public override func toDictionary() -> [String: Any] {
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

