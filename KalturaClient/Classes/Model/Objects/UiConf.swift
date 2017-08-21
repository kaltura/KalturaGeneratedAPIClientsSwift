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

open class UiConf: ObjectBase {

	public var id: Int? = nil
	/**  Name of the uiConf, this is not a primary key  */
	public var name: String? = nil
	public var description: String? = nil
	public var partnerId: Int? = nil
	public var objType: UiConfObjType? = nil
	public var objTypeAsString: String? = nil
	public var width: Int? = nil
	public var height: Int? = nil
	public var htmlParams: String? = nil
	public var swfUrl: String? = nil
	public var confFilePath: String? = nil
	public var confFile: String? = nil
	public var confFileFeatures: String? = nil
	public var config: String? = nil
	public var confVars: String? = nil
	public var useCdn: Bool? = nil
	public var tags: String? = nil
	public var swfUrlVersion: String? = nil
	/**  Entry creation date as Unix timestamp (In seconds)  */
	public var createdAt: Int? = nil
	/**  Entry creation date as Unix timestamp (In seconds)  */
	public var updatedAt: Int? = nil
	public var creationMode: UiConfCreationMode? = nil
	public var html5Url: String? = nil
	/**  UiConf version  */
	public var version: String? = nil
	public var partnerTags: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["objType"] != nil {
			objType = UiConfObjType(rawValue: (dict["objType"] as? Int)!)
		}
		if dict["objTypeAsString"] != nil {
			objTypeAsString = dict["objTypeAsString"] as? String
		}
		if dict["width"] != nil {
			width = dict["width"] as? Int
		}
		if dict["height"] != nil {
			height = dict["height"] as? Int
		}
		if dict["htmlParams"] != nil {
			htmlParams = dict["htmlParams"] as? String
		}
		if dict["swfUrl"] != nil {
			swfUrl = dict["swfUrl"] as? String
		}
		if dict["confFilePath"] != nil {
			confFilePath = dict["confFilePath"] as? String
		}
		if dict["confFile"] != nil {
			confFile = dict["confFile"] as? String
		}
		if dict["confFileFeatures"] != nil {
			confFileFeatures = dict["confFileFeatures"] as? String
		}
		if dict["config"] != nil {
			config = dict["config"] as? String
		}
		if dict["confVars"] != nil {
			confVars = dict["confVars"] as? String
		}
		if dict["useCdn"] != nil {
			useCdn = dict["useCdn"] as? Bool
		}
		if dict["tags"] != nil {
			tags = dict["tags"] as? String
		}
		if dict["swfUrlVersion"] != nil {
			swfUrlVersion = dict["swfUrlVersion"] as? String
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["creationMode"] != nil {
			creationMode = UiConfCreationMode(rawValue: (dict["creationMode"] as? Int)!)
		}
		if dict["html5Url"] != nil {
			html5Url = dict["html5Url"] as? String
		}
		if dict["version"] != nil {
			version = dict["version"] as? String
		}
		if dict["partnerTags"] != nil {
			partnerTags = dict["partnerTags"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(objType != nil) {
			dict["objType"] = objType!.rawValue
		}
		if(width != nil) {
			dict["width"] = width!
		}
		if(height != nil) {
			dict["height"] = height!
		}
		if(htmlParams != nil) {
			dict["htmlParams"] = htmlParams!
		}
		if(swfUrl != nil) {
			dict["swfUrl"] = swfUrl!
		}
		if(confFile != nil) {
			dict["confFile"] = confFile!
		}
		if(confFileFeatures != nil) {
			dict["confFileFeatures"] = confFileFeatures!
		}
		if(config != nil) {
			dict["config"] = config!
		}
		if(confVars != nil) {
			dict["confVars"] = confVars!
		}
		if(useCdn != nil) {
			dict["useCdn"] = useCdn!
		}
		if(tags != nil) {
			dict["tags"] = tags!
		}
		if(swfUrlVersion != nil) {
			dict["swfUrlVersion"] = swfUrlVersion!
		}
		if(creationMode != nil) {
			dict["creationMode"] = creationMode!.rawValue
		}
		if(html5Url != nil) {
			dict["html5Url"] = html5Url!
		}
		if(partnerTags != nil) {
			dict["partnerTags"] = partnerTags!
		}
		return dict
	}
}

