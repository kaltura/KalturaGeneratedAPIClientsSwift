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
// Copyright (C) 2006-2022  Kaltura Inc.
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

open class DailymotionDistributionCaptionInfo: ObjectBase {

	public class DailymotionDistributionCaptionInfoTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var language: BaseTokenizedObject {
			get {
				return self.append("language") 
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
		
		public var action: BaseTokenizedObject {
			get {
				return self.append("action") 
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
		
		public var format: BaseTokenizedObject {
			get {
				return self.append("format") 
			}
		}
	}

	public var language: String? = nil
	public var filePath: String? = nil
	public var remoteId: String? = nil
	public var action: DailymotionDistributionCaptionAction? = nil
	public var version: String? = nil
	public var assetId: String? = nil
	public var format: DailymotionDistributionCaptionFormat? = nil


	public func setMultiRequestToken(language: String) {
		self.dict["language"] = language
	}
	
	public func setMultiRequestToken(filePath: String) {
		self.dict["filePath"] = filePath
	}
	
	public func setMultiRequestToken(remoteId: String) {
		self.dict["remoteId"] = remoteId
	}
	
	public func setMultiRequestToken(action: String) {
		self.dict["action"] = action
	}
	
	public func setMultiRequestToken(version: String) {
		self.dict["version"] = version
	}
	
	public func setMultiRequestToken(assetId: String) {
		self.dict["assetId"] = assetId
	}
	
	public func setMultiRequestToken(format: String) {
		self.dict["format"] = format
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["language"] != nil {
			language = dict["language"] as? String
		}
		if dict["filePath"] != nil {
			filePath = dict["filePath"] as? String
		}
		if dict["remoteId"] != nil {
			remoteId = dict["remoteId"] as? String
		}
		if dict["action"] != nil {
			action = DailymotionDistributionCaptionAction(rawValue: (dict["action"] as? Int)!)
		}
		if dict["version"] != nil {
			version = dict["version"] as? String
		}
		if dict["assetId"] != nil {
			assetId = dict["assetId"] as? String
		}
		if dict["format"] != nil {
			format = DailymotionDistributionCaptionFormat(rawValue: (dict["format"] as? Int)!)
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(language != nil) {
			dict["language"] = language!
		}
		if(filePath != nil) {
			dict["filePath"] = filePath!
		}
		if(remoteId != nil) {
			dict["remoteId"] = remoteId!
		}
		if(action != nil) {
			dict["action"] = action!.rawValue
		}
		if(version != nil) {
			dict["version"] = version!
		}
		if(assetId != nil) {
			dict["assetId"] = assetId!
		}
		if(format != nil) {
			dict["format"] = format!.rawValue
		}
		return dict
	}
}

