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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class FileContainer: ObjectBase {

	public class FileContainerTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var filePath: BaseTokenizedObject {
			get {
				return self.append("filePath") 
			}
		}
		
		public var encryptionKey: BaseTokenizedObject {
			get {
				return self.append("encryptionKey") 
			}
		}
		
		public var fileSize: BaseTokenizedObject {
			get {
				return self.append("fileSize") 
			}
		}
	}

	public var filePath: String? = nil
	public var encryptionKey: String? = nil
	public var fileSize: Int? = nil


	public func setMultiRequestToken(filePath: String) {
		self.dict["filePath"] = filePath
	}
	
	public func setMultiRequestToken(encryptionKey: String) {
		self.dict["encryptionKey"] = encryptionKey
	}
	
	public func setMultiRequestToken(fileSize: String) {
		self.dict["fileSize"] = fileSize
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["filePath"] != nil {
			filePath = dict["filePath"] as? String
		}
		if dict["encryptionKey"] != nil {
			encryptionKey = dict["encryptionKey"] as? String
		}
		if dict["fileSize"] != nil {
			fileSize = dict["fileSize"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(filePath != nil) {
			dict["filePath"] = filePath!
		}
		if(encryptionKey != nil) {
			dict["encryptionKey"] = encryptionKey!
		}
		if(fileSize != nil) {
			dict["fileSize"] = fileSize!
		}
		return dict
	}
}

