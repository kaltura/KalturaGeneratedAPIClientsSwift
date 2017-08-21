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

open class ReportInputFilter: ReportInputBaseFilter {

	/**  Search keywords to filter objects  */
	public var keywords: String? = nil
	/**  Search keywords in onjects tags  */
	public var searchInTags: Bool? = nil
	/**  Search keywords in onjects admin tags  */
	public var searchInAdminTags: Bool? = nil
	/**  Search onjects in specified categories  */
	public var categories: String? = nil
	/**  Time zone offset in minutes  */
	public var timeZoneOffset: Int? = nil
	/**  Aggregated results according to interval  */
	public var interval: ReportInterval? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["keywords"] != nil {
			keywords = dict["keywords"] as? String
		}
		if dict["searchInTags"] != nil {
			searchInTags = dict["searchInTags"] as? Bool
		}
		if dict["searchInAdminTags"] != nil {
			searchInAdminTags = dict["searchInAdminTags"] as? Bool
		}
		if dict["categories"] != nil {
			categories = dict["categories"] as? String
		}
		if dict["timeZoneOffset"] != nil {
			timeZoneOffset = dict["timeZoneOffset"] as? Int
		}
		if dict["interval"] != nil {
			interval = ReportInterval(rawValue: "\(dict["interval"]!)")
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(keywords != nil) {
			dict["keywords"] = keywords!
		}
		if(searchInTags != nil) {
			dict["searchInTags"] = searchInTags!
		}
		if(searchInAdminTags != nil) {
			dict["searchInAdminTags"] = searchInAdminTags!
		}
		if(categories != nil) {
			dict["categories"] = categories!
		}
		if(timeZoneOffset != nil) {
			dict["timeZoneOffset"] = timeZoneOffset!
		}
		if(interval != nil) {
			dict["interval"] = interval!.rawValue
		}
		return dict
	}
}

