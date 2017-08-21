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

open class DropFolder: ObjectBase {

	public var id: Int? = nil
	public var partnerId: Int? = nil
	public var name: String? = nil
	public var description: String? = nil
	public var type: DropFolderType? = nil
	public var status: DropFolderStatus? = nil
	public var conversionProfileId: Int? = nil
	public var dc: Int? = nil
	public var path: String? = nil
	/**  The ammount of time, in seconds, that should pass so that a file with no change
	  in size we'll be treated as "finished uploading to folder"  */
	public var fileSizeCheckInterval: Int? = nil
	public var fileDeletePolicy: DropFolderFileDeletePolicy? = nil
	public var autoFileDeleteDays: Int? = nil
	public var fileHandlerType: DropFolderFileHandlerType? = nil
	public var fileNamePatterns: String? = nil
	public var fileHandlerConfig: DropFolderFileHandlerConfig? = nil
	public var tags: String? = nil
	public var errorCode: DropFolderErrorCode? = nil
	public var errorDescription: String? = nil
	public var ignoreFileNamePatterns: String? = nil
	public var createdAt: Int? = nil
	public var updatedAt: Int? = nil
	public var lastAccessedAt: Int? = nil
	public var incremental: Bool? = nil
	public var lastFileTimestamp: Int? = nil
	public var metadataProfileId: Int? = nil
	public var categoriesMetadataFieldName: String? = nil
	public var enforceEntitlement: Bool? = nil
	public var shouldValidateKS: Bool? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["type"] != nil {
			type = DropFolderType(rawValue: "\(dict["type"]!)")
		}
		if dict["status"] != nil {
			status = DropFolderStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["conversionProfileId"] != nil {
			conversionProfileId = dict["conversionProfileId"] as? Int
		}
		if dict["dc"] != nil {
			dc = dict["dc"] as? Int
		}
		if dict["path"] != nil {
			path = dict["path"] as? String
		}
		if dict["fileSizeCheckInterval"] != nil {
			fileSizeCheckInterval = dict["fileSizeCheckInterval"] as? Int
		}
		if dict["fileDeletePolicy"] != nil {
			fileDeletePolicy = DropFolderFileDeletePolicy(rawValue: (dict["fileDeletePolicy"] as? Int)!)
		}
		if dict["autoFileDeleteDays"] != nil {
			autoFileDeleteDays = dict["autoFileDeleteDays"] as? Int
		}
		if dict["fileHandlerType"] != nil {
			fileHandlerType = DropFolderFileHandlerType(rawValue: "\(dict["fileHandlerType"]!)")
		}
		if dict["fileNamePatterns"] != nil {
			fileNamePatterns = dict["fileNamePatterns"] as? String
		}
		if dict["fileHandlerConfig"] != nil {
		fileHandlerConfig = try JSONParser.parse(object: dict["fileHandlerConfig"] as! [String: Any])		}
		if dict["tags"] != nil {
			tags = dict["tags"] as? String
		}
		if dict["errorCode"] != nil {
			errorCode = DropFolderErrorCode(rawValue: "\(dict["errorCode"]!)")
		}
		if dict["errorDescription"] != nil {
			errorDescription = dict["errorDescription"] as? String
		}
		if dict["ignoreFileNamePatterns"] != nil {
			ignoreFileNamePatterns = dict["ignoreFileNamePatterns"] as? String
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["lastAccessedAt"] != nil {
			lastAccessedAt = dict["lastAccessedAt"] as? Int
		}
		if dict["incremental"] != nil {
			incremental = dict["incremental"] as? Bool
		}
		if dict["lastFileTimestamp"] != nil {
			lastFileTimestamp = dict["lastFileTimestamp"] as? Int
		}
		if dict["metadataProfileId"] != nil {
			metadataProfileId = dict["metadataProfileId"] as? Int
		}
		if dict["categoriesMetadataFieldName"] != nil {
			categoriesMetadataFieldName = dict["categoriesMetadataFieldName"] as? String
		}
		if dict["enforceEntitlement"] != nil {
			enforceEntitlement = dict["enforceEntitlement"] as? Bool
		}
		if dict["shouldValidateKS"] != nil {
			shouldValidateKS = dict["shouldValidateKS"] as? Bool
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(partnerId != nil) {
			dict["partnerId"] = partnerId!
		}
		if(name != nil) {
			dict["name"] = name!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(type != nil) {
			dict["type"] = type!.rawValue
		}
		if(status != nil) {
			dict["status"] = status!.rawValue
		}
		if(conversionProfileId != nil) {
			dict["conversionProfileId"] = conversionProfileId!
		}
		if(dc != nil) {
			dict["dc"] = dc!
		}
		if(path != nil) {
			dict["path"] = path!
		}
		if(fileSizeCheckInterval != nil) {
			dict["fileSizeCheckInterval"] = fileSizeCheckInterval!
		}
		if(fileDeletePolicy != nil) {
			dict["fileDeletePolicy"] = fileDeletePolicy!.rawValue
		}
		if(autoFileDeleteDays != nil) {
			dict["autoFileDeleteDays"] = autoFileDeleteDays!
		}
		if(fileHandlerType != nil) {
			dict["fileHandlerType"] = fileHandlerType!.rawValue
		}
		if(fileNamePatterns != nil) {
			dict["fileNamePatterns"] = fileNamePatterns!
		}
		if(fileHandlerConfig != nil) {
			dict["fileHandlerConfig"] = fileHandlerConfig!.toDictionary()
		}
		if(tags != nil) {
			dict["tags"] = tags!
		}
		if(errorCode != nil) {
			dict["errorCode"] = errorCode!.rawValue
		}
		if(errorDescription != nil) {
			dict["errorDescription"] = errorDescription!
		}
		if(ignoreFileNamePatterns != nil) {
			dict["ignoreFileNamePatterns"] = ignoreFileNamePatterns!
		}
		if(lastAccessedAt != nil) {
			dict["lastAccessedAt"] = lastAccessedAt!
		}
		if(incremental != nil) {
			dict["incremental"] = incremental!
		}
		if(lastFileTimestamp != nil) {
			dict["lastFileTimestamp"] = lastFileTimestamp!
		}
		if(metadataProfileId != nil) {
			dict["metadataProfileId"] = metadataProfileId!
		}
		if(categoriesMetadataFieldName != nil) {
			dict["categoriesMetadataFieldName"] = categoriesMetadataFieldName!
		}
		if(enforceEntitlement != nil) {
			dict["enforceEntitlement"] = enforceEntitlement!
		}
		if(shouldValidateKS != nil) {
			dict["shouldValidateKS"] = shouldValidateKS!
		}
		return dict
	}
}

