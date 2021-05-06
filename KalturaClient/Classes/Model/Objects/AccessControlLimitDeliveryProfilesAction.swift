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
// Copyright (C) 2006-2021  Kaltura Inc.
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

open class AccessControlLimitDeliveryProfilesAction: RuleAction {

	public class AccessControlLimitDeliveryProfilesActionTokenizer: RuleAction.RuleActionTokenizer {
		
		public var deliveryProfileIds: BaseTokenizedObject {
			get {
				return self.append("deliveryProfileIds") 
			}
		}
		
		public var isBlockedList: BaseTokenizedObject {
			get {
				return self.append("isBlockedList") 
			}
		}
	}

	/**  Comma separated list of delivery profile ids  */
	public var deliveryProfileIds: String? = nil
	public var isBlockedList: Bool? = nil


	public func setMultiRequestToken(deliveryProfileIds: String) {
		self.dict["deliveryProfileIds"] = deliveryProfileIds
	}
	
	public func setMultiRequestToken(isBlockedList: String) {
		self.dict["isBlockedList"] = isBlockedList
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["deliveryProfileIds"] != nil {
			deliveryProfileIds = dict["deliveryProfileIds"] as? String
		}
		if dict["isBlockedList"] != nil {
			isBlockedList = dict["isBlockedList"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(deliveryProfileIds != nil) {
			dict["deliveryProfileIds"] = deliveryProfileIds!
		}
		if(isBlockedList != nil) {
			dict["isBlockedList"] = isBlockedList!
		}
		return dict
	}
}

