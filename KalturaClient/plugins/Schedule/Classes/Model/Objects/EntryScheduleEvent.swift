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

open class EntryScheduleEvent: ScheduleEvent {

	public class EntryScheduleEventTokenizer: ScheduleEvent.ScheduleEventTokenizer {
		
		public var templateEntryId: BaseTokenizedObject {
			get {
				return self.append("templateEntryId") 
			}
		}
		
		public var entryIds: BaseTokenizedObject {
			get {
				return self.append("entryIds") 
			}
		}
		
		public var categoryIds: BaseTokenizedObject {
			get {
				return self.append("categoryIds") 
			}
		}
		
		public var blackoutConflicts: ArrayTokenizedObject<ScheduleEvent.ScheduleEventTokenizer> {
			get {
				return ArrayTokenizedObject<ScheduleEvent.ScheduleEventTokenizer>(self.append("blackoutConflicts"))
			} 
		}
	}

	/**  Entry to be used as template during content ingestion  */
	public var templateEntryId: String? = nil
	/**  Entries that associated with this event  */
	public var entryIds: String? = nil
	/**  Categories that associated with this event  */
	public var categoryIds: String? = nil
	/**  Blackout schedule events the conflict with this event  */
	public var blackoutConflicts: Array<ScheduleEvent>? = nil


	public func setMultiRequestToken(templateEntryId: String) {
		self.dict["templateEntryId"] = templateEntryId
	}
	
	public func setMultiRequestToken(entryIds: String) {
		self.dict["entryIds"] = entryIds
	}
	
	public func setMultiRequestToken(categoryIds: String) {
		self.dict["categoryIds"] = categoryIds
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["templateEntryId"] != nil {
			templateEntryId = dict["templateEntryId"] as? String
		}
		if dict["entryIds"] != nil {
			entryIds = dict["entryIds"] as? String
		}
		if dict["categoryIds"] != nil {
			categoryIds = dict["categoryIds"] as? String
		}
		if dict["blackoutConflicts"] != nil {
			blackoutConflicts = try JSONParser.parse(array: dict["blackoutConflicts"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(templateEntryId != nil) {
			dict["templateEntryId"] = templateEntryId!
		}
		if(entryIds != nil) {
			dict["entryIds"] = entryIds!
		}
		if(categoryIds != nil) {
			dict["categoryIds"] = categoryIds!
		}
		return dict
	}
}

