// ===================================================================================================
//                           _  __     _ _
//                          | |/ /__ _| | |_ _  _ _ _ __ _
//                          | ' </ _` | |  _| || | '_/ _` |
//                          |_|\_\__,_|_|\__|\_,_|_| \__,_|
//
// This file is part of the Kaltura Collaborative Media Suite which allows users
// to do with audio, video, and animation what Wiki platforms allow them to do with
// text.
//
// Copyright (C) 2006-2023  Kaltura Inc.
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

open class UploadResponse: ObjectBase {

	public class UploadResponseTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var uploadTokenId: BaseTokenizedObject {
			get {
				return self.append("uploadTokenId") 
			}
		}
		
		public var fileSize: BaseTokenizedObject {
			get {
				return self.append("fileSize") 
			}
		}
		
		public var errorCode: BaseTokenizedObject {
			get {
				return self.append("errorCode") 
			}
		}
		
		public var errorDescription: BaseTokenizedObject {
			get {
				return self.append("errorDescription") 
			}
		}
	}

	public var uploadTokenId: String? = nil
	public var fileSize: Int? = nil
	public var errorCode: UploadErrorCode? = nil
	public var errorDescription: String? = nil


	public func setMultiRequestToken(uploadTokenId: String) {
		self.dict["uploadTokenId"] = uploadTokenId
	}
	
	public func setMultiRequestToken(fileSize: String) {
		self.dict["fileSize"] = fileSize
	}
	
	public func setMultiRequestToken(errorCode: String) {
		self.dict["errorCode"] = errorCode
	}
	
	public func setMultiRequestToken(errorDescription: String) {
		self.dict["errorDescription"] = errorDescription
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["uploadTokenId"] != nil {
			uploadTokenId = dict["uploadTokenId"] as? String
		}
		if dict["fileSize"] != nil {
			fileSize = dict["fileSize"] as? Int
		}
		if dict["errorCode"] != nil {
			errorCode = UploadErrorCode(rawValue: (dict["errorCode"] as? Int)!)
		}
		if dict["errorDescription"] != nil {
			errorDescription = dict["errorDescription"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(uploadTokenId != nil) {
			dict["uploadTokenId"] = uploadTokenId!
		}
		if(fileSize != nil) {
			dict["fileSize"] = fileSize!
		}
		if(errorCode != nil) {
			dict["errorCode"] = errorCode!.rawValue
		}
		if(errorDescription != nil) {
			dict["errorDescription"] = errorDescription!
		}
		return dict
	}
}

