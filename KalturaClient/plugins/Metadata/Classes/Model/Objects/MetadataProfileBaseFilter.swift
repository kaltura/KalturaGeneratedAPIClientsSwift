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

open class MetadataProfileBaseFilter: Filter {

	public var idEqual: Int? = nil
	public var partnerIdEqual: Int? = nil
	public var metadataObjectTypeEqual: MetadataObjectType? = nil
	public var metadataObjectTypeIn: String? = nil
	public var versionEqual: Int? = nil
	public var nameEqual: String? = nil
	public var systemNameEqual: String? = nil
	public var systemNameIn: String? = nil
	public var createdAtGreaterThanOrEqual: Int? = nil
	public var createdAtLessThanOrEqual: Int? = nil
	public var updatedAtGreaterThanOrEqual: Int? = nil
	public var updatedAtLessThanOrEqual: Int? = nil
	public var statusEqual: MetadataProfileStatus? = nil
	public var statusIn: String? = nil
	public var createModeEqual: MetadataProfileCreateMode? = nil
	public var createModeNotEqual: MetadataProfileCreateMode? = nil
	public var createModeIn: String? = nil
	public var createModeNotIn: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["idEqual"] != nil {
			idEqual = dict["idEqual"] as? Int
		}
		if dict["partnerIdEqual"] != nil {
			partnerIdEqual = dict["partnerIdEqual"] as? Int
		}
		if dict["metadataObjectTypeEqual"] != nil {
			metadataObjectTypeEqual = MetadataObjectType(rawValue: "\(dict["metadataObjectTypeEqual"]!)")
		}
		if dict["metadataObjectTypeIn"] != nil {
			metadataObjectTypeIn = dict["metadataObjectTypeIn"] as? String
		}
		if dict["versionEqual"] != nil {
			versionEqual = dict["versionEqual"] as? Int
		}
		if dict["nameEqual"] != nil {
			nameEqual = dict["nameEqual"] as? String
		}
		if dict["systemNameEqual"] != nil {
			systemNameEqual = dict["systemNameEqual"] as? String
		}
		if dict["systemNameIn"] != nil {
			systemNameIn = dict["systemNameIn"] as? String
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
		if dict["statusEqual"] != nil {
			statusEqual = MetadataProfileStatus(rawValue: (dict["statusEqual"] as? Int)!)
		}
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
		}
		if dict["createModeEqual"] != nil {
			createModeEqual = MetadataProfileCreateMode(rawValue: (dict["createModeEqual"] as? Int)!)
		}
		if dict["createModeNotEqual"] != nil {
			createModeNotEqual = MetadataProfileCreateMode(rawValue: (dict["createModeNotEqual"] as? Int)!)
		}
		if dict["createModeIn"] != nil {
			createModeIn = dict["createModeIn"] as? String
		}
		if dict["createModeNotIn"] != nil {
			createModeNotIn = dict["createModeNotIn"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(idEqual != nil) {
			dict["idEqual"] = idEqual!
		}
		if(partnerIdEqual != nil) {
			dict["partnerIdEqual"] = partnerIdEqual!
		}
		if(metadataObjectTypeEqual != nil) {
			dict["metadataObjectTypeEqual"] = metadataObjectTypeEqual!.rawValue
		}
		if(metadataObjectTypeIn != nil) {
			dict["metadataObjectTypeIn"] = metadataObjectTypeIn!
		}
		if(versionEqual != nil) {
			dict["versionEqual"] = versionEqual!
		}
		if(nameEqual != nil) {
			dict["nameEqual"] = nameEqual!
		}
		if(systemNameEqual != nil) {
			dict["systemNameEqual"] = systemNameEqual!
		}
		if(systemNameIn != nil) {
			dict["systemNameIn"] = systemNameIn!
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
		if(statusEqual != nil) {
			dict["statusEqual"] = statusEqual!.rawValue
		}
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		if(createModeEqual != nil) {
			dict["createModeEqual"] = createModeEqual!.rawValue
		}
		if(createModeNotEqual != nil) {
			dict["createModeNotEqual"] = createModeNotEqual!.rawValue
		}
		if(createModeIn != nil) {
			dict["createModeIn"] = createModeIn!
		}
		if(createModeNotIn != nil) {
			dict["createModeNotIn"] = createModeNotIn!
		}
		return dict
	}
}

