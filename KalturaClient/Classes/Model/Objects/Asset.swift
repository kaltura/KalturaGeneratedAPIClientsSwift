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

open class Asset: ObjectBase {

	/**  The ID of the Flavor Asset  */
	public var id: String? = nil
	/**  The entry ID of the Flavor Asset  */
	public var entryId: String? = nil
	public var partnerId: Int? = nil
	/**  The version of the Flavor Asset  */
	public var version: Int? = nil
	/**  The size (in KBytes) of the Flavor Asset  */
	public var size: Int? = nil
	/**  Tags used to identify the Flavor Asset in various scenarios  */
	public var tags: String? = nil
	/**  The file extension  */
	public var fileExt: String? = nil
	public var createdAt: Int? = nil
	public var updatedAt: Int? = nil
	public var deletedAt: Int? = nil
	/**  System description, error message, warnings and failure cause.  */
	public var description: String? = nil
	/**  Partner private data  */
	public var partnerData: String? = nil
	/**  Partner friendly description  */
	public var partnerDescription: String? = nil
	/**  Comma separated list of source flavor params ids  */
	public var actualSourceAssetParamsIds: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? String
		}
		if dict["entryId"] != nil {
			entryId = dict["entryId"] as? String
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["version"] != nil {
			version = dict["version"] as? Int
		}
		if dict["size"] != nil {
			size = dict["size"] as? Int
		}
		if dict["tags"] != nil {
			tags = dict["tags"] as? String
		}
		if dict["fileExt"] != nil {
			fileExt = dict["fileExt"] as? String
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["deletedAt"] != nil {
			deletedAt = dict["deletedAt"] as? Int
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["partnerData"] != nil {
			partnerData = dict["partnerData"] as? String
		}
		if dict["partnerDescription"] != nil {
			partnerDescription = dict["partnerDescription"] as? String
		}
		if dict["actualSourceAssetParamsIds"] != nil {
			actualSourceAssetParamsIds = dict["actualSourceAssetParamsIds"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(tags != nil) {
			dict["tags"] = tags!
		}
		if(fileExt != nil) {
			dict["fileExt"] = fileExt!
		}
		if(partnerData != nil) {
			dict["partnerData"] = partnerData!
		}
		if(partnerDescription != nil) {
			dict["partnerDescription"] = partnerDescription!
		}
		if(actualSourceAssetParamsIds != nil) {
			dict["actualSourceAssetParamsIds"] = actualSourceAssetParamsIds!
		}
		return dict
	}
}

