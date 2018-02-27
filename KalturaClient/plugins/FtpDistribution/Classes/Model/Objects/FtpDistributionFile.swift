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
// Copyright (C) 2006-2018  Kaltura Inc.
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

open class FtpDistributionFile: ObjectBase {

	public class FtpDistributionFileTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var assetId: BaseTokenizedObject {
			get {
				return self.append("assetId") 
			}
		}
		
		public var filename: BaseTokenizedObject {
			get {
				return self.append("filename") 
			}
		}
		
		public var contents: BaseTokenizedObject {
			get {
				return self.append("contents") 
			}
		}
		
		public var localFilePath: BaseTokenizedObject {
			get {
				return self.append("localFilePath") 
			}
		}
		
		public var version: BaseTokenizedObject {
			get {
				return self.append("version") 
			}
		}
		
		public var hash: BaseTokenizedObject {
			get {
				return self.append("hash") 
			}
		}
	}

	public var assetId: String? = nil
	public var filename: String? = nil
	public var contents: String? = nil
	public var localFilePath: String? = nil
	public var version: String? = nil
	public var hash: String? = nil


	public func setMultiRequestToken(assetId: String) {
		self.dict["assetId"] = assetId
	}
	
	public func setMultiRequestToken(filename: String) {
		self.dict["filename"] = filename
	}
	
	public func setMultiRequestToken(contents: String) {
		self.dict["contents"] = contents
	}
	
	public func setMultiRequestToken(localFilePath: String) {
		self.dict["localFilePath"] = localFilePath
	}
	
	public func setMultiRequestToken(version: String) {
		self.dict["version"] = version
	}
	
	public func setMultiRequestToken(hash: String) {
		self.dict["hash"] = hash
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["assetId"] != nil {
			assetId = dict["assetId"] as? String
		}
		if dict["filename"] != nil {
			filename = dict["filename"] as? String
		}
		if dict["contents"] != nil {
			contents = dict["contents"] as? String
		}
		if dict["localFilePath"] != nil {
			localFilePath = dict["localFilePath"] as? String
		}
		if dict["version"] != nil {
			version = dict["version"] as? String
		}
		if dict["hash"] != nil {
			hash = dict["hash"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(assetId != nil) {
			dict["assetId"] = assetId!
		}
		if(filename != nil) {
			dict["filename"] = filename!
		}
		if(contents != nil) {
			dict["contents"] = contents!
		}
		if(localFilePath != nil) {
			dict["localFilePath"] = localFilePath!
		}
		if(version != nil) {
			dict["version"] = version!
		}
		if(hash != nil) {
			dict["hash"] = hash!
		}
		return dict
	}
}

