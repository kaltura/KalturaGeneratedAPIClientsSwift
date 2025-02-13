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

open class WebexDropFolder: DropFolder {

	public class WebexDropFolderTokenizer: DropFolder.DropFolderTokenizer {
		
		public var webexUserId: BaseTokenizedObject {
			get {
				return self.append("webexUserId") 
			}
		}
		
		public var webexPassword: BaseTokenizedObject {
			get {
				return self.append("webexPassword") 
			}
		}
		
		public var webexSiteId: BaseTokenizedObject {
			get {
				return self.append("webexSiteId") 
			}
		}
		
		public var webexPartnerId: BaseTokenizedObject {
			get {
				return self.append("webexPartnerId") 
			}
		}
		
		public var webexServiceUrl: BaseTokenizedObject {
			get {
				return self.append("webexServiceUrl") 
			}
		}
		
		public var webexHostIdMetadataFieldName: BaseTokenizedObject {
			get {
				return self.append("webexHostIdMetadataFieldName") 
			}
		}
		
		public var deleteFromRecycleBin: BaseTokenizedObject {
			get {
				return self.append("deleteFromRecycleBin") 
			}
		}
		
		public var webexServiceType: BaseTokenizedObject {
			get {
				return self.append("webexServiceType") 
			}
		}
		
		public var webexSiteName: BaseTokenizedObject {
			get {
				return self.append("webexSiteName") 
			}
		}
		
		public var deleteFromTimestamp: BaseTokenizedObject {
			get {
				return self.append("deleteFromTimestamp") 
			}
		}
	}

	public var webexUserId: String? = nil
	public var webexPassword: String? = nil
	public var webexSiteId: Int? = nil
	public var webexPartnerId: String? = nil
	public var webexServiceUrl: String? = nil
	public var webexHostIdMetadataFieldName: String? = nil
	public var deleteFromRecycleBin: Bool? = nil
	public var webexServiceType: String? = nil
	public var webexSiteName: String? = nil
	public var deleteFromTimestamp: Int? = nil


	public func setMultiRequestToken(webexUserId: String) {
		self.dict["webexUserId"] = webexUserId
	}
	
	public func setMultiRequestToken(webexPassword: String) {
		self.dict["webexPassword"] = webexPassword
	}
	
	public func setMultiRequestToken(webexSiteId: String) {
		self.dict["webexSiteId"] = webexSiteId
	}
	
	public func setMultiRequestToken(webexPartnerId: String) {
		self.dict["webexPartnerId"] = webexPartnerId
	}
	
	public func setMultiRequestToken(webexServiceUrl: String) {
		self.dict["webexServiceUrl"] = webexServiceUrl
	}
	
	public func setMultiRequestToken(webexHostIdMetadataFieldName: String) {
		self.dict["webexHostIdMetadataFieldName"] = webexHostIdMetadataFieldName
	}
	
	public func setMultiRequestToken(deleteFromRecycleBin: String) {
		self.dict["deleteFromRecycleBin"] = deleteFromRecycleBin
	}
	
	public func setMultiRequestToken(webexServiceType: String) {
		self.dict["webexServiceType"] = webexServiceType
	}
	
	public func setMultiRequestToken(webexSiteName: String) {
		self.dict["webexSiteName"] = webexSiteName
	}
	
	public func setMultiRequestToken(deleteFromTimestamp: String) {
		self.dict["deleteFromTimestamp"] = deleteFromTimestamp
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["webexUserId"] != nil {
			webexUserId = dict["webexUserId"] as? String
		}
		if dict["webexPassword"] != nil {
			webexPassword = dict["webexPassword"] as? String
		}
		if dict["webexSiteId"] != nil {
			webexSiteId = dict["webexSiteId"] as? Int
		}
		if dict["webexPartnerId"] != nil {
			webexPartnerId = dict["webexPartnerId"] as? String
		}
		if dict["webexServiceUrl"] != nil {
			webexServiceUrl = dict["webexServiceUrl"] as? String
		}
		if dict["webexHostIdMetadataFieldName"] != nil {
			webexHostIdMetadataFieldName = dict["webexHostIdMetadataFieldName"] as? String
		}
		if dict["deleteFromRecycleBin"] != nil {
			deleteFromRecycleBin = dict["deleteFromRecycleBin"] as? Bool
		}
		if dict["webexServiceType"] != nil {
			webexServiceType = dict["webexServiceType"] as? String
		}
		if dict["webexSiteName"] != nil {
			webexSiteName = dict["webexSiteName"] as? String
		}
		if dict["deleteFromTimestamp"] != nil {
			deleteFromTimestamp = dict["deleteFromTimestamp"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(webexUserId != nil) {
			dict["webexUserId"] = webexUserId!
		}
		if(webexPassword != nil) {
			dict["webexPassword"] = webexPassword!
		}
		if(webexSiteId != nil) {
			dict["webexSiteId"] = webexSiteId!
		}
		if(webexPartnerId != nil) {
			dict["webexPartnerId"] = webexPartnerId!
		}
		if(webexServiceUrl != nil) {
			dict["webexServiceUrl"] = webexServiceUrl!
		}
		if(webexHostIdMetadataFieldName != nil) {
			dict["webexHostIdMetadataFieldName"] = webexHostIdMetadataFieldName!
		}
		if(deleteFromRecycleBin != nil) {
			dict["deleteFromRecycleBin"] = deleteFromRecycleBin!
		}
		if(webexServiceType != nil) {
			dict["webexServiceType"] = webexServiceType!
		}
		if(webexSiteName != nil) {
			dict["webexSiteName"] = webexSiteName!
		}
		if(deleteFromTimestamp != nil) {
			dict["deleteFromTimestamp"] = deleteFromTimestamp!
		}
		return dict
	}
}

