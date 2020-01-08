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
// Copyright (C) 2006-2020  Kaltura Inc.
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

open class CaptionPlaybackPluginData: ObjectBase {

	public class CaptionPlaybackPluginDataTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var label: BaseTokenizedObject {
			get {
				return self.append("label") 
			}
		}
		
		public var format: BaseTokenizedObject {
			get {
				return self.append("format") 
			}
		}
		
		public var language: BaseTokenizedObject {
			get {
				return self.append("language") 
			}
		}
		
		public var webVttUrl: BaseTokenizedObject {
			get {
				return self.append("webVttUrl") 
			}
		}
		
		public var url: BaseTokenizedObject {
			get {
				return self.append("url") 
			}
		}
		
		public var isDefault: BaseTokenizedObject {
			get {
				return self.append("isDefault") 
			}
		}
		
		public var languageCode: BaseTokenizedObject {
			get {
				return self.append("languageCode") 
			}
		}
	}

	public var label: String? = nil
	public var format: String? = nil
	public var language: String? = nil
	public var webVttUrl: String? = nil
	public var url: String? = nil
	public var isDefault: Bool? = nil
	public var languageCode: String? = nil


	public func setMultiRequestToken(label: String) {
		self.dict["label"] = label
	}
	
	public func setMultiRequestToken(format: String) {
		self.dict["format"] = format
	}
	
	public func setMultiRequestToken(language: String) {
		self.dict["language"] = language
	}
	
	public func setMultiRequestToken(webVttUrl: String) {
		self.dict["webVttUrl"] = webVttUrl
	}
	
	public func setMultiRequestToken(url: String) {
		self.dict["url"] = url
	}
	
	public func setMultiRequestToken(isDefault: String) {
		self.dict["isDefault"] = isDefault
	}
	
	public func setMultiRequestToken(languageCode: String) {
		self.dict["languageCode"] = languageCode
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["label"] != nil {
			label = dict["label"] as? String
		}
		if dict["format"] != nil {
			format = dict["format"] as? String
		}
		if dict["language"] != nil {
			language = dict["language"] as? String
		}
		if dict["webVttUrl"] != nil {
			webVttUrl = dict["webVttUrl"] as? String
		}
		if dict["url"] != nil {
			url = dict["url"] as? String
		}
		if dict["isDefault"] != nil {
			isDefault = dict["isDefault"] as? Bool
		}
		if dict["languageCode"] != nil {
			languageCode = dict["languageCode"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(label != nil) {
			dict["label"] = label!
		}
		if(format != nil) {
			dict["format"] = format!
		}
		if(language != nil) {
			dict["language"] = language!
		}
		if(webVttUrl != nil) {
			dict["webVttUrl"] = webVttUrl!
		}
		if(url != nil) {
			dict["url"] = url!
		}
		if(isDefault != nil) {
			dict["isDefault"] = isDefault!
		}
		if(languageCode != nil) {
			dict["languageCode"] = languageCode!
		}
		return dict
	}
}

