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

/**  Used to ingest media that is already ingested to Kaltura system as a different
  file in the past, the new created flavor asset will be ready immediately using a
  file sync of link type that will point to the existing file sync.  */
open class FileSyncResource: ContentResource {

	/**  The object type of the file sync object  */
	public var fileSyncObjectType: Int? = nil
	/**  The object sub-type of the file sync object  */
	public var objectSubType: Int? = nil
	/**  The object id of the file sync object  */
	public var objectId: String? = nil
	/**  The version of the file sync object  */
	public var version: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["fileSyncObjectType"] != nil {
			fileSyncObjectType = dict["fileSyncObjectType"] as? Int
		}
		if dict["objectSubType"] != nil {
			objectSubType = dict["objectSubType"] as? Int
		}
		if dict["objectId"] != nil {
			objectId = dict["objectId"] as? String
		}
		if dict["version"] != nil {
			version = dict["version"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(fileSyncObjectType != nil) {
			dict["fileSyncObjectType"] = fileSyncObjectType!
		}
		if(objectSubType != nil) {
			dict["objectSubType"] = objectSubType!
		}
		if(objectId != nil) {
			dict["objectId"] = objectId!
		}
		if(version != nil) {
			dict["version"] = version!
		}
		return dict
	}
}

