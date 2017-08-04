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

open class EntryDistributionBaseFilter: RelatedFilter {

	public var idEqual: Int? = nil
	public var idIn: String? = nil
	public var createdAtGreaterThanOrEqual: Int? = nil
	public var createdAtLessThanOrEqual: Int? = nil
	public var updatedAtGreaterThanOrEqual: Int? = nil
	public var updatedAtLessThanOrEqual: Int? = nil
	public var submittedAtGreaterThanOrEqual: Int? = nil
	public var submittedAtLessThanOrEqual: Int? = nil
	public var entryIdEqual: String? = nil
	public var entryIdIn: String? = nil
	public var distributionProfileIdEqual: Int? = nil
	public var distributionProfileIdIn: String? = nil
	public var statusEqual: EntryDistributionStatus? = nil
	public var statusIn: String? = nil
	public var dirtyStatusEqual: EntryDistributionFlag? = nil
	public var dirtyStatusIn: String? = nil
	public var sunriseGreaterThanOrEqual: Int? = nil
	public var sunriseLessThanOrEqual: Int? = nil
	public var sunsetGreaterThanOrEqual: Int? = nil
	public var sunsetLessThanOrEqual: Int? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["idEqual"] != nil {
			idEqual = dict["idEqual"] as? Int
		}
		if dict["idIn"] != nil {
			idIn = dict["idIn"] as? String
		}
		if dict["createdAtGreaterThanOrEqual"] != nil {
			createdAtGreaterThanOrEqual = dict["createdAtGreaterThanOrEqual"] as? Int
		}
		if dict["createdAtLessThanOrEqual"] != nil {
			createdAtLessThanOrEqual = dict["createdAtLessThanOrEqual"] as? Int
		}
		if dict["updatedAtGreaterThanOrEqual"] != nil {
			updatedAtGreaterThanOrEqual = dict["updatedAtGreaterThanOrEqual"] as? Int
		}
		if dict["updatedAtLessThanOrEqual"] != nil {
			updatedAtLessThanOrEqual = dict["updatedAtLessThanOrEqual"] as? Int
		}
		if dict["submittedAtGreaterThanOrEqual"] != nil {
			submittedAtGreaterThanOrEqual = dict["submittedAtGreaterThanOrEqual"] as? Int
		}
		if dict["submittedAtLessThanOrEqual"] != nil {
			submittedAtLessThanOrEqual = dict["submittedAtLessThanOrEqual"] as? Int
		}
		if dict["entryIdEqual"] != nil {
			entryIdEqual = dict["entryIdEqual"] as? String
		}
		if dict["entryIdIn"] != nil {
			entryIdIn = dict["entryIdIn"] as? String
		}
		if dict["distributionProfileIdEqual"] != nil {
			distributionProfileIdEqual = dict["distributionProfileIdEqual"] as? Int
		}
		if dict["distributionProfileIdIn"] != nil {
			distributionProfileIdIn = dict["distributionProfileIdIn"] as? String
		}
		if dict["statusEqual"] != nil {
			statusEqual = EntryDistributionStatus(rawValue: (dict["statusEqual"] as? Int)!)
		}
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
		}
		if dict["dirtyStatusEqual"] != nil {
			dirtyStatusEqual = EntryDistributionFlag(rawValue: (dict["dirtyStatusEqual"] as? Int)!)
		}
		if dict["dirtyStatusIn"] != nil {
			dirtyStatusIn = dict["dirtyStatusIn"] as? String
		}
		if dict["sunriseGreaterThanOrEqual"] != nil {
			sunriseGreaterThanOrEqual = dict["sunriseGreaterThanOrEqual"] as? Int
		}
		if dict["sunriseLessThanOrEqual"] != nil {
			sunriseLessThanOrEqual = dict["sunriseLessThanOrEqual"] as? Int
		}
		if dict["sunsetGreaterThanOrEqual"] != nil {
			sunsetGreaterThanOrEqual = dict["sunsetGreaterThanOrEqual"] as? Int
		}
		if dict["sunsetLessThanOrEqual"] != nil {
			sunsetLessThanOrEqual = dict["sunsetLessThanOrEqual"] as? Int
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(idEqual != nil) {
			dict["idEqual"] = idEqual!
		}
		if(idIn != nil) {
			dict["idIn"] = idIn!
		}
		if(createdAtGreaterThanOrEqual != nil) {
			dict["createdAtGreaterThanOrEqual"] = createdAtGreaterThanOrEqual!
		}
		if(createdAtLessThanOrEqual != nil) {
			dict["createdAtLessThanOrEqual"] = createdAtLessThanOrEqual!
		}
		if(updatedAtGreaterThanOrEqual != nil) {
			dict["updatedAtGreaterThanOrEqual"] = updatedAtGreaterThanOrEqual!
		}
		if(updatedAtLessThanOrEqual != nil) {
			dict["updatedAtLessThanOrEqual"] = updatedAtLessThanOrEqual!
		}
		if(submittedAtGreaterThanOrEqual != nil) {
			dict["submittedAtGreaterThanOrEqual"] = submittedAtGreaterThanOrEqual!
		}
		if(submittedAtLessThanOrEqual != nil) {
			dict["submittedAtLessThanOrEqual"] = submittedAtLessThanOrEqual!
		}
		if(entryIdEqual != nil) {
			dict["entryIdEqual"] = entryIdEqual!
		}
		if(entryIdIn != nil) {
			dict["entryIdIn"] = entryIdIn!
		}
		if(distributionProfileIdEqual != nil) {
			dict["distributionProfileIdEqual"] = distributionProfileIdEqual!
		}
		if(distributionProfileIdIn != nil) {
			dict["distributionProfileIdIn"] = distributionProfileIdIn!
		}
		if(statusEqual != nil) {
			dict["statusEqual"] = statusEqual!.rawValue
		}
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		if(dirtyStatusEqual != nil) {
			dict["dirtyStatusEqual"] = dirtyStatusEqual!.rawValue
		}
		if(dirtyStatusIn != nil) {
			dict["dirtyStatusIn"] = dirtyStatusIn!
		}
		if(sunriseGreaterThanOrEqual != nil) {
			dict["sunriseGreaterThanOrEqual"] = sunriseGreaterThanOrEqual!
		}
		if(sunriseLessThanOrEqual != nil) {
			dict["sunriseLessThanOrEqual"] = sunriseLessThanOrEqual!
		}
		if(sunsetGreaterThanOrEqual != nil) {
			dict["sunsetGreaterThanOrEqual"] = sunsetGreaterThanOrEqual!
		}
		if(sunsetLessThanOrEqual != nil) {
			dict["sunsetLessThanOrEqual"] = sunsetLessThanOrEqual!
		}
		return dict
	}
}

