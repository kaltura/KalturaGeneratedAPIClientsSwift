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

open class PlayableEntryBaseFilter: BaseEntryFilter {

	public var lastPlayedAtGreaterThanOrEqual: Int? = nil
	public var lastPlayedAtLessThanOrEqual: Int? = nil
	public var durationLessThan: Int? = nil
	public var durationGreaterThan: Int? = nil
	public var durationLessThanOrEqual: Int? = nil
	public var durationGreaterThanOrEqual: Int? = nil
	public var durationTypeMatchOr: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["lastPlayedAtGreaterThanOrEqual"] != nil {
			lastPlayedAtGreaterThanOrEqual = dict["lastPlayedAtGreaterThanOrEqual"] as? Int
		}
		if dict["lastPlayedAtLessThanOrEqual"] != nil {
			lastPlayedAtLessThanOrEqual = dict["lastPlayedAtLessThanOrEqual"] as? Int
		}
		if dict["durationLessThan"] != nil {
			durationLessThan = dict["durationLessThan"] as? Int
		}
		if dict["durationGreaterThan"] != nil {
			durationGreaterThan = dict["durationGreaterThan"] as? Int
		}
		if dict["durationLessThanOrEqual"] != nil {
			durationLessThanOrEqual = dict["durationLessThanOrEqual"] as? Int
		}
		if dict["durationGreaterThanOrEqual"] != nil {
			durationGreaterThanOrEqual = dict["durationGreaterThanOrEqual"] as? Int
		}
		if dict["durationTypeMatchOr"] != nil {
			durationTypeMatchOr = dict["durationTypeMatchOr"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(lastPlayedAtGreaterThanOrEqual != nil) {
			dict["lastPlayedAtGreaterThanOrEqual"] = lastPlayedAtGreaterThanOrEqual!
		}
		if(lastPlayedAtLessThanOrEqual != nil) {
			dict["lastPlayedAtLessThanOrEqual"] = lastPlayedAtLessThanOrEqual!
		}
		if(durationLessThan != nil) {
			dict["durationLessThan"] = durationLessThan!
		}
		if(durationGreaterThan != nil) {
			dict["durationGreaterThan"] = durationGreaterThan!
		}
		if(durationLessThanOrEqual != nil) {
			dict["durationLessThanOrEqual"] = durationLessThanOrEqual!
		}
		if(durationGreaterThanOrEqual != nil) {
			dict["durationGreaterThanOrEqual"] = durationGreaterThanOrEqual!
		}
		if(durationTypeMatchOr != nil) {
			dict["durationTypeMatchOr"] = durationTypeMatchOr!
		}
		return dict
	}
}

