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

open class MicrosoftTeamsDropFolderFile: DropFolderFile {

	public class MicrosoftTeamsDropFolderFileTokenizer: DropFolderFile.DropFolderFileTokenizer {
		
		public var remoteId: BaseTokenizedObject {
			get {
				return self.append("remoteId") 
			}
		}
		
		public var ownerId: BaseTokenizedObject {
			get {
				return self.append("ownerId") 
			}
		}
		
		public var additionalUserIds: BaseTokenizedObject {
			get {
				return self.append("additionalUserIds") 
			}
		}
		
		public var description: BaseTokenizedObject {
			get {
				return self.append("description") 
			}
		}
		
		public var targetCategoryIds: BaseTokenizedObject {
			get {
				return self.append("targetCategoryIds") 
			}
		}
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var contentUrl: BaseTokenizedObject {
			get {
				return self.append("contentUrl") 
			}
		}
	}

	public var remoteId: String? = nil
	public var ownerId: String? = nil
	public var additionalUserIds: String? = nil
	public var description: String? = nil
	public var targetCategoryIds: String? = nil
	public var name: String? = nil
	public var contentUrl: String? = nil


	public func setMultiRequestToken(remoteId: String) {
		self.dict["remoteId"] = remoteId
	}
	
	public func setMultiRequestToken(ownerId: String) {
		self.dict["ownerId"] = ownerId
	}
	
	public func setMultiRequestToken(additionalUserIds: String) {
		self.dict["additionalUserIds"] = additionalUserIds
	}
	
	public func setMultiRequestToken(description: String) {
		self.dict["description"] = description
	}
	
	public func setMultiRequestToken(targetCategoryIds: String) {
		self.dict["targetCategoryIds"] = targetCategoryIds
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(contentUrl: String) {
		self.dict["contentUrl"] = contentUrl
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["remoteId"] != nil {
			remoteId = dict["remoteId"] as? String
		}
		if dict["ownerId"] != nil {
			ownerId = dict["ownerId"] as? String
		}
		if dict["additionalUserIds"] != nil {
			additionalUserIds = dict["additionalUserIds"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["targetCategoryIds"] != nil {
			targetCategoryIds = dict["targetCategoryIds"] as? String
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["contentUrl"] != nil {
			contentUrl = dict["contentUrl"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(remoteId != nil) {
			dict["remoteId"] = remoteId!
		}
		if(ownerId != nil) {
			dict["ownerId"] = ownerId!
		}
		if(additionalUserIds != nil) {
			dict["additionalUserIds"] = additionalUserIds!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(targetCategoryIds != nil) {
			dict["targetCategoryIds"] = targetCategoryIds!
		}
		if(name != nil) {
			dict["name"] = name!
		}
		if(contentUrl != nil) {
			dict["contentUrl"] = contentUrl!
		}
		return dict
	}
}

