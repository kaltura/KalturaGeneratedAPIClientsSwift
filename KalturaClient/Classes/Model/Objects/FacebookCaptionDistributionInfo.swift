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

open class FacebookCaptionDistributionInfo: ObjectBase {

	public class FacebookCaptionDistributionInfoTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var language: BaseTokenizedObject {
			get {
				return self.append("language") 
			}
		}
		
		public var label: BaseTokenizedObject {
			get {
				return self.append("label") 
			}
		}
		
		public var filePath: BaseTokenizedObject {
			get {
				return self.append("filePath") 
			}
		}
		
		public var remoteId: BaseTokenizedObject {
			get {
				return self.append("remoteId") 
			}
		}
		
		public var version: BaseTokenizedObject {
			get {
				return self.append("version") 
			}
		}
		
		public var assetId: BaseTokenizedObject {
			get {
				return self.append("assetId") 
			}
		}
	}

	public var language: String? = nil
	public var label: String? = nil
	public var filePath: String? = nil
	public var remoteId: String? = nil
	public var version: String? = nil
	public var assetId: String? = nil


	public func setMultiRequestToken(language: String) {
		self.dict["language"] = language
	}
	
	public func setMultiRequestToken(label: String) {
		self.dict["label"] = label
	}
	
	public func setMultiRequestToken(filePath: String) {
		self.dict["filePath"] = filePath
	}
	
	public func setMultiRequestToken(remoteId: String) {
		self.dict["remoteId"] = remoteId
	}
	
	public func setMultiRequestToken(version: String) {
		self.dict["version"] = version
	}
	
	public func setMultiRequestToken(assetId: String) {
		self.dict["assetId"] = assetId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["language"] != nil {
			language = dict["language"] as? String
		}
		if dict["label"] != nil {
			label = dict["label"] as? String
		}
		if dict["filePath"] != nil {
			filePath = dict["filePath"] as? String
		}
		if dict["remoteId"] != nil {
			remoteId = dict["remoteId"] as? String
		}
		if dict["version"] != nil {
			version = dict["version"] as? String
		}
		if dict["assetId"] != nil {
			assetId = dict["assetId"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(language != nil) {
			dict["language"] = language!
		}
		if(label != nil) {
			dict["label"] = label!
		}
		if(filePath != nil) {
			dict["filePath"] = filePath!
		}
		if(remoteId != nil) {
			dict["remoteId"] = remoteId!
		}
		if(version != nil) {
			dict["version"] = version!
		}
		if(assetId != nil) {
			dict["assetId"] = assetId!
		}
		return dict
	}
}

