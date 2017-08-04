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

open class FeedItemInfo: ObjectBase {

	public var itemXPath: String? = nil
	public var itemPublishDateXPath: String? = nil
	public var itemUniqueIdentifierXPath: String? = nil
	public var itemContentFileSizeXPath: String? = nil
	public var itemContentUrlXPath: String? = nil
	public var itemContentBitrateXPath: String? = nil
	public var itemHashXPath: String? = nil
	public var itemContentXpath: String? = nil
	public var contentBitrateAttributeName: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["itemXPath"] != nil {
			itemXPath = dict["itemXPath"] as? String
		}
		if dict["itemPublishDateXPath"] != nil {
			itemPublishDateXPath = dict["itemPublishDateXPath"] as? String
		}
		if dict["itemUniqueIdentifierXPath"] != nil {
			itemUniqueIdentifierXPath = dict["itemUniqueIdentifierXPath"] as? String
		}
		if dict["itemContentFileSizeXPath"] != nil {
			itemContentFileSizeXPath = dict["itemContentFileSizeXPath"] as? String
		}
		if dict["itemContentUrlXPath"] != nil {
			itemContentUrlXPath = dict["itemContentUrlXPath"] as? String
		}
		if dict["itemContentBitrateXPath"] != nil {
			itemContentBitrateXPath = dict["itemContentBitrateXPath"] as? String
		}
		if dict["itemHashXPath"] != nil {
			itemHashXPath = dict["itemHashXPath"] as? String
		}
		if dict["itemContentXpath"] != nil {
			itemContentXpath = dict["itemContentXpath"] as? String
		}
		if dict["contentBitrateAttributeName"] != nil {
			contentBitrateAttributeName = dict["contentBitrateAttributeName"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(itemXPath != nil) {
			dict["itemXPath"] = itemXPath!
		}
		if(itemPublishDateXPath != nil) {
			dict["itemPublishDateXPath"] = itemPublishDateXPath!
		}
		if(itemUniqueIdentifierXPath != nil) {
			dict["itemUniqueIdentifierXPath"] = itemUniqueIdentifierXPath!
		}
		if(itemContentFileSizeXPath != nil) {
			dict["itemContentFileSizeXPath"] = itemContentFileSizeXPath!
		}
		if(itemContentUrlXPath != nil) {
			dict["itemContentUrlXPath"] = itemContentUrlXPath!
		}
		if(itemContentBitrateXPath != nil) {
			dict["itemContentBitrateXPath"] = itemContentBitrateXPath!
		}
		if(itemHashXPath != nil) {
			dict["itemHashXPath"] = itemHashXPath!
		}
		if(itemContentXpath != nil) {
			dict["itemContentXpath"] = itemContentXpath!
		}
		if(contentBitrateAttributeName != nil) {
			dict["contentBitrateAttributeName"] = contentBitrateAttributeName!
		}
		return dict
	}
}

