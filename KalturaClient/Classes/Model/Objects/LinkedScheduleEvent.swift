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
 * This class was generated using generate.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class LinkedScheduleEvent: ObjectBase {

	public class LinkedScheduleEventTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var offset: BaseTokenizedObject {
			get {
				return self.append("offset") 
			}
		}
		
		public var eventId: BaseTokenizedObject {
			get {
				return self.append("eventId") 
			}
		}
	}

	/**  The time between the end of the event which it's id is in $eventId and the start
	  of the event holding this object  */
	public var offset: Int? = nil
	/**  The id of the event influencing the start of the event holding this object  */
	public var eventId: Int? = nil


	public func setMultiRequestToken(offset: String) {
		self.dict["offset"] = offset
	}
	
	public func setMultiRequestToken(eventId: String) {
		self.dict["eventId"] = eventId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["offset"] != nil {
			offset = dict["offset"] as? Int
		}
		if dict["eventId"] != nil {
			eventId = dict["eventId"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(offset != nil) {
			dict["offset"] = offset!
		}
		if(eventId != nil) {
			dict["eventId"] = eventId!
		}
		return dict
	}
}

