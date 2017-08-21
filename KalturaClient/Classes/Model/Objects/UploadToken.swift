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

open class UploadToken: ObjectBase {

	/**  Upload token unique ID  */
	public var id: String? = nil
	/**  Partner ID of the upload token  */
	public var partnerId: Int? = nil
	/**  User id for the upload token  */
	public var userId: String? = nil
	/**  Status of the upload token  */
	public var status: UploadTokenStatus? = nil
	/**  Name of the file for the upload token, can be empty when the upload token is
	  created and will be updated internally after the file is uploaded  */
	public var fileName: String? = nil
	/**  File size in bytes, can be empty when the upload token is created and will be
	  updated internally after the file is uploaded  */
	public var fileSize: Double? = nil
	/**  Uploaded file size in bytes, can be used to identify how many bytes were
	  uploaded before resuming  */
	public var uploadedFileSize: Double? = nil
	/**  Creation date as Unix timestamp (In seconds)  */
	public var createdAt: Int? = nil
	/**  Last update date as Unix timestamp (In seconds)  */
	public var updatedAt: Int? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? String
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["userId"] != nil {
			userId = dict["userId"] as? String
		}
		if dict["status"] != nil {
			status = UploadTokenStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["fileName"] != nil {
			fileName = dict["fileName"] as? String
		}
		if dict["fileSize"] != nil {
			fileSize = dict["fileSize"] as? Double
		}
		if dict["uploadedFileSize"] != nil {
			uploadedFileSize = dict["uploadedFileSize"] as? Double
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(fileName != nil) {
			dict["fileName"] = fileName!
		}
		if(fileSize != nil) {
			dict["fileSize"] = fileSize!
		}
		return dict
	}
}

