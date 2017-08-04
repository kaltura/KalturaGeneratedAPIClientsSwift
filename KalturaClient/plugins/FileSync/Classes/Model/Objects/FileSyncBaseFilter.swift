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

open class FileSyncBaseFilter: Filter {

	public var partnerIdEqual: Int? = nil
	public var fileObjectTypeEqual: FileSyncObjectType? = nil
	public var fileObjectTypeIn: String? = nil
	public var objectIdEqual: String? = nil
	public var objectIdIn: String? = nil
	public var versionEqual: String? = nil
	public var versionIn: String? = nil
	public var objectSubTypeEqual: Int? = nil
	public var objectSubTypeIn: String? = nil
	public var dcEqual: String? = nil
	public var dcIn: String? = nil
	public var originalEqual: Int? = nil
	public var createdAtGreaterThanOrEqual: Int? = nil
	public var createdAtLessThanOrEqual: Int? = nil
	public var updatedAtGreaterThanOrEqual: Int? = nil
	public var updatedAtLessThanOrEqual: Int? = nil
	public var readyAtGreaterThanOrEqual: Int? = nil
	public var readyAtLessThanOrEqual: Int? = nil
	public var syncTimeGreaterThanOrEqual: Int? = nil
	public var syncTimeLessThanOrEqual: Int? = nil
	public var statusEqual: FileSyncStatus? = nil
	public var statusIn: String? = nil
	public var fileTypeEqual: FileSyncType? = nil
	public var fileTypeIn: String? = nil
	public var linkedIdEqual: Int? = nil
	public var linkCountGreaterThanOrEqual: Int? = nil
	public var linkCountLessThanOrEqual: Int? = nil
	public var fileSizeGreaterThanOrEqual: Double? = nil
	public var fileSizeLessThanOrEqual: Double? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["partnerIdEqual"] != nil {
			partnerIdEqual = dict["partnerIdEqual"] as? Int
		}
		if dict["fileObjectTypeEqual"] != nil {
			fileObjectTypeEqual = FileSyncObjectType(rawValue: "\(dict["fileObjectTypeEqual"]!)")
		}
		if dict["fileObjectTypeIn"] != nil {
			fileObjectTypeIn = dict["fileObjectTypeIn"] as? String
		}
		if dict["objectIdEqual"] != nil {
			objectIdEqual = dict["objectIdEqual"] as? String
		}
		if dict["objectIdIn"] != nil {
			objectIdIn = dict["objectIdIn"] as? String
		}
		if dict["versionEqual"] != nil {
			versionEqual = dict["versionEqual"] as? String
		}
		if dict["versionIn"] != nil {
			versionIn = dict["versionIn"] as? String
		}
		if dict["objectSubTypeEqual"] != nil {
			objectSubTypeEqual = dict["objectSubTypeEqual"] as? Int
		}
		if dict["objectSubTypeIn"] != nil {
			objectSubTypeIn = dict["objectSubTypeIn"] as? String
		}
		if dict["dcEqual"] != nil {
			dcEqual = dict["dcEqual"] as? String
		}
		if dict["dcIn"] != nil {
			dcIn = dict["dcIn"] as? String
		}
		if dict["originalEqual"] != nil {
			originalEqual = dict["originalEqual"] as? Int
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
		if dict["readyAtGreaterThanOrEqual"] != nil {
			readyAtGreaterThanOrEqual = dict["readyAtGreaterThanOrEqual"] as? Int
		}
		if dict["readyAtLessThanOrEqual"] != nil {
			readyAtLessThanOrEqual = dict["readyAtLessThanOrEqual"] as? Int
		}
		if dict["syncTimeGreaterThanOrEqual"] != nil {
			syncTimeGreaterThanOrEqual = dict["syncTimeGreaterThanOrEqual"] as? Int
		}
		if dict["syncTimeLessThanOrEqual"] != nil {
			syncTimeLessThanOrEqual = dict["syncTimeLessThanOrEqual"] as? Int
		}
		if dict["statusEqual"] != nil {
			statusEqual = FileSyncStatus(rawValue: (dict["statusEqual"] as? Int)!)
		}
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
		}
		if dict["fileTypeEqual"] != nil {
			fileTypeEqual = FileSyncType(rawValue: (dict["fileTypeEqual"] as? Int)!)
		}
		if dict["fileTypeIn"] != nil {
			fileTypeIn = dict["fileTypeIn"] as? String
		}
		if dict["linkedIdEqual"] != nil {
			linkedIdEqual = dict["linkedIdEqual"] as? Int
		}
		if dict["linkCountGreaterThanOrEqual"] != nil {
			linkCountGreaterThanOrEqual = dict["linkCountGreaterThanOrEqual"] as? Int
		}
		if dict["linkCountLessThanOrEqual"] != nil {
			linkCountLessThanOrEqual = dict["linkCountLessThanOrEqual"] as? Int
		}
		if dict["fileSizeGreaterThanOrEqual"] != nil {
			fileSizeGreaterThanOrEqual = dict["fileSizeGreaterThanOrEqual"] as? Double
		}
		if dict["fileSizeLessThanOrEqual"] != nil {
			fileSizeLessThanOrEqual = dict["fileSizeLessThanOrEqual"] as? Double
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(partnerIdEqual != nil) {
			dict["partnerIdEqual"] = partnerIdEqual!
		}
		if(fileObjectTypeEqual != nil) {
			dict["fileObjectTypeEqual"] = fileObjectTypeEqual!.rawValue
		}
		if(fileObjectTypeIn != nil) {
			dict["fileObjectTypeIn"] = fileObjectTypeIn!
		}
		if(objectIdEqual != nil) {
			dict["objectIdEqual"] = objectIdEqual!
		}
		if(objectIdIn != nil) {
			dict["objectIdIn"] = objectIdIn!
		}
		if(versionEqual != nil) {
			dict["versionEqual"] = versionEqual!
		}
		if(versionIn != nil) {
			dict["versionIn"] = versionIn!
		}
		if(objectSubTypeEqual != nil) {
			dict["objectSubTypeEqual"] = objectSubTypeEqual!
		}
		if(objectSubTypeIn != nil) {
			dict["objectSubTypeIn"] = objectSubTypeIn!
		}
		if(dcEqual != nil) {
			dict["dcEqual"] = dcEqual!
		}
		if(dcIn != nil) {
			dict["dcIn"] = dcIn!
		}
		if(originalEqual != nil) {
			dict["originalEqual"] = originalEqual!
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
		if(readyAtGreaterThanOrEqual != nil) {
			dict["readyAtGreaterThanOrEqual"] = readyAtGreaterThanOrEqual!
		}
		if(readyAtLessThanOrEqual != nil) {
			dict["readyAtLessThanOrEqual"] = readyAtLessThanOrEqual!
		}
		if(syncTimeGreaterThanOrEqual != nil) {
			dict["syncTimeGreaterThanOrEqual"] = syncTimeGreaterThanOrEqual!
		}
		if(syncTimeLessThanOrEqual != nil) {
			dict["syncTimeLessThanOrEqual"] = syncTimeLessThanOrEqual!
		}
		if(statusEqual != nil) {
			dict["statusEqual"] = statusEqual!.rawValue
		}
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		if(fileTypeEqual != nil) {
			dict["fileTypeEqual"] = fileTypeEqual!.rawValue
		}
		if(fileTypeIn != nil) {
			dict["fileTypeIn"] = fileTypeIn!
		}
		if(linkedIdEqual != nil) {
			dict["linkedIdEqual"] = linkedIdEqual!
		}
		if(linkCountGreaterThanOrEqual != nil) {
			dict["linkCountGreaterThanOrEqual"] = linkCountGreaterThanOrEqual!
		}
		if(linkCountLessThanOrEqual != nil) {
			dict["linkCountLessThanOrEqual"] = linkCountLessThanOrEqual!
		}
		if(fileSizeGreaterThanOrEqual != nil) {
			dict["fileSizeGreaterThanOrEqual"] = fileSizeGreaterThanOrEqual!
		}
		if(fileSizeLessThanOrEqual != nil) {
			dict["fileSizeLessThanOrEqual"] = fileSizeLessThanOrEqual!
		}
		return dict
	}
}

