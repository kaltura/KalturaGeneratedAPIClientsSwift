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

open class SyncCategoryPrivacyContextJobData: JobData {

	public class SyncCategoryPrivacyContextJobDataTokenizer: JobData.JobDataTokenizer {
		
		public var categoryId: BaseTokenizedObject {
			get {
				return self.append("categoryId") 
			}
		}
		
		public var lastUpdatedCategoryEntryCreatedAt: BaseTokenizedObject {
			get {
				return self.append("lastUpdatedCategoryEntryCreatedAt") 
			}
		}
		
		public var lastUpdatedCategoryCreatedAt: BaseTokenizedObject {
			get {
				return self.append("lastUpdatedCategoryCreatedAt") 
			}
		}
	}

	/**  category id  */
	public var categoryId: Int? = nil
	/**  Saves the last category entry creation date that was updated      In case of
	  crash the batch will restart from that point  */
	public var lastUpdatedCategoryEntryCreatedAt: Int? = nil
	/**  Saves the last sub category creation date that was updated      In case of crash
	  the batch will restart from that point  */
	public var lastUpdatedCategoryCreatedAt: Int? = nil


	public func setMultiRequestToken(categoryId: String) {
		self.dict["categoryId"] = categoryId
	}
	
	public func setMultiRequestToken(lastUpdatedCategoryEntryCreatedAt: String) {
		self.dict["lastUpdatedCategoryEntryCreatedAt"] = lastUpdatedCategoryEntryCreatedAt
	}
	
	public func setMultiRequestToken(lastUpdatedCategoryCreatedAt: String) {
		self.dict["lastUpdatedCategoryCreatedAt"] = lastUpdatedCategoryCreatedAt
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["categoryId"] != nil {
			categoryId = dict["categoryId"] as? Int
		}
		if dict["lastUpdatedCategoryEntryCreatedAt"] != nil {
			lastUpdatedCategoryEntryCreatedAt = dict["lastUpdatedCategoryEntryCreatedAt"] as? Int
		}
		if dict["lastUpdatedCategoryCreatedAt"] != nil {
			lastUpdatedCategoryCreatedAt = dict["lastUpdatedCategoryCreatedAt"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(categoryId != nil) {
			dict["categoryId"] = categoryId!
		}
		if(lastUpdatedCategoryEntryCreatedAt != nil) {
			dict["lastUpdatedCategoryEntryCreatedAt"] = lastUpdatedCategoryEntryCreatedAt!
		}
		if(lastUpdatedCategoryCreatedAt != nil) {
			dict["lastUpdatedCategoryCreatedAt"] = lastUpdatedCategoryCreatedAt!
		}
		return dict
	}
}

