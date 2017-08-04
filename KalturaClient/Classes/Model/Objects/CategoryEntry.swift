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

open class CategoryEntry: ObjectBase {

	public var categoryId: Int? = nil
	/**  entry id  */
	public var entryId: String? = nil
	/**  Creation date as Unix timestamp (In seconds)  */
	public var createdAt: Int? = nil
	/**  The full ids of the Category  */
	public var categoryFullIds: String? = nil
	/**  CategroyEntry status  */
	public var status: CategoryEntryStatus? = nil
	/**  CategroyEntry creator puser ID  */
	public var creatorUserId: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["categoryId"] != nil {
			categoryId = dict["categoryId"] as? Int
		}
		if dict["entryId"] != nil {
			entryId = dict["entryId"] as? String
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["categoryFullIds"] != nil {
			categoryFullIds = dict["categoryFullIds"] as? String
		}
		if dict["status"] != nil {
			status = CategoryEntryStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["creatorUserId"] != nil {
			creatorUserId = dict["creatorUserId"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(categoryId != nil) {
			dict["categoryId"] = categoryId!
		}
		if(entryId != nil) {
			dict["entryId"] = entryId!
		}
		return dict
	}
}

