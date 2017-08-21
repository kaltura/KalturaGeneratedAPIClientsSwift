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

open class DetachedResponseProfile: BaseResponseProfile {

	/**  Friendly name  */
	public var name: String? = nil
	public var type: ResponseProfileType? = nil
	/**  Comma separated fields list to be included or excluded  */
	public var fields: String? = nil
	public var filter: RelatedFilter? = nil
	public var pager: FilterPager? = nil
	public var relatedProfiles: Array<DetachedResponseProfile>? = nil
	public var mappings: Array<ResponseProfileMapping>? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["type"] != nil {
			type = ResponseProfileType(rawValue: (dict["type"] as? Int)!)
		}
		if dict["fields"] != nil {
			fields = dict["fields"] as? String
		}
		if dict["filter"] != nil {
		filter = try JSONParser.parse(object: dict["filter"] as! [String: Any])		}
		if dict["pager"] != nil {
		pager = try JSONParser.parse(object: dict["pager"] as! [String: Any])		}
		if dict["relatedProfiles"] != nil {
			relatedProfiles = try JSONParser.parse(array: dict["relatedProfiles"] as! [Any])
		}
		if dict["mappings"] != nil {
			mappings = try JSONParser.parse(array: dict["mappings"] as! [Any])
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(type != nil) {
			dict["type"] = type!.rawValue
		}
		if(fields != nil) {
			dict["fields"] = fields!
		}
		if(filter != nil) {
			dict["filter"] = filter!.toDictionary()
		}
		if(pager != nil) {
			dict["pager"] = pager!.toDictionary()
		}
		if(relatedProfiles != nil) {
			dict["relatedProfiles"] = relatedProfiles!.map { value in value.toDictionary() }
		}
		if(mappings != nil) {
			dict["mappings"] = mappings!.map { value in value.toDictionary() }
		}
		return dict
	}
}

