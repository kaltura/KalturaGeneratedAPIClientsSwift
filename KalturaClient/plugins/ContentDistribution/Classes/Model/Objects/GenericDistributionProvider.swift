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

open class GenericDistributionProvider: DistributionProvider {

	/**  Auto generated  */
	public var id: Int? = nil
	/**  Generic distribution provider creation date as Unix timestamp (In seconds)  */
	public var createdAt: Int? = nil
	/**  Generic distribution provider last update date as Unix timestamp (In seconds)  */
	public var updatedAt: Int? = nil
	public var partnerId: Int? = nil
	public var isDefault: Bool? = nil
	public var status: GenericDistributionProviderStatus? = nil
	public var optionalFlavorParamsIds: String? = nil
	public var requiredFlavorParamsIds: String? = nil
	public var optionalThumbDimensions: Array<DistributionThumbDimensions>? = nil
	public var requiredThumbDimensions: Array<DistributionThumbDimensions>? = nil
	public var editableFields: String? = nil
	public var mandatoryFields: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["isDefault"] != nil {
			isDefault = dict["isDefault"] as? Bool
		}
		if dict["status"] != nil {
			status = GenericDistributionProviderStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["optionalFlavorParamsIds"] != nil {
			optionalFlavorParamsIds = dict["optionalFlavorParamsIds"] as? String
		}
		if dict["requiredFlavorParamsIds"] != nil {
			requiredFlavorParamsIds = dict["requiredFlavorParamsIds"] as? String
		}
		if dict["optionalThumbDimensions"] != nil {
			optionalThumbDimensions = try JSONParser.parse(array: dict["optionalThumbDimensions"] as! [Any])
		}
		if dict["requiredThumbDimensions"] != nil {
			requiredThumbDimensions = try JSONParser.parse(array: dict["requiredThumbDimensions"] as! [Any])
		}
		if dict["editableFields"] != nil {
			editableFields = dict["editableFields"] as? String
		}
		if dict["mandatoryFields"] != nil {
			mandatoryFields = dict["mandatoryFields"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(isDefault != nil) {
			dict["isDefault"] = isDefault!
		}
		if(optionalFlavorParamsIds != nil) {
			dict["optionalFlavorParamsIds"] = optionalFlavorParamsIds!
		}
		if(requiredFlavorParamsIds != nil) {
			dict["requiredFlavorParamsIds"] = requiredFlavorParamsIds!
		}
		if(optionalThumbDimensions != nil) {
			dict["optionalThumbDimensions"] = optionalThumbDimensions!.map { value in value.toDictionary() }
		}
		if(requiredThumbDimensions != nil) {
			dict["requiredThumbDimensions"] = requiredThumbDimensions!.map { value in value.toDictionary() }
		}
		if(editableFields != nil) {
			dict["editableFields"] = editableFields!
		}
		if(mandatoryFields != nil) {
			dict["mandatoryFields"] = mandatoryFields!
		}
		return dict
	}
}

