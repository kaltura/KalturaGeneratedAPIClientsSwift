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

open class ScheduleEventBaseFilter: RelatedFilter {

	public var idEqual: Int? = nil
	public var idIn: String? = nil
	public var idNotIn: String? = nil
	public var parentIdEqual: Int? = nil
	public var parentIdIn: String? = nil
	public var parentIdNotIn: String? = nil
	public var statusEqual: ScheduleEventStatus? = nil
	public var statusIn: String? = nil
	public var startDateGreaterThanOrEqual: Int? = nil
	public var startDateLessThanOrEqual: Int? = nil
	public var endDateGreaterThanOrEqual: Int? = nil
	public var endDateLessThanOrEqual: Int? = nil
	public var referenceIdEqual: String? = nil
	public var referenceIdIn: String? = nil
	public var ownerIdEqual: String? = nil
	public var ownerIdIn: String? = nil
	public var priorityEqual: Int? = nil
	public var priorityIn: String? = nil
	public var priorityGreaterThanOrEqual: Int? = nil
	public var priorityLessThanOrEqual: Int? = nil
	public var recurrenceTypeEqual: ScheduleEventRecurrenceType? = nil
	public var recurrenceTypeIn: String? = nil
	public var tagsLike: String? = nil
	public var tagsMultiLikeOr: String? = nil
	public var tagsMultiLikeAnd: String? = nil
	public var createdAtGreaterThanOrEqual: Int? = nil
	public var createdAtLessThanOrEqual: Int? = nil
	public var updatedAtGreaterThanOrEqual: Int? = nil
	public var updatedAtLessThanOrEqual: Int? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["idEqual"] != nil {
			idEqual = dict["idEqual"] as? Int
		}
		if dict["idIn"] != nil {
			idIn = dict["idIn"] as? String
		}
		if dict["idNotIn"] != nil {
			idNotIn = dict["idNotIn"] as? String
		}
		if dict["parentIdEqual"] != nil {
			parentIdEqual = dict["parentIdEqual"] as? Int
		}
		if dict["parentIdIn"] != nil {
			parentIdIn = dict["parentIdIn"] as? String
		}
		if dict["parentIdNotIn"] != nil {
			parentIdNotIn = dict["parentIdNotIn"] as? String
		}
		if dict["statusEqual"] != nil {
			statusEqual = ScheduleEventStatus(rawValue: (dict["statusEqual"] as? Int)!)
		}
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
		}
		if dict["startDateGreaterThanOrEqual"] != nil {
			startDateGreaterThanOrEqual = dict["startDateGreaterThanOrEqual"] as? Int
		}
		if dict["startDateLessThanOrEqual"] != nil {
			startDateLessThanOrEqual = dict["startDateLessThanOrEqual"] as? Int
		}
		if dict["endDateGreaterThanOrEqual"] != nil {
			endDateGreaterThanOrEqual = dict["endDateGreaterThanOrEqual"] as? Int
		}
		if dict["endDateLessThanOrEqual"] != nil {
			endDateLessThanOrEqual = dict["endDateLessThanOrEqual"] as? Int
		}
		if dict["referenceIdEqual"] != nil {
			referenceIdEqual = dict["referenceIdEqual"] as? String
		}
		if dict["referenceIdIn"] != nil {
			referenceIdIn = dict["referenceIdIn"] as? String
		}
		if dict["ownerIdEqual"] != nil {
			ownerIdEqual = dict["ownerIdEqual"] as? String
		}
		if dict["ownerIdIn"] != nil {
			ownerIdIn = dict["ownerIdIn"] as? String
		}
		if dict["priorityEqual"] != nil {
			priorityEqual = dict["priorityEqual"] as? Int
		}
		if dict["priorityIn"] != nil {
			priorityIn = dict["priorityIn"] as? String
		}
		if dict["priorityGreaterThanOrEqual"] != nil {
			priorityGreaterThanOrEqual = dict["priorityGreaterThanOrEqual"] as? Int
		}
		if dict["priorityLessThanOrEqual"] != nil {
			priorityLessThanOrEqual = dict["priorityLessThanOrEqual"] as? Int
		}
		if dict["recurrenceTypeEqual"] != nil {
			recurrenceTypeEqual = ScheduleEventRecurrenceType(rawValue: (dict["recurrenceTypeEqual"] as? Int)!)
		}
		if dict["recurrenceTypeIn"] != nil {
			recurrenceTypeIn = dict["recurrenceTypeIn"] as? String
		}
		if dict["tagsLike"] != nil {
			tagsLike = dict["tagsLike"] as? String
		}
		if dict["tagsMultiLikeOr"] != nil {
			tagsMultiLikeOr = dict["tagsMultiLikeOr"] as? String
		}
		if dict["tagsMultiLikeAnd"] != nil {
			tagsMultiLikeAnd = dict["tagsMultiLikeAnd"] as? String
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

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(idEqual != nil) {
			dict["idEqual"] = idEqual!
		}
		if(idIn != nil) {
			dict["idIn"] = idIn!
		}
		if(idNotIn != nil) {
			dict["idNotIn"] = idNotIn!
		}
		if(parentIdEqual != nil) {
			dict["parentIdEqual"] = parentIdEqual!
		}
		if(parentIdIn != nil) {
			dict["parentIdIn"] = parentIdIn!
		}
		if(parentIdNotIn != nil) {
			dict["parentIdNotIn"] = parentIdNotIn!
		}
		if(statusEqual != nil) {
			dict["statusEqual"] = statusEqual!.rawValue
		}
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		if(startDateGreaterThanOrEqual != nil) {
			dict["startDateGreaterThanOrEqual"] = startDateGreaterThanOrEqual!
		}
		if(startDateLessThanOrEqual != nil) {
			dict["startDateLessThanOrEqual"] = startDateLessThanOrEqual!
		}
		if(endDateGreaterThanOrEqual != nil) {
			dict["endDateGreaterThanOrEqual"] = endDateGreaterThanOrEqual!
		}
		if(endDateLessThanOrEqual != nil) {
			dict["endDateLessThanOrEqual"] = endDateLessThanOrEqual!
		}
		if(referenceIdEqual != nil) {
			dict["referenceIdEqual"] = referenceIdEqual!
		}
		if(referenceIdIn != nil) {
			dict["referenceIdIn"] = referenceIdIn!
		}
		if(ownerIdEqual != nil) {
			dict["ownerIdEqual"] = ownerIdEqual!
		}
		if(ownerIdIn != nil) {
			dict["ownerIdIn"] = ownerIdIn!
		}
		if(priorityEqual != nil) {
			dict["priorityEqual"] = priorityEqual!
		}
		if(priorityIn != nil) {
			dict["priorityIn"] = priorityIn!
		}
		if(priorityGreaterThanOrEqual != nil) {
			dict["priorityGreaterThanOrEqual"] = priorityGreaterThanOrEqual!
		}
		if(priorityLessThanOrEqual != nil) {
			dict["priorityLessThanOrEqual"] = priorityLessThanOrEqual!
		}
		if(recurrenceTypeEqual != nil) {
			dict["recurrenceTypeEqual"] = recurrenceTypeEqual!.rawValue
		}
		if(recurrenceTypeIn != nil) {
			dict["recurrenceTypeIn"] = recurrenceTypeIn!
		}
		if(tagsLike != nil) {
			dict["tagsLike"] = tagsLike!
		}
		if(tagsMultiLikeOr != nil) {
			dict["tagsMultiLikeOr"] = tagsMultiLikeOr!
		}
		if(tagsMultiLikeAnd != nil) {
			dict["tagsMultiLikeAnd"] = tagsMultiLikeAnd!
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
		return dict
	}
}

