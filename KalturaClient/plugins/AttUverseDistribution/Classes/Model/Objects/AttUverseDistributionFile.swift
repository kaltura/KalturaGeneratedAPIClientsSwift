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

open class AttUverseDistributionFile: ObjectBase {

	public class AttUverseDistributionFileTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var remoteFilename: BaseTokenizedObject {
			get {
				return self.append("remoteFilename") 
			}
		}
		
		public var localFilePath: BaseTokenizedObject {
			get {
				return self.append("localFilePath") 
			}
		}
		
		public var assetType: BaseTokenizedObject {
			get {
				return self.append("assetType") 
			}
		}
		
		public var assetId: BaseTokenizedObject {
			get {
				return self.append("assetId") 
			}
		}
	}

	public var remoteFilename: String? = nil
	public var localFilePath: String? = nil
	public var assetType: AssetType? = nil
	public var assetId: String? = nil


	public func setMultiRequestToken(remoteFilename: String) {
		self.dict["remoteFilename"] = remoteFilename
	}
	
	public func setMultiRequestToken(localFilePath: String) {
		self.dict["localFilePath"] = localFilePath
	}
	
	public func setMultiRequestToken(assetType: String) {
		self.dict["assetType"] = assetType
	}
	
	public func setMultiRequestToken(assetId: String) {
		self.dict["assetId"] = assetId
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["remoteFilename"] != nil {
			remoteFilename = dict["remoteFilename"] as? String
		}
		if dict["localFilePath"] != nil {
			localFilePath = dict["localFilePath"] as? String
		}
		if dict["assetType"] != nil {
			assetType = AssetType(rawValue: "\(dict["assetType"]!)")
		}
		if dict["assetId"] != nil {
			assetId = dict["assetId"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(remoteFilename != nil) {
			dict["remoteFilename"] = remoteFilename!
		}
		if(localFilePath != nil) {
			dict["localFilePath"] = localFilePath!
		}
		if(assetType != nil) {
			dict["assetType"] = assetType!.rawValue
		}
		if(assetId != nil) {
			dict["assetId"] = assetId!
		}
		return dict
	}
}

