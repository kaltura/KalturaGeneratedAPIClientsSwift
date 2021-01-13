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
// Copyright (C) 2006-2021  Kaltura Inc.
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

	public class UploadTokenTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var fileName: BaseTokenizedObject {
			get {
				return self.append("fileName") 
			}
		}
		
		public var fileSize: BaseTokenizedObject {
			get {
				return self.append("fileSize") 
			}
		}
		
		public var uploadedFileSize: BaseTokenizedObject {
			get {
				return self.append("uploadedFileSize") 
			}
		}
		
		public var createdAt: BaseTokenizedObject {
			get {
				return self.append("createdAt") 
			}
		}
		
		public var updatedAt: BaseTokenizedObject {
			get {
				return self.append("updatedAt") 
			}
		}
		
		public var uploadUrl: BaseTokenizedObject {
			get {
				return self.append("uploadUrl") 
			}
		}
		
		public var autoFinalize: BaseTokenizedObject {
			get {
				return self.append("autoFinalize") 
			}
		}
	}

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
	/**  Upload url - to explicitly determine to which domain to adress the
	  uploadToken-&gt;upload call  */
	public var uploadUrl: String? = nil
	/**  autoFinalize - Should the upload be finalized once the file size on disk matches
	  the file size reproted when adding the upload token.  */
	public var autoFinalize: Bool? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(userId: String) {
		self.dict["userId"] = userId
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(fileName: String) {
		self.dict["fileName"] = fileName
	}
	
	public func setMultiRequestToken(fileSize: String) {
		self.dict["fileSize"] = fileSize
	}
	
	public func setMultiRequestToken(uploadedFileSize: String) {
		self.dict["uploadedFileSize"] = uploadedFileSize
	}
	
	public func setMultiRequestToken(createdAt: String) {
		self.dict["createdAt"] = createdAt
	}
	
	public func setMultiRequestToken(updatedAt: String) {
		self.dict["updatedAt"] = updatedAt
	}
	
	public func setMultiRequestToken(uploadUrl: String) {
		self.dict["uploadUrl"] = uploadUrl
	}
	
	public func setMultiRequestToken(autoFinalize: String) {
		self.dict["autoFinalize"] = autoFinalize
	}
	
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
		if dict["uploadUrl"] != nil {
			uploadUrl = dict["uploadUrl"] as? String
		}
		if dict["autoFinalize"] != nil {
			autoFinalize = dict["autoFinalize"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(fileName != nil) {
			dict["fileName"] = fileName!
		}
		if(fileSize != nil) {
			dict["fileSize"] = fileSize!
		}
		if(autoFinalize != nil) {
			dict["autoFinalize"] = autoFinalize!
		}
		return dict
	}
}

