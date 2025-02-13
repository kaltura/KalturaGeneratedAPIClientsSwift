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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class LiveCaptionFeature: LiveFeature {

	public class LiveCaptionFeatureTokenizer: LiveFeature.LiveFeatureTokenizer {
		
		public var mediaUrl: BaseTokenizedObject {
			get {
				return self.append("mediaUrl") 
			}
		}
		
		public var mediaKey: BaseTokenizedObject {
			get {
				return self.append("mediaKey") 
			}
		}
		
		public var captionUrl: BaseTokenizedObject {
			get {
				return self.append("captionUrl") 
			}
		}
		
		public var captionToken: BaseTokenizedObject {
			get {
				return self.append("captionToken") 
			}
		}
		
		public var inputDelay: BaseTokenizedObject {
			get {
				return self.append("inputDelay") 
			}
		}
		
		public var captionFormat: BaseTokenizedObject {
			get {
				return self.append("captionFormat") 
			}
		}
		
		public var language: BaseTokenizedObject {
			get {
				return self.append("language") 
			}
		}
	}

	public var mediaUrl: String? = nil
	public var mediaKey: String? = nil
	public var captionUrl: String? = nil
	public var captionToken: String? = nil
	public var inputDelay: Int? = nil
	public var captionFormat: String? = nil
	public var language: String? = nil


	public func setMultiRequestToken(mediaUrl: String) {
		self.dict["mediaUrl"] = mediaUrl
	}
	
	public func setMultiRequestToken(mediaKey: String) {
		self.dict["mediaKey"] = mediaKey
	}
	
	public func setMultiRequestToken(captionUrl: String) {
		self.dict["captionUrl"] = captionUrl
	}
	
	public func setMultiRequestToken(captionToken: String) {
		self.dict["captionToken"] = captionToken
	}
	
	public func setMultiRequestToken(inputDelay: String) {
		self.dict["inputDelay"] = inputDelay
	}
	
	public func setMultiRequestToken(captionFormat: String) {
		self.dict["captionFormat"] = captionFormat
	}
	
	public func setMultiRequestToken(language: String) {
		self.dict["language"] = language
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["mediaUrl"] != nil {
			mediaUrl = dict["mediaUrl"] as? String
		}
		if dict["mediaKey"] != nil {
			mediaKey = dict["mediaKey"] as? String
		}
		if dict["captionUrl"] != nil {
			captionUrl = dict["captionUrl"] as? String
		}
		if dict["captionToken"] != nil {
			captionToken = dict["captionToken"] as? String
		}
		if dict["inputDelay"] != nil {
			inputDelay = dict["inputDelay"] as? Int
		}
		if dict["captionFormat"] != nil {
			captionFormat = dict["captionFormat"] as? String
		}
		if dict["language"] != nil {
			language = dict["language"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(mediaUrl != nil) {
			dict["mediaUrl"] = mediaUrl!
		}
		if(mediaKey != nil) {
			dict["mediaKey"] = mediaKey!
		}
		if(captionUrl != nil) {
			dict["captionUrl"] = captionUrl!
		}
		if(captionToken != nil) {
			dict["captionToken"] = captionToken!
		}
		if(inputDelay != nil) {
			dict["inputDelay"] = inputDelay!
		}
		if(captionFormat != nil) {
			dict["captionFormat"] = captionFormat!
		}
		if(language != nil) {
			dict["language"] = language!
		}
		return dict
	}
}

