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
// Copyright (C) 2006-2019  Kaltura Inc.
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

open class SearchResult: Search {

	public class SearchResultTokenizer: Search.SearchTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var title: BaseTokenizedObject {
			get {
				return self.append("title") 
			}
		}
		
		public var thumbUrl: BaseTokenizedObject {
			get {
				return self.append("thumbUrl") 
			}
		}
		
		public var description: BaseTokenizedObject {
			get {
				return self.append("description") 
			}
		}
		
		public var tags: BaseTokenizedObject {
			get {
				return self.append("tags") 
			}
		}
		
		public var url: BaseTokenizedObject {
			get {
				return self.append("url") 
			}
		}
		
		public var sourceLink: BaseTokenizedObject {
			get {
				return self.append("sourceLink") 
			}
		}
		
		public var credit: BaseTokenizedObject {
			get {
				return self.append("credit") 
			}
		}
		
		public var licenseType: BaseTokenizedObject {
			get {
				return self.append("licenseType") 
			}
		}
		
		public var flashPlaybackType: BaseTokenizedObject {
			get {
				return self.append("flashPlaybackType") 
			}
		}
		
		public var fileExt: BaseTokenizedObject {
			get {
				return self.append("fileExt") 
			}
		}
	}

	public var id: String? = nil
	public var title: String? = nil
	public var thumbUrl: String? = nil
	public var description: String? = nil
	public var tags: String? = nil
	public var url: String? = nil
	public var sourceLink: String? = nil
	public var credit: String? = nil
	public var licenseType: LicenseType? = nil
	public var flashPlaybackType: String? = nil
	public var fileExt: String? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(title: String) {
		self.dict["title"] = title
	}
	
	public func setMultiRequestToken(thumbUrl: String) {
		self.dict["thumbUrl"] = thumbUrl
	}
	
	public func setMultiRequestToken(description: String) {
		self.dict["description"] = description
	}
	
	public func setMultiRequestToken(tags: String) {
		self.dict["tags"] = tags
	}
	
	public func setMultiRequestToken(url: String) {
		self.dict["url"] = url
	}
	
	public func setMultiRequestToken(sourceLink: String) {
		self.dict["sourceLink"] = sourceLink
	}
	
	public func setMultiRequestToken(credit: String) {
		self.dict["credit"] = credit
	}
	
	public func setMultiRequestToken(licenseType: String) {
		self.dict["licenseType"] = licenseType
	}
	
	public func setMultiRequestToken(flashPlaybackType: String) {
		self.dict["flashPlaybackType"] = flashPlaybackType
	}
	
	public func setMultiRequestToken(fileExt: String) {
		self.dict["fileExt"] = fileExt
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? String
		}
		if dict["title"] != nil {
			title = dict["title"] as? String
		}
		if dict["thumbUrl"] != nil {
			thumbUrl = dict["thumbUrl"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["tags"] != nil {
			tags = dict["tags"] as? String
		}
		if dict["url"] != nil {
			url = dict["url"] as? String
		}
		if dict["sourceLink"] != nil {
			sourceLink = dict["sourceLink"] as? String
		}
		if dict["credit"] != nil {
			credit = dict["credit"] as? String
		}
		if dict["licenseType"] != nil {
			licenseType = LicenseType(rawValue: (dict["licenseType"] as? Int)!)
		}
		if dict["flashPlaybackType"] != nil {
			flashPlaybackType = dict["flashPlaybackType"] as? String
		}
		if dict["fileExt"] != nil {
			fileExt = dict["fileExt"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(id != nil) {
			dict["id"] = id!
		}
		if(title != nil) {
			dict["title"] = title!
		}
		if(thumbUrl != nil) {
			dict["thumbUrl"] = thumbUrl!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(tags != nil) {
			dict["tags"] = tags!
		}
		if(url != nil) {
			dict["url"] = url!
		}
		if(sourceLink != nil) {
			dict["sourceLink"] = sourceLink!
		}
		if(credit != nil) {
			dict["credit"] = credit!
		}
		if(licenseType != nil) {
			dict["licenseType"] = licenseType!.rawValue
		}
		if(flashPlaybackType != nil) {
			dict["flashPlaybackType"] = flashPlaybackType!
		}
		if(fileExt != nil) {
			dict["fileExt"] = fileExt!
		}
		return dict
	}
}

