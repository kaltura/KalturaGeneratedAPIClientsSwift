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

open class FileSyncDescriptor: ObjectBase {

	public class FileSyncDescriptorTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var fileSyncLocalPath: BaseTokenizedObject {
			get {
				return self.append("fileSyncLocalPath") 
			}
		}
		
		public var fileEncryptionKey: BaseTokenizedObject {
			get {
				return self.append("fileEncryptionKey") 
			}
		}
		
		public var fileSyncRemoteUrl: BaseTokenizedObject {
			get {
				return self.append("fileSyncRemoteUrl") 
			}
		}
		
		public var fileSyncObjectSubType: BaseTokenizedObject {
			get {
				return self.append("fileSyncObjectSubType") 
			}
		}
	}

	public var fileSyncLocalPath: String? = nil
	public var fileEncryptionKey: String? = nil
	/**  The translated path as used by the scheduler  */
	public var fileSyncRemoteUrl: String? = nil
	public var fileSyncObjectSubType: Int? = nil


	public func setMultiRequestToken(fileSyncLocalPath: String) {
		self.dict["fileSyncLocalPath"] = fileSyncLocalPath
	}
	
	public func setMultiRequestToken(fileEncryptionKey: String) {
		self.dict["fileEncryptionKey"] = fileEncryptionKey
	}
	
	public func setMultiRequestToken(fileSyncRemoteUrl: String) {
		self.dict["fileSyncRemoteUrl"] = fileSyncRemoteUrl
	}
	
	public func setMultiRequestToken(fileSyncObjectSubType: String) {
		self.dict["fileSyncObjectSubType"] = fileSyncObjectSubType
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["fileSyncLocalPath"] != nil {
			fileSyncLocalPath = dict["fileSyncLocalPath"] as? String
		}
		if dict["fileEncryptionKey"] != nil {
			fileEncryptionKey = dict["fileEncryptionKey"] as? String
		}
		if dict["fileSyncRemoteUrl"] != nil {
			fileSyncRemoteUrl = dict["fileSyncRemoteUrl"] as? String
		}
		if dict["fileSyncObjectSubType"] != nil {
			fileSyncObjectSubType = dict["fileSyncObjectSubType"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(fileSyncLocalPath != nil) {
			dict["fileSyncLocalPath"] = fileSyncLocalPath!
		}
		if(fileEncryptionKey != nil) {
			dict["fileEncryptionKey"] = fileEncryptionKey!
		}
		if(fileSyncRemoteUrl != nil) {
			dict["fileSyncRemoteUrl"] = fileSyncRemoteUrl!
		}
		if(fileSyncObjectSubType != nil) {
			dict["fileSyncObjectSubType"] = fileSyncObjectSubType!
		}
		return dict
	}
}

