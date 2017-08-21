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

open class ServerNodeBaseFilter: Filter {

	public var idEqual: Int? = nil
	public var idIn: String? = nil
	public var createdAtGreaterThanOrEqual: Int? = nil
	public var createdAtLessThanOrEqual: Int? = nil
	public var updatedAtGreaterThanOrEqual: Int? = nil
	public var updatedAtLessThanOrEqual: Int? = nil
	public var heartbeatTimeGreaterThanOrEqual: Int? = nil
	public var heartbeatTimeLessThanOrEqual: Int? = nil
	public var nameEqual: String? = nil
	public var nameIn: String? = nil
	public var systemNameEqual: String? = nil
	public var systemNameIn: String? = nil
	public var hostNameLike: String? = nil
	public var hostNameMultiLikeOr: String? = nil
	public var hostNameMultiLikeAnd: String? = nil
	public var statusEqual: ServerNodeStatus? = nil
	public var statusIn: String? = nil
	public var typeEqual: ServerNodeType? = nil
	public var typeIn: String? = nil
	public var tagsLike: String? = nil
	public var tagsMultiLikeOr: String? = nil
	public var tagsMultiLikeAnd: String? = nil
	public var dcEqual: Int? = nil
	public var dcIn: String? = nil
	public var parentIdLike: String? = nil
	public var parentIdMultiLikeOr: String? = nil
	public var parentIdMultiLikeAnd: String? = nil


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
		if dict["heartbeatTimeGreaterThanOrEqual"] != nil {
			heartbeatTimeGreaterThanOrEqual = dict["heartbeatTimeGreaterThanOrEqual"] as? Int
		}
		if dict["heartbeatTimeLessThanOrEqual"] != nil {
			heartbeatTimeLessThanOrEqual = dict["heartbeatTimeLessThanOrEqual"] as? Int
		}
		if dict["nameEqual"] != nil {
			nameEqual = dict["nameEqual"] as? String
		}
		if dict["nameIn"] != nil {
			nameIn = dict["nameIn"] as? String
		}
		if dict["systemNameEqual"] != nil {
			systemNameEqual = dict["systemNameEqual"] as? String
		}
		if dict["systemNameIn"] != nil {
			systemNameIn = dict["systemNameIn"] as? String
		}
		if dict["hostNameLike"] != nil {
			hostNameLike = dict["hostNameLike"] as? String
		}
		if dict["hostNameMultiLikeOr"] != nil {
			hostNameMultiLikeOr = dict["hostNameMultiLikeOr"] as? String
		}
		if dict["hostNameMultiLikeAnd"] != nil {
			hostNameMultiLikeAnd = dict["hostNameMultiLikeAnd"] as? String
		}
		if dict["statusEqual"] != nil {
			statusEqual = ServerNodeStatus(rawValue: (dict["statusEqual"] as? Int)!)
		}
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
		}
		if dict["typeEqual"] != nil {
			typeEqual = ServerNodeType(rawValue: "\(dict["typeEqual"]!)")
		}
		if dict["typeIn"] != nil {
			typeIn = dict["typeIn"] as? String
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
		if dict["dcEqual"] != nil {
			dcEqual = dict["dcEqual"] as? Int
		}
		if dict["dcIn"] != nil {
			dcIn = dict["dcIn"] as? String
		}
		if dict["parentIdLike"] != nil {
			parentIdLike = dict["parentIdLike"] as? String
		}
		if dict["parentIdMultiLikeOr"] != nil {
			parentIdMultiLikeOr = dict["parentIdMultiLikeOr"] as? String
		}
		if dict["parentIdMultiLikeAnd"] != nil {
			parentIdMultiLikeAnd = dict["parentIdMultiLikeAnd"] as? String
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
		if(heartbeatTimeGreaterThanOrEqual != nil) {
			dict["heartbeatTimeGreaterThanOrEqual"] = heartbeatTimeGreaterThanOrEqual!
		}
		if(heartbeatTimeLessThanOrEqual != nil) {
			dict["heartbeatTimeLessThanOrEqual"] = heartbeatTimeLessThanOrEqual!
		}
		if(nameEqual != nil) {
			dict["nameEqual"] = nameEqual!
		}
		if(nameIn != nil) {
			dict["nameIn"] = nameIn!
		}
		if(systemNameEqual != nil) {
			dict["systemNameEqual"] = systemNameEqual!
		}
		if(systemNameIn != nil) {
			dict["systemNameIn"] = systemNameIn!
		}
		if(hostNameLike != nil) {
			dict["hostNameLike"] = hostNameLike!
		}
		if(hostNameMultiLikeOr != nil) {
			dict["hostNameMultiLikeOr"] = hostNameMultiLikeOr!
		}
		if(hostNameMultiLikeAnd != nil) {
			dict["hostNameMultiLikeAnd"] = hostNameMultiLikeAnd!
		}
		if(statusEqual != nil) {
			dict["statusEqual"] = statusEqual!.rawValue
		}
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		if(typeEqual != nil) {
			dict["typeEqual"] = typeEqual!.rawValue
		}
		if(typeIn != nil) {
			dict["typeIn"] = typeIn!
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
		if(dcEqual != nil) {
			dict["dcEqual"] = dcEqual!
		}
		if(dcIn != nil) {
			dict["dcIn"] = dcIn!
		}
		if(parentIdLike != nil) {
			dict["parentIdLike"] = parentIdLike!
		}
		if(parentIdMultiLikeOr != nil) {
			dict["parentIdMultiLikeOr"] = parentIdMultiLikeOr!
		}
		if(parentIdMultiLikeAnd != nil) {
			dict["parentIdMultiLikeAnd"] = parentIdMultiLikeAnd!
		}
		return dict
	}
}

