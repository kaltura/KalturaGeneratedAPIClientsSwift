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

open class CaptureThumbJobData: JobData {

	public class CaptureThumbJobDataTokenizer: JobData.JobDataTokenizer {
		
		public var srcFileSyncLocalPath: BaseTokenizedObject {
			get {
				return self.append("srcFileSyncLocalPath") 
			}
		}
		
		public var actualSrcFileSyncLocalPath: BaseTokenizedObject {
			get {
				return self.append("actualSrcFileSyncLocalPath") 
			}
		}
		
		public var srcFileSyncRemoteUrl: BaseTokenizedObject {
			get {
				return self.append("srcFileSyncRemoteUrl") 
			}
		}
		
		public var thumbParamsOutputId: BaseTokenizedObject {
			get {
				return self.append("thumbParamsOutputId") 
			}
		}
		
		public var thumbAssetId: BaseTokenizedObject {
			get {
				return self.append("thumbAssetId") 
			}
		}
		
		public var srcAssetId: BaseTokenizedObject {
			get {
				return self.append("srcAssetId") 
			}
		}
		
		public var srcAssetType: BaseTokenizedObject {
			get {
				return self.append("srcAssetType") 
			}
		}
		
		public var thumbPath: BaseTokenizedObject {
			get {
				return self.append("thumbPath") 
			}
		}
	}

	public var srcFileSyncLocalPath: String? = nil
	/**  The translated path as used by the scheduler  */
	public var actualSrcFileSyncLocalPath: String? = nil
	public var srcFileSyncRemoteUrl: String? = nil
	public var thumbParamsOutputId: Int? = nil
	public var thumbAssetId: String? = nil
	public var srcAssetId: String? = nil
	public var srcAssetType: AssetType? = nil
	public var thumbPath: String? = nil


	public func setMultiRequestToken(srcFileSyncLocalPath: String) {
		self.dict["srcFileSyncLocalPath"] = srcFileSyncLocalPath
	}
	
	public func setMultiRequestToken(actualSrcFileSyncLocalPath: String) {
		self.dict["actualSrcFileSyncLocalPath"] = actualSrcFileSyncLocalPath
	}
	
	public func setMultiRequestToken(srcFileSyncRemoteUrl: String) {
		self.dict["srcFileSyncRemoteUrl"] = srcFileSyncRemoteUrl
	}
	
	public func setMultiRequestToken(thumbParamsOutputId: String) {
		self.dict["thumbParamsOutputId"] = thumbParamsOutputId
	}
	
	public func setMultiRequestToken(thumbAssetId: String) {
		self.dict["thumbAssetId"] = thumbAssetId
	}
	
	public func setMultiRequestToken(srcAssetId: String) {
		self.dict["srcAssetId"] = srcAssetId
	}
	
	public func setMultiRequestToken(srcAssetType: String) {
		self.dict["srcAssetType"] = srcAssetType
	}
	
	public func setMultiRequestToken(thumbPath: String) {
		self.dict["thumbPath"] = thumbPath
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["srcFileSyncLocalPath"] != nil {
			srcFileSyncLocalPath = dict["srcFileSyncLocalPath"] as? String
		}
		if dict["actualSrcFileSyncLocalPath"] != nil {
			actualSrcFileSyncLocalPath = dict["actualSrcFileSyncLocalPath"] as? String
		}
		if dict["srcFileSyncRemoteUrl"] != nil {
			srcFileSyncRemoteUrl = dict["srcFileSyncRemoteUrl"] as? String
		}
		if dict["thumbParamsOutputId"] != nil {
			thumbParamsOutputId = dict["thumbParamsOutputId"] as? Int
		}
		if dict["thumbAssetId"] != nil {
			thumbAssetId = dict["thumbAssetId"] as? String
		}
		if dict["srcAssetId"] != nil {
			srcAssetId = dict["srcAssetId"] as? String
		}
		if dict["srcAssetType"] != nil {
			srcAssetType = AssetType(rawValue: "\(dict["srcAssetType"]!)")
		}
		if dict["thumbPath"] != nil {
			thumbPath = dict["thumbPath"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(srcFileSyncLocalPath != nil) {
			dict["srcFileSyncLocalPath"] = srcFileSyncLocalPath!
		}
		if(actualSrcFileSyncLocalPath != nil) {
			dict["actualSrcFileSyncLocalPath"] = actualSrcFileSyncLocalPath!
		}
		if(srcFileSyncRemoteUrl != nil) {
			dict["srcFileSyncRemoteUrl"] = srcFileSyncRemoteUrl!
		}
		if(thumbParamsOutputId != nil) {
			dict["thumbParamsOutputId"] = thumbParamsOutputId!
		}
		if(thumbAssetId != nil) {
			dict["thumbAssetId"] = thumbAssetId!
		}
		if(srcAssetId != nil) {
			dict["srcAssetId"] = srcAssetId!
		}
		if(srcAssetType != nil) {
			dict["srcAssetType"] = srcAssetType!.rawValue
		}
		if(thumbPath != nil) {
			dict["thumbPath"] = thumbPath!
		}
		return dict
	}
}

