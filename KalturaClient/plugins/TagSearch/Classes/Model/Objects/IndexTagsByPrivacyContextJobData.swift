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

open class IndexTagsByPrivacyContextJobData: JobData {

	public class IndexTagsByPrivacyContextJobDataTokenizer: JobData.JobDataTokenizer {
		
		public var changedCategoryId: BaseTokenizedObject {
			get {
				return self.append("changedCategoryId") 
			}
		}
		
		public var deletedPrivacyContexts: BaseTokenizedObject {
			get {
				return self.append("deletedPrivacyContexts") 
			}
		}
		
		public var addedPrivacyContexts: BaseTokenizedObject {
			get {
				return self.append("addedPrivacyContexts") 
			}
		}
	}

	public var changedCategoryId: Int? = nil
	public var deletedPrivacyContexts: String? = nil
	public var addedPrivacyContexts: String? = nil


	public func setMultiRequestToken(changedCategoryId: String) {
		self.dict["changedCategoryId"] = changedCategoryId
	}
	
	public func setMultiRequestToken(deletedPrivacyContexts: String) {
		self.dict["deletedPrivacyContexts"] = deletedPrivacyContexts
	}
	
	public func setMultiRequestToken(addedPrivacyContexts: String) {
		self.dict["addedPrivacyContexts"] = addedPrivacyContexts
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["changedCategoryId"] != nil {
			changedCategoryId = dict["changedCategoryId"] as? Int
		}
		if dict["deletedPrivacyContexts"] != nil {
			deletedPrivacyContexts = dict["deletedPrivacyContexts"] as? String
		}
		if dict["addedPrivacyContexts"] != nil {
			addedPrivacyContexts = dict["addedPrivacyContexts"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(changedCategoryId != nil) {
			dict["changedCategoryId"] = changedCategoryId!
		}
		if(deletedPrivacyContexts != nil) {
			dict["deletedPrivacyContexts"] = deletedPrivacyContexts!
		}
		if(addedPrivacyContexts != nil) {
			dict["addedPrivacyContexts"] = addedPrivacyContexts!
		}
		return dict
	}
}

