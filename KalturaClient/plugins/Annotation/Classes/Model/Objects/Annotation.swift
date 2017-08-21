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

open class Annotation: CuePoint {

	public var parentId: String? = nil
	public var text: String? = nil
	/**  End time in milliseconds  */
	public var endTime: Int? = nil
	/**  Duration in milliseconds  */
	public var duration: Int? = nil
	/**  Depth in the tree  */
	public var depth: Int? = nil
	/**  Number of all descendants  */
	public var childrenCount: Int? = nil
	/**  Number of children, first generation only.  */
	public var directChildrenCount: Int? = nil
	/**  Is the annotation public.  */
	public var isPublic: Bool? = nil
	/**  Should the cue point get indexed on the entry.  */
	public var searchableOnEntry: Bool? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["parentId"] != nil {
			parentId = dict["parentId"] as? String
		}
		if dict["text"] != nil {
			text = dict["text"] as? String
		}
		if dict["endTime"] != nil {
			endTime = dict["endTime"] as? Int
		}
		if dict["duration"] != nil {
			duration = dict["duration"] as? Int
		}
		if dict["depth"] != nil {
			depth = dict["depth"] as? Int
		}
		if dict["childrenCount"] != nil {
			childrenCount = dict["childrenCount"] as? Int
		}
		if dict["directChildrenCount"] != nil {
			directChildrenCount = dict["directChildrenCount"] as? Int
		}
		if dict["isPublic"] != nil {
			isPublic = dict["isPublic"] as? Bool
		}
		if dict["searchableOnEntry"] != nil {
			searchableOnEntry = dict["searchableOnEntry"] as? Bool
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(parentId != nil) {
			dict["parentId"] = parentId!
		}
		if(text != nil) {
			dict["text"] = text!
		}
		if(endTime != nil) {
			dict["endTime"] = endTime!
		}
		if(isPublic != nil) {
			dict["isPublic"] = isPublic!
		}
		if(searchableOnEntry != nil) {
			dict["searchableOnEntry"] = searchableOnEntry!
		}
		return dict
	}
}

