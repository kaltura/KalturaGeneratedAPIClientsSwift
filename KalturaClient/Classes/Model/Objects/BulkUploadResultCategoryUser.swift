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

open class BulkUploadResultCategoryUser: BulkUploadResult {

	public class BulkUploadResultCategoryUserTokenizer: BulkUploadResult.BulkUploadResultTokenizer {
		
		public var categoryId: BaseTokenizedObject {
			get {
				return self.append("categoryId") 
			}
		}
		
		public var categoryReferenceId: BaseTokenizedObject {
			get {
				return self.append("categoryReferenceId") 
			}
		}
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var permissionLevel: BaseTokenizedObject {
			get {
				return self.append("permissionLevel") 
			}
		}
		
		public var updateMethod: BaseTokenizedObject {
			get {
				return self.append("updateMethod") 
			}
		}
		
		public var requiredObjectStatus: BaseTokenizedObject {
			get {
				return self.append("requiredObjectStatus") 
			}
		}
	}

	public var categoryId: Int? = nil
	public var categoryReferenceId: String? = nil
	public var userId: String? = nil
	public var permissionLevel: Int? = nil
	public var updateMethod: Int? = nil
	public var requiredObjectStatus: Int? = nil


	public func setMultiRequestToken(categoryId: String) {
		self.dict["categoryId"] = categoryId
	}
	
	public func setMultiRequestToken(categoryReferenceId: String) {
		self.dict["categoryReferenceId"] = categoryReferenceId
	}
	
	public func setMultiRequestToken(userId: String) {
		self.dict["userId"] = userId
	}
	
	public func setMultiRequestToken(permissionLevel: String) {
		self.dict["permissionLevel"] = permissionLevel
	}
	
	public func setMultiRequestToken(updateMethod: String) {
		self.dict["updateMethod"] = updateMethod
	}
	
	public func setMultiRequestToken(requiredObjectStatus: String) {
		self.dict["requiredObjectStatus"] = requiredObjectStatus
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["categoryId"] != nil {
			categoryId = dict["categoryId"] as? Int
		}
		if dict["categoryReferenceId"] != nil {
			categoryReferenceId = dict["categoryReferenceId"] as? String
		}
		if dict["userId"] != nil {
			userId = dict["userId"] as? String
		}
		if dict["permissionLevel"] != nil {
			permissionLevel = dict["permissionLevel"] as? Int
		}
		if dict["updateMethod"] != nil {
			updateMethod = dict["updateMethod"] as? Int
		}
		if dict["requiredObjectStatus"] != nil {
			requiredObjectStatus = dict["requiredObjectStatus"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(categoryId != nil) {
			dict["categoryId"] = categoryId!
		}
		if(categoryReferenceId != nil) {
			dict["categoryReferenceId"] = categoryReferenceId!
		}
		if(userId != nil) {
			dict["userId"] = userId!
		}
		if(permissionLevel != nil) {
			dict["permissionLevel"] = permissionLevel!
		}
		if(updateMethod != nil) {
			dict["updateMethod"] = updateMethod!
		}
		if(requiredObjectStatus != nil) {
			dict["requiredObjectStatus"] = requiredObjectStatus!
		}
		return dict
	}
}

