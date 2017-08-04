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

open class BulkUploadResultScheduleResource: BulkUploadResult {

	public var resourceId: String? = nil
	public var name: String? = nil
	public var type: String? = nil
	public var systemName: String? = nil
	public var description: String? = nil
	public var tags: String? = nil
	public var parentType: String? = nil
	public var parentSystemName: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["resourceId"] != nil {
			resourceId = dict["resourceId"] as? String
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["type"] != nil {
			type = dict["type"] as? String
		}
		if dict["systemName"] != nil {
			systemName = dict["systemName"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["tags"] != nil {
			tags = dict["tags"] as? String
		}
		if dict["parentType"] != nil {
			parentType = dict["parentType"] as? String
		}
		if dict["parentSystemName"] != nil {
			parentSystemName = dict["parentSystemName"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(resourceId != nil) {
			dict["resourceId"] = resourceId!
		}
		if(name != nil) {
			dict["name"] = name!
		}
		if(type != nil) {
			dict["type"] = type!
		}
		if(systemName != nil) {
			dict["systemName"] = systemName!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(tags != nil) {
			dict["tags"] = tags!
		}
		if(parentType != nil) {
			dict["parentType"] = parentType!
		}
		if(parentSystemName != nil) {
			dict["parentSystemName"] = parentSystemName!
		}
		return dict
	}
}

