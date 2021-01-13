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

open class ParseMultiLanguageCaptionAssetJobData: JobData {

	public class ParseMultiLanguageCaptionAssetJobDataTokenizer: JobData.JobDataTokenizer {
		
		public var multiLanaguageCaptionAssetId: BaseTokenizedObject {
			get {
				return self.append("multiLanaguageCaptionAssetId") 
			}
		}
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var fileLocation: BaseTokenizedObject {
			get {
				return self.append("fileLocation") 
			}
		}
		
		public var fileEncryptionKey: BaseTokenizedObject {
			get {
				return self.append("fileEncryptionKey") 
			}
		}
	}

	public var multiLanaguageCaptionAssetId: String? = nil
	public var entryId: String? = nil
	public var fileLocation: String? = nil
	public var fileEncryptionKey: String? = nil


	public func setMultiRequestToken(multiLanaguageCaptionAssetId: String) {
		self.dict["multiLanaguageCaptionAssetId"] = multiLanaguageCaptionAssetId
	}
	
	public func setMultiRequestToken(entryId: String) {
		self.dict["entryId"] = entryId
	}
	
	public func setMultiRequestToken(fileLocation: String) {
		self.dict["fileLocation"] = fileLocation
	}
	
	public func setMultiRequestToken(fileEncryptionKey: String) {
		self.dict["fileEncryptionKey"] = fileEncryptionKey
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["multiLanaguageCaptionAssetId"] != nil {
			multiLanaguageCaptionAssetId = dict["multiLanaguageCaptionAssetId"] as? String
		}
		if dict["entryId"] != nil {
			entryId = dict["entryId"] as? String
		}
		if dict["fileLocation"] != nil {
			fileLocation = dict["fileLocation"] as? String
		}
		if dict["fileEncryptionKey"] != nil {
			fileEncryptionKey = dict["fileEncryptionKey"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(multiLanaguageCaptionAssetId != nil) {
			dict["multiLanaguageCaptionAssetId"] = multiLanaguageCaptionAssetId!
		}
		if(entryId != nil) {
			dict["entryId"] = entryId!
		}
		if(fileLocation != nil) {
			dict["fileLocation"] = fileLocation!
		}
		if(fileEncryptionKey != nil) {
			dict["fileEncryptionKey"] = fileEncryptionKey!
		}
		return dict
	}
}

