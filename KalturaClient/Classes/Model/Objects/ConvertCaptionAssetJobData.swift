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

open class ConvertCaptionAssetJobData: JobData {

	public class ConvertCaptionAssetJobDataTokenizer: JobData.JobDataTokenizer {
		
		public var captionAssetId: BaseTokenizedObject {
			get {
				return self.append("captionAssetId") 
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
		
		public var fromType: BaseTokenizedObject {
			get {
				return self.append("fromType") 
			}
		}
		
		public var toType: BaseTokenizedObject {
			get {
				return self.append("toType") 
			}
		}
	}

	public var captionAssetId: String? = nil
	public var fileLocation: String? = nil
	public var fileEncryptionKey: String? = nil
	public var fromType: String? = nil
	public var toType: String? = nil


	public func setMultiRequestToken(captionAssetId: String) {
		self.dict["captionAssetId"] = captionAssetId
	}
	
	public func setMultiRequestToken(fileLocation: String) {
		self.dict["fileLocation"] = fileLocation
	}
	
	public func setMultiRequestToken(fileEncryptionKey: String) {
		self.dict["fileEncryptionKey"] = fileEncryptionKey
	}
	
	public func setMultiRequestToken(fromType: String) {
		self.dict["fromType"] = fromType
	}
	
	public func setMultiRequestToken(toType: String) {
		self.dict["toType"] = toType
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["captionAssetId"] != nil {
			captionAssetId = dict["captionAssetId"] as? String
		}
		if dict["fileLocation"] != nil {
			fileLocation = dict["fileLocation"] as? String
		}
		if dict["fileEncryptionKey"] != nil {
			fileEncryptionKey = dict["fileEncryptionKey"] as? String
		}
		if dict["fromType"] != nil {
			fromType = dict["fromType"] as? String
		}
		if dict["toType"] != nil {
			toType = dict["toType"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(captionAssetId != nil) {
			dict["captionAssetId"] = captionAssetId!
		}
		if(fileLocation != nil) {
			dict["fileLocation"] = fileLocation!
		}
		if(fileEncryptionKey != nil) {
			dict["fileEncryptionKey"] = fileEncryptionKey!
		}
		if(fromType != nil) {
			dict["fromType"] = fromType!
		}
		if(toType != nil) {
			dict["toType"] = toType!
		}
		return dict
	}
}

