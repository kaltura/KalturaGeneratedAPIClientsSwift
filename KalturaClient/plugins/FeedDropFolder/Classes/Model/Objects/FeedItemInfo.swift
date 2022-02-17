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

open class FeedItemInfo: ObjectBase {

	public class FeedItemInfoTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var itemXPath: BaseTokenizedObject {
			get {
				return self.append("itemXPath") 
			}
		}
		
		public var itemPublishDateXPath: BaseTokenizedObject {
			get {
				return self.append("itemPublishDateXPath") 
			}
		}
		
		public var itemUniqueIdentifierXPath: BaseTokenizedObject {
			get {
				return self.append("itemUniqueIdentifierXPath") 
			}
		}
		
		public var itemContentFileSizeXPath: BaseTokenizedObject {
			get {
				return self.append("itemContentFileSizeXPath") 
			}
		}
		
		public var itemContentUrlXPath: BaseTokenizedObject {
			get {
				return self.append("itemContentUrlXPath") 
			}
		}
		
		public var itemContentBitrateXPath: BaseTokenizedObject {
			get {
				return self.append("itemContentBitrateXPath") 
			}
		}
		
		public var itemHashXPath: BaseTokenizedObject {
			get {
				return self.append("itemHashXPath") 
			}
		}
		
		public var itemContentXpath: BaseTokenizedObject {
			get {
				return self.append("itemContentXpath") 
			}
		}
		
		public var contentBitrateAttributeName: BaseTokenizedObject {
			get {
				return self.append("contentBitrateAttributeName") 
			}
		}
	}

	public var itemXPath: String? = nil
	public var itemPublishDateXPath: String? = nil
	public var itemUniqueIdentifierXPath: String? = nil
	public var itemContentFileSizeXPath: String? = nil
	public var itemContentUrlXPath: String? = nil
	public var itemContentBitrateXPath: String? = nil
	public var itemHashXPath: String? = nil
	public var itemContentXpath: String? = nil
	public var contentBitrateAttributeName: String? = nil


	public func setMultiRequestToken(itemXPath: String) {
		self.dict["itemXPath"] = itemXPath
	}
	
	public func setMultiRequestToken(itemPublishDateXPath: String) {
		self.dict["itemPublishDateXPath"] = itemPublishDateXPath
	}
	
	public func setMultiRequestToken(itemUniqueIdentifierXPath: String) {
		self.dict["itemUniqueIdentifierXPath"] = itemUniqueIdentifierXPath
	}
	
	public func setMultiRequestToken(itemContentFileSizeXPath: String) {
		self.dict["itemContentFileSizeXPath"] = itemContentFileSizeXPath
	}
	
	public func setMultiRequestToken(itemContentUrlXPath: String) {
		self.dict["itemContentUrlXPath"] = itemContentUrlXPath
	}
	
	public func setMultiRequestToken(itemContentBitrateXPath: String) {
		self.dict["itemContentBitrateXPath"] = itemContentBitrateXPath
	}
	
	public func setMultiRequestToken(itemHashXPath: String) {
		self.dict["itemHashXPath"] = itemHashXPath
	}
	
	public func setMultiRequestToken(itemContentXpath: String) {
		self.dict["itemContentXpath"] = itemContentXpath
	}
	
	public func setMultiRequestToken(contentBitrateAttributeName: String) {
		self.dict["contentBitrateAttributeName"] = contentBitrateAttributeName
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["itemXPath"] != nil {
			itemXPath = dict["itemXPath"] as? String
		}
		if dict["itemPublishDateXPath"] != nil {
			itemPublishDateXPath = dict["itemPublishDateXPath"] as? String
		}
		if dict["itemUniqueIdentifierXPath"] != nil {
			itemUniqueIdentifierXPath = dict["itemUniqueIdentifierXPath"] as? String
		}
		if dict["itemContentFileSizeXPath"] != nil {
			itemContentFileSizeXPath = dict["itemContentFileSizeXPath"] as? String
		}
		if dict["itemContentUrlXPath"] != nil {
			itemContentUrlXPath = dict["itemContentUrlXPath"] as? String
		}
		if dict["itemContentBitrateXPath"] != nil {
			itemContentBitrateXPath = dict["itemContentBitrateXPath"] as? String
		}
		if dict["itemHashXPath"] != nil {
			itemHashXPath = dict["itemHashXPath"] as? String
		}
		if dict["itemContentXpath"] != nil {
			itemContentXpath = dict["itemContentXpath"] as? String
		}
		if dict["contentBitrateAttributeName"] != nil {
			contentBitrateAttributeName = dict["contentBitrateAttributeName"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(itemXPath != nil) {
			dict["itemXPath"] = itemXPath!
		}
		if(itemPublishDateXPath != nil) {
			dict["itemPublishDateXPath"] = itemPublishDateXPath!
		}
		if(itemUniqueIdentifierXPath != nil) {
			dict["itemUniqueIdentifierXPath"] = itemUniqueIdentifierXPath!
		}
		if(itemContentFileSizeXPath != nil) {
			dict["itemContentFileSizeXPath"] = itemContentFileSizeXPath!
		}
		if(itemContentUrlXPath != nil) {
			dict["itemContentUrlXPath"] = itemContentUrlXPath!
		}
		if(itemContentBitrateXPath != nil) {
			dict["itemContentBitrateXPath"] = itemContentBitrateXPath!
		}
		if(itemHashXPath != nil) {
			dict["itemHashXPath"] = itemHashXPath!
		}
		if(itemContentXpath != nil) {
			dict["itemContentXpath"] = itemContentXpath!
		}
		if(contentBitrateAttributeName != nil) {
			dict["contentBitrateAttributeName"] = contentBitrateAttributeName!
		}
		return dict
	}
}

