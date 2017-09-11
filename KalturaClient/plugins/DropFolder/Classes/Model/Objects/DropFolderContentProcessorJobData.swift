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

open class DropFolderContentProcessorJobData: JobData {

	public class DropFolderContentProcessorJobDataTokenizer: JobData.JobDataTokenizer {
		
		public var dropFolderId: BaseTokenizedObject {
			get {
				return self.append("dropFolderId") 
			}
		}
		
		public var dropFolderFileIds: BaseTokenizedObject {
			get {
				return self.append("dropFolderFileIds") 
			}
		}
		
		public var parsedSlug: BaseTokenizedObject {
			get {
				return self.append("parsedSlug") 
			}
		}
		
		public var contentMatchPolicy: BaseTokenizedObject {
			get {
				return self.append("contentMatchPolicy") 
			}
		}
		
		public var conversionProfileId: BaseTokenizedObject {
			get {
				return self.append("conversionProfileId") 
			}
		}
		
		public var parsedUserId: BaseTokenizedObject {
			get {
				return self.append("parsedUserId") 
			}
		}
	}

	public var dropFolderId: Int? = nil
	public var dropFolderFileIds: String? = nil
	public var parsedSlug: String? = nil
	public var contentMatchPolicy: DropFolderContentFileHandlerMatchPolicy? = nil
	public var conversionProfileId: Int? = nil
	public var parsedUserId: String? = nil


	public func setMultiRequestToken(dropFolderId: String) {
		self.dict["dropFolderId"] = dropFolderId
	}
	
	public func setMultiRequestToken(dropFolderFileIds: String) {
		self.dict["dropFolderFileIds"] = dropFolderFileIds
	}
	
	public func setMultiRequestToken(parsedSlug: String) {
		self.dict["parsedSlug"] = parsedSlug
	}
	
	public func setMultiRequestToken(contentMatchPolicy: String) {
		self.dict["contentMatchPolicy"] = contentMatchPolicy
	}
	
	public func setMultiRequestToken(conversionProfileId: String) {
		self.dict["conversionProfileId"] = conversionProfileId
	}
	
	public func setMultiRequestToken(parsedUserId: String) {
		self.dict["parsedUserId"] = parsedUserId
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["dropFolderId"] != nil {
			dropFolderId = dict["dropFolderId"] as? Int
		}
		if dict["dropFolderFileIds"] != nil {
			dropFolderFileIds = dict["dropFolderFileIds"] as? String
		}
		if dict["parsedSlug"] != nil {
			parsedSlug = dict["parsedSlug"] as? String
		}
		if dict["contentMatchPolicy"] != nil {
			contentMatchPolicy = DropFolderContentFileHandlerMatchPolicy(rawValue: (dict["contentMatchPolicy"] as? Int)!)
		}
		if dict["conversionProfileId"] != nil {
			conversionProfileId = dict["conversionProfileId"] as? Int
		}
		if dict["parsedUserId"] != nil {
			parsedUserId = dict["parsedUserId"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(dropFolderId != nil) {
			dict["dropFolderId"] = dropFolderId!
		}
		if(dropFolderFileIds != nil) {
			dict["dropFolderFileIds"] = dropFolderFileIds!
		}
		if(parsedSlug != nil) {
			dict["parsedSlug"] = parsedSlug!
		}
		if(contentMatchPolicy != nil) {
			dict["contentMatchPolicy"] = contentMatchPolicy!.rawValue
		}
		if(conversionProfileId != nil) {
			dict["conversionProfileId"] = conversionProfileId!
		}
		if(parsedUserId != nil) {
			dict["parsedUserId"] = parsedUserId!
		}
		return dict
	}
}

