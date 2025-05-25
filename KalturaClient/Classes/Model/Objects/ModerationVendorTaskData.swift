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

open class ModerationVendorTaskData: VendorTaskData {

	public class ModerationVendorTaskDataTokenizer: VendorTaskData.VendorTaskDataTokenizer {
		
		public var ruleIds: BaseTokenizedObject {
			get {
				return self.append("ruleIds") 
			}
		}
		
		public var policyIds: BaseTokenizedObject {
			get {
				return self.append("policyIds") 
			}
		}
		
		public var categoryIds: BaseTokenizedObject {
			get {
				return self.append("categoryIds") 
			}
		}
		
		public var moderationOutputJson: BaseTokenizedObject {
			get {
				return self.append("moderationOutputJson") 
			}
		}
	}

	/**  A comma seperated string of rule IDs.  */
	public var ruleIds: String? = nil
	/**  A comma seperated string of policy IDs.  */
	public var policyIds: String? = nil
	/**  A comma seperated string of category IDs.  */
	public var categoryIds: String? = nil
	/**  JSON string containing the moderation output.  */
	public var moderationOutputJson: String? = nil


	public func setMultiRequestToken(ruleIds: String) {
		self.dict["ruleIds"] = ruleIds
	}
	
	public func setMultiRequestToken(policyIds: String) {
		self.dict["policyIds"] = policyIds
	}
	
	public func setMultiRequestToken(categoryIds: String) {
		self.dict["categoryIds"] = categoryIds
	}
	
	public func setMultiRequestToken(moderationOutputJson: String) {
		self.dict["moderationOutputJson"] = moderationOutputJson
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["ruleIds"] != nil {
			ruleIds = dict["ruleIds"] as? String
		}
		if dict["policyIds"] != nil {
			policyIds = dict["policyIds"] as? String
		}
		if dict["categoryIds"] != nil {
			categoryIds = dict["categoryIds"] as? String
		}
		if dict["moderationOutputJson"] != nil {
			moderationOutputJson = dict["moderationOutputJson"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(ruleIds != nil) {
			dict["ruleIds"] = ruleIds!
		}
		if(policyIds != nil) {
			dict["policyIds"] = policyIds!
		}
		if(categoryIds != nil) {
			dict["categoryIds"] = categoryIds!
		}
		if(moderationOutputJson != nil) {
			dict["moderationOutputJson"] = moderationOutputJson!
		}
		return dict
	}
}

