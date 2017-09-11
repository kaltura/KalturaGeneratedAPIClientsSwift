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

open class AmazonS3StorageExportJobData: StorageExportJobData {

	public class AmazonS3StorageExportJobDataTokenizer: StorageExportJobData.StorageExportJobDataTokenizer {
		
		public var filesPermissionInS3: BaseTokenizedObject {
			get {
				return self.append("filesPermissionInS3") 
			}
		}
		
		public var s3Region: BaseTokenizedObject {
			get {
				return self.append("s3Region") 
			}
		}
		
		public var sseType: BaseTokenizedObject {
			get {
				return self.append("sseType") 
			}
		}
		
		public var sseKmsKeyId: BaseTokenizedObject {
			get {
				return self.append("sseKmsKeyId") 
			}
		}
		
		public var signatureType: BaseTokenizedObject {
			get {
				return self.append("signatureType") 
			}
		}
		
		public var endPoint: BaseTokenizedObject {
			get {
				return self.append("endPoint") 
			}
		}
	}

	public var filesPermissionInS3: AmazonS3StorageProfileFilesPermissionLevel? = nil
	public var s3Region: String? = nil
	public var sseType: String? = nil
	public var sseKmsKeyId: String? = nil
	public var signatureType: String? = nil
	public var endPoint: String? = nil


	public func setMultiRequestToken(filesPermissionInS3: String) {
		self.dict["filesPermissionInS3"] = filesPermissionInS3
	}
	
	public func setMultiRequestToken(s3Region: String) {
		self.dict["s3Region"] = s3Region
	}
	
	public func setMultiRequestToken(sseType: String) {
		self.dict["sseType"] = sseType
	}
	
	public func setMultiRequestToken(sseKmsKeyId: String) {
		self.dict["sseKmsKeyId"] = sseKmsKeyId
	}
	
	public func setMultiRequestToken(signatureType: String) {
		self.dict["signatureType"] = signatureType
	}
	
	public func setMultiRequestToken(endPoint: String) {
		self.dict["endPoint"] = endPoint
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["filesPermissionInS3"] != nil {
			filesPermissionInS3 = AmazonS3StorageProfileFilesPermissionLevel(rawValue: "\(dict["filesPermissionInS3"]!)")
		}
		if dict["s3Region"] != nil {
			s3Region = dict["s3Region"] as? String
		}
		if dict["sseType"] != nil {
			sseType = dict["sseType"] as? String
		}
		if dict["sseKmsKeyId"] != nil {
			sseKmsKeyId = dict["sseKmsKeyId"] as? String
		}
		if dict["signatureType"] != nil {
			signatureType = dict["signatureType"] as? String
		}
		if dict["endPoint"] != nil {
			endPoint = dict["endPoint"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(filesPermissionInS3 != nil) {
			dict["filesPermissionInS3"] = filesPermissionInS3!.rawValue
		}
		if(s3Region != nil) {
			dict["s3Region"] = s3Region!
		}
		if(sseType != nil) {
			dict["sseType"] = sseType!
		}
		if(sseKmsKeyId != nil) {
			dict["sseKmsKeyId"] = sseKmsKeyId!
		}
		if(signatureType != nil) {
			dict["signatureType"] = signatureType!
		}
		if(endPoint != nil) {
			dict["endPoint"] = endPoint!
		}
		return dict
	}
}

