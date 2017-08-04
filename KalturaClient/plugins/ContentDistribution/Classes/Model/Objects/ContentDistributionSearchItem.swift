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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class ContentDistributionSearchItem: SearchItem {

	public var noDistributionProfiles: Bool? = nil
	public var distributionProfileId: Int? = nil
	public var distributionSunStatus: EntryDistributionSunStatus? = nil
	public var entryDistributionFlag: EntryDistributionFlag? = nil
	public var entryDistributionStatus: EntryDistributionStatus? = nil
	public var hasEntryDistributionValidationErrors: Bool? = nil
	/**  Comma seperated validation error types  */
	public var entryDistributionValidationErrors: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["noDistributionProfiles"] != nil {
			noDistributionProfiles = dict["noDistributionProfiles"] as? Bool
		}
		if dict["distributionProfileId"] != nil {
			distributionProfileId = dict["distributionProfileId"] as? Int
		}
		if dict["distributionSunStatus"] != nil {
			distributionSunStatus = EntryDistributionSunStatus(rawValue: (dict["distributionSunStatus"] as? Int)!)
		}
		if dict["entryDistributionFlag"] != nil {
			entryDistributionFlag = EntryDistributionFlag(rawValue: (dict["entryDistributionFlag"] as? Int)!)
		}
		if dict["entryDistributionStatus"] != nil {
			entryDistributionStatus = EntryDistributionStatus(rawValue: (dict["entryDistributionStatus"] as? Int)!)
		}
		if dict["hasEntryDistributionValidationErrors"] != nil {
			hasEntryDistributionValidationErrors = dict["hasEntryDistributionValidationErrors"] as? Bool
		}
		if dict["entryDistributionValidationErrors"] != nil {
			entryDistributionValidationErrors = dict["entryDistributionValidationErrors"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(noDistributionProfiles != nil) {
			dict["noDistributionProfiles"] = noDistributionProfiles!
		}
		if(distributionProfileId != nil) {
			dict["distributionProfileId"] = distributionProfileId!
		}
		if(distributionSunStatus != nil) {
			dict["distributionSunStatus"] = distributionSunStatus!.rawValue
		}
		if(entryDistributionFlag != nil) {
			dict["entryDistributionFlag"] = entryDistributionFlag!.rawValue
		}
		if(entryDistributionStatus != nil) {
			dict["entryDistributionStatus"] = entryDistributionStatus!.rawValue
		}
		if(hasEntryDistributionValidationErrors != nil) {
			dict["hasEntryDistributionValidationErrors"] = hasEntryDistributionValidationErrors!
		}
		if(entryDistributionValidationErrors != nil) {
			dict["entryDistributionValidationErrors"] = entryDistributionValidationErrors!
		}
		return dict
	}
}

