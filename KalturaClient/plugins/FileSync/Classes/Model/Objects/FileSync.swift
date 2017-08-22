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

open class FileSync: ObjectBase {

	public var id: Int64? = nil
	public var partnerId: Int? = nil
	public var fileObjectType: FileSyncObjectType? = nil
	public var objectId: String? = nil
	public var version: String? = nil
	public var objectSubType: Int? = nil
	public var dc: String? = nil
	public var original: Int? = nil
	public var createdAt: Int? = nil
	public var updatedAt: Int? = nil
	public var readyAt: Int? = nil
	public var syncTime: Int? = nil
	public var status: FileSyncStatus? = nil
	public var fileType: FileSyncType? = nil
	public var linkedId: Int? = nil
	public var linkCount: Int? = nil
	public var fileRoot: String? = nil
	public var filePath: String? = nil
	public var fileSize: Double? = nil
	public var fileUrl: String? = nil
	public var fileContent: String? = nil
	public var fileDiscSize: Double? = nil
	public var isCurrentDc: Bool? = nil
	public var isDir: Bool? = nil
	public var originalId: Int? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = Int64((dict["id"] as? String)!)
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["fileObjectType"] != nil {
			fileObjectType = FileSyncObjectType(rawValue: "\(dict["fileObjectType"]!)")
		}
		if dict["objectId"] != nil {
			objectId = dict["objectId"] as? String
		}
		if dict["version"] != nil {
			version = dict["version"] as? String
		}
		if dict["objectSubType"] != nil {
			objectSubType = dict["objectSubType"] as? Int
		}
		if dict["dc"] != nil {
			dc = dict["dc"] as? String
		}
		if dict["original"] != nil {
			original = dict["original"] as? Int
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["readyAt"] != nil {
			readyAt = dict["readyAt"] as? Int
		}
		if dict["syncTime"] != nil {
			syncTime = dict["syncTime"] as? Int
		}
		if dict["status"] != nil {
			status = FileSyncStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["fileType"] != nil {
			fileType = FileSyncType(rawValue: (dict["fileType"] as? Int)!)
		}
		if dict["linkedId"] != nil {
			linkedId = dict["linkedId"] as? Int
		}
		if dict["linkCount"] != nil {
			linkCount = dict["linkCount"] as? Int
		}
		if dict["fileRoot"] != nil {
			fileRoot = dict["fileRoot"] as? String
		}
		if dict["filePath"] != nil {
			filePath = dict["filePath"] as? String
		}
		if dict["fileSize"] != nil {
			fileSize = dict["fileSize"] as? Double
		}
		if dict["fileUrl"] != nil {
			fileUrl = dict["fileUrl"] as? String
		}
		if dict["fileContent"] != nil {
			fileContent = dict["fileContent"] as? String
		}
		if dict["fileDiscSize"] != nil {
			fileDiscSize = dict["fileDiscSize"] as? Double
		}
		if dict["isCurrentDc"] != nil {
			isCurrentDc = dict["isCurrentDc"] as? Bool
		}
		if dict["isDir"] != nil {
			isDir = dict["isDir"] as? Bool
		}
		if dict["originalId"] != nil {
			originalId = dict["originalId"] as? Int
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(status != nil) {
			dict["status"] = status!.rawValue
		}
		if(fileRoot != nil) {
			dict["fileRoot"] = fileRoot!
		}
		if(filePath != nil) {
			dict["filePath"] = filePath!
		}
		return dict
	}
}

