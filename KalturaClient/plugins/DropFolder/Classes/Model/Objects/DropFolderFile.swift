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

open class DropFolderFile: ObjectBase {

	public var id: Int? = nil
	public var partnerId: Int? = nil
	public var dropFolderId: Int? = nil
	public var fileName: String? = nil
	public var fileSize: Double? = nil
	public var fileSizeLastSetAt: Int? = nil
	public var status: DropFolderFileStatus? = nil
	public var type: DropFolderType? = nil
	public var parsedSlug: String? = nil
	public var parsedFlavor: String? = nil
	public var parsedUserId: String? = nil
	public var leadDropFolderFileId: Int? = nil
	public var deletedDropFolderFileId: Int? = nil
	public var entryId: String? = nil
	public var errorCode: DropFolderFileErrorCode? = nil
	public var errorDescription: String? = nil
	public var lastModificationTime: String? = nil
	public var createdAt: Int? = nil
	public var updatedAt: Int? = nil
	public var uploadStartDetectedAt: Int? = nil
	public var uploadEndDetectedAt: Int? = nil
	public var importStartedAt: Int? = nil
	public var importEndedAt: Int? = nil
	public var batchJobId: Int? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["dropFolderId"] != nil {
			dropFolderId = dict["dropFolderId"] as? Int
		}
		if dict["fileName"] != nil {
			fileName = dict["fileName"] as? String
		}
		if dict["fileSize"] != nil {
			fileSize = dict["fileSize"] as? Double
		}
		if dict["fileSizeLastSetAt"] != nil {
			fileSizeLastSetAt = dict["fileSizeLastSetAt"] as? Int
		}
		if dict["status"] != nil {
			status = DropFolderFileStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["type"] != nil {
			type = DropFolderType(rawValue: "\(dict["type"]!)")
		}
		if dict["parsedSlug"] != nil {
			parsedSlug = dict["parsedSlug"] as? String
		}
		if dict["parsedFlavor"] != nil {
			parsedFlavor = dict["parsedFlavor"] as? String
		}
		if dict["parsedUserId"] != nil {
			parsedUserId = dict["parsedUserId"] as? String
		}
		if dict["leadDropFolderFileId"] != nil {
			leadDropFolderFileId = dict["leadDropFolderFileId"] as? Int
		}
		if dict["deletedDropFolderFileId"] != nil {
			deletedDropFolderFileId = dict["deletedDropFolderFileId"] as? Int
		}
		if dict["entryId"] != nil {
			entryId = dict["entryId"] as? String
		}
		if dict["errorCode"] != nil {
			errorCode = DropFolderFileErrorCode(rawValue: "\(dict["errorCode"]!)")
		}
		if dict["errorDescription"] != nil {
			errorDescription = dict["errorDescription"] as? String
		}
		if dict["lastModificationTime"] != nil {
			lastModificationTime = dict["lastModificationTime"] as? String
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["uploadStartDetectedAt"] != nil {
			uploadStartDetectedAt = dict["uploadStartDetectedAt"] as? Int
		}
		if dict["uploadEndDetectedAt"] != nil {
			uploadEndDetectedAt = dict["uploadEndDetectedAt"] as? Int
		}
		if dict["importStartedAt"] != nil {
			importStartedAt = dict["importStartedAt"] as? Int
		}
		if dict["importEndedAt"] != nil {
			importEndedAt = dict["importEndedAt"] as? Int
		}
		if dict["batchJobId"] != nil {
			batchJobId = dict["batchJobId"] as? Int
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(dropFolderId != nil) {
			dict["dropFolderId"] = dropFolderId!
		}
		if(fileName != nil) {
			dict["fileName"] = fileName!
		}
		if(fileSize != nil) {
			dict["fileSize"] = fileSize!
		}
		if(parsedSlug != nil) {
			dict["parsedSlug"] = parsedSlug!
		}
		if(parsedFlavor != nil) {
			dict["parsedFlavor"] = parsedFlavor!
		}
		if(parsedUserId != nil) {
			dict["parsedUserId"] = parsedUserId!
		}
		if(leadDropFolderFileId != nil) {
			dict["leadDropFolderFileId"] = leadDropFolderFileId!
		}
		if(deletedDropFolderFileId != nil) {
			dict["deletedDropFolderFileId"] = deletedDropFolderFileId!
		}
		if(entryId != nil) {
			dict["entryId"] = entryId!
		}
		if(errorCode != nil) {
			dict["errorCode"] = errorCode!.rawValue
		}
		if(errorDescription != nil) {
			dict["errorDescription"] = errorDescription!
		}
		if(lastModificationTime != nil) {
			dict["lastModificationTime"] = lastModificationTime!
		}
		if(uploadStartDetectedAt != nil) {
			dict["uploadStartDetectedAt"] = uploadStartDetectedAt!
		}
		if(uploadEndDetectedAt != nil) {
			dict["uploadEndDetectedAt"] = uploadEndDetectedAt!
		}
		if(importStartedAt != nil) {
			dict["importStartedAt"] = importStartedAt!
		}
		if(importEndedAt != nil) {
			dict["importEndedAt"] = importEndedAt!
		}
		return dict
	}
}

