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

open class MetadataProfile: ObjectBase {

	public var id: Int? = nil
	public var partnerId: Int? = nil
	public var metadataObjectType: MetadataObjectType? = nil
	public var version: Int? = nil
	public var name: String? = nil
	public var systemName: String? = nil
	public var description: String? = nil
	public var createdAt: Int? = nil
	public var updatedAt: Int? = nil
	public var status: MetadataProfileStatus? = nil
	public var xsd: String? = nil
	public var views: String? = nil
	public var xslt: String? = nil
	public var createMode: MetadataProfileCreateMode? = nil
	public var disableReIndexing: Bool? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["metadataObjectType"] != nil {
			metadataObjectType = MetadataObjectType(rawValue: "\(dict["metadataObjectType"]!)")
		}
		if dict["version"] != nil {
			version = dict["version"] as? Int
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["systemName"] != nil {
			systemName = dict["systemName"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["status"] != nil {
			status = MetadataProfileStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["xsd"] != nil {
			xsd = dict["xsd"] as? String
		}
		if dict["views"] != nil {
			views = dict["views"] as? String
		}
		if dict["xslt"] != nil {
			xslt = dict["xslt"] as? String
		}
		if dict["createMode"] != nil {
			createMode = MetadataProfileCreateMode(rawValue: (dict["createMode"] as? Int)!)
		}
		if dict["disableReIndexing"] != nil {
			disableReIndexing = dict["disableReIndexing"] as? Bool
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(metadataObjectType != nil) {
			dict["metadataObjectType"] = metadataObjectType!.rawValue
		}
		if(name != nil) {
			dict["name"] = name!
		}
		if(systemName != nil) {
			dict["systemName"] = systemName!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(createMode != nil) {
			dict["createMode"] = createMode!.rawValue
		}
		if(disableReIndexing != nil) {
			dict["disableReIndexing"] = disableReIndexing!
		}
		return dict
	}
}

