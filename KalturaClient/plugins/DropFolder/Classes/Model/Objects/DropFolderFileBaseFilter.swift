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

open class DropFolderFileBaseFilter: Filter {

	public var idEqual: Int? = nil
	public var idIn: String? = nil
	public var partnerIdEqual: Int? = nil
	public var partnerIdIn: String? = nil
	public var dropFolderIdEqual: Int? = nil
	public var dropFolderIdIn: String? = nil
	public var fileNameEqual: String? = nil
	public var fileNameIn: String? = nil
	public var fileNameLike: String? = nil
	public var statusEqual: DropFolderFileStatus? = nil
	public var statusIn: String? = nil
	public var statusNotIn: String? = nil
	public var parsedSlugEqual: String? = nil
	public var parsedSlugIn: String? = nil
	public var parsedSlugLike: String? = nil
	public var parsedFlavorEqual: String? = nil
	public var parsedFlavorIn: String? = nil
	public var parsedFlavorLike: String? = nil
	public var leadDropFolderFileIdEqual: Int? = nil
	public var deletedDropFolderFileIdEqual: Int? = nil
	public var entryIdEqual: String? = nil
	public var errorCodeEqual: DropFolderFileErrorCode? = nil
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
		if dict["dropFolderIdEqual"] != nil {
			dropFolderIdEqual = dict["dropFolderIdEqual"] as? Int
		}
		if dict["dropFolderIdIn"] != nil {
			dropFolderIdIn = dict["dropFolderIdIn"] as? String
		}
		if dict["fileNameEqual"] != nil {
			fileNameEqual = dict["fileNameEqual"] as? String
		}
		if dict["fileNameIn"] != nil {
			fileNameIn = dict["fileNameIn"] as? String
		}
		if dict["fileNameLike"] != nil {
			fileNameLike = dict["fileNameLike"] as? String
		}
		if dict["statusEqual"] != nil {
			statusEqual = DropFolderFileStatus(rawValue: (dict["statusEqual"] as? Int)!)
		}
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
		}
		if dict["statusNotIn"] != nil {
			statusNotIn = dict["statusNotIn"] as? String
		}
		if dict["parsedSlugEqual"] != nil {
			parsedSlugEqual = dict["parsedSlugEqual"] as? String
		}
		if dict["parsedSlugIn"] != nil {
			parsedSlugIn = dict["parsedSlugIn"] as? String
		}
		if dict["parsedSlugLike"] != nil {
			parsedSlugLike = dict["parsedSlugLike"] as? String
		}
		if dict["parsedFlavorEqual"] != nil {
			parsedFlavorEqual = dict["parsedFlavorEqual"] as? String
		}
		if dict["parsedFlavorIn"] != nil {
			parsedFlavorIn = dict["parsedFlavorIn"] as? String
		}
		if dict["parsedFlavorLike"] != nil {
			parsedFlavorLike = dict["parsedFlavorLike"] as? String
		}
		if dict["leadDropFolderFileIdEqual"] != nil {
			leadDropFolderFileIdEqual = dict["leadDropFolderFileIdEqual"] as? Int
		}
		if dict["deletedDropFolderFileIdEqual"] != nil {
			deletedDropFolderFileIdEqual = dict["deletedDropFolderFileIdEqual"] as? Int
		}
		if dict["entryIdEqual"] != nil {
			entryIdEqual = dict["entryIdEqual"] as? String
		}
		if dict["errorCodeEqual"] != nil {
			errorCodeEqual = DropFolderFileErrorCode(rawValue: "\(dict["errorCodeEqual"]!)")
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
		if(dropFolderIdEqual != nil) {
			dict["dropFolderIdEqual"] = dropFolderIdEqual!
		}
		if(dropFolderIdIn != nil) {
			dict["dropFolderIdIn"] = dropFolderIdIn!
		}
		if(fileNameEqual != nil) {
			dict["fileNameEqual"] = fileNameEqual!
		}
		if(fileNameIn != nil) {
			dict["fileNameIn"] = fileNameIn!
		}
		if(fileNameLike != nil) {
			dict["fileNameLike"] = fileNameLike!
		}
		if(statusEqual != nil) {
			dict["statusEqual"] = statusEqual!.rawValue
		}
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		if(statusNotIn != nil) {
			dict["statusNotIn"] = statusNotIn!
		}
		if(parsedSlugEqual != nil) {
			dict["parsedSlugEqual"] = parsedSlugEqual!
		}
		if(parsedSlugIn != nil) {
			dict["parsedSlugIn"] = parsedSlugIn!
		}
		if(parsedSlugLike != nil) {
			dict["parsedSlugLike"] = parsedSlugLike!
		}
		if(parsedFlavorEqual != nil) {
			dict["parsedFlavorEqual"] = parsedFlavorEqual!
		}
		if(parsedFlavorIn != nil) {
			dict["parsedFlavorIn"] = parsedFlavorIn!
		}
		if(parsedFlavorLike != nil) {
			dict["parsedFlavorLike"] = parsedFlavorLike!
		}
		if(leadDropFolderFileIdEqual != nil) {
			dict["leadDropFolderFileIdEqual"] = leadDropFolderFileIdEqual!
		}
		if(deletedDropFolderFileIdEqual != nil) {
			dict["deletedDropFolderFileIdEqual"] = deletedDropFolderFileIdEqual!
		}
		if(entryIdEqual != nil) {
			dict["entryIdEqual"] = entryIdEqual!
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

