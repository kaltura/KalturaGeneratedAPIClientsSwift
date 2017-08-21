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

open class CuePoint: ObjectBase {

	public var id: String? = nil
	public var cuePointType: CuePointType? = nil
	public var status: CuePointStatus? = nil
	public var entryId: String? = nil
	public var partnerId: Int? = nil
	public var createdAt: Int? = nil
	public var updatedAt: Int? = nil
	public var triggeredAt: Int? = nil
	public var tags: String? = nil
	/**  Start time in milliseconds  */
	public var startTime: Int? = nil
	public var userId: String? = nil
	public var partnerData: String? = nil
	public var partnerSortValue: Int? = nil
	public var forceStop: Bool? = nil
	public var thumbOffset: Int? = nil
	public var systemName: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? String
		}
		if dict["cuePointType"] != nil {
			cuePointType = CuePointType(rawValue: "\(dict["cuePointType"]!)")
		}
		if dict["status"] != nil {
			status = CuePointStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["entryId"] != nil {
			entryId = dict["entryId"] as? String
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["triggeredAt"] != nil {
			triggeredAt = dict["triggeredAt"] as? Int
		}
		if dict["tags"] != nil {
			tags = dict["tags"] as? String
		}
		if dict["startTime"] != nil {
			startTime = dict["startTime"] as? Int
		}
		if dict["userId"] != nil {
			userId = dict["userId"] as? String
		}
		if dict["partnerData"] != nil {
			partnerData = dict["partnerData"] as? String
		}
		if dict["partnerSortValue"] != nil {
			partnerSortValue = dict["partnerSortValue"] as? Int
		}
		if dict["forceStop"] != nil {
			forceStop = dict["forceStop"] as? Bool
		}
		if dict["thumbOffset"] != nil {
			thumbOffset = dict["thumbOffset"] as? Int
		}
		if dict["systemName"] != nil {
			systemName = dict["systemName"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(entryId != nil) {
			dict["entryId"] = entryId!
		}
		if(triggeredAt != nil) {
			dict["triggeredAt"] = triggeredAt!
		}
		if(tags != nil) {
			dict["tags"] = tags!
		}
		if(startTime != nil) {
			dict["startTime"] = startTime!
		}
		if(partnerData != nil) {
			dict["partnerData"] = partnerData!
		}
		if(partnerSortValue != nil) {
			dict["partnerSortValue"] = partnerSortValue!
		}
		if(forceStop != nil) {
			dict["forceStop"] = forceStop!
		}
		if(thumbOffset != nil) {
			dict["thumbOffset"] = thumbOffset!
		}
		if(systemName != nil) {
			dict["systemName"] = systemName!
		}
		return dict
	}
}

