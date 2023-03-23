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

open class VirtualScheduleEvent: ScheduleEvent {

	public class VirtualScheduleEventTokenizer: ScheduleEvent.ScheduleEventTokenizer {
		
		public var virtualEventId: BaseTokenizedObject {
			get {
				return self.append("virtualEventId") 
			}
		}
		
		public var virtualScheduleEventSubType: BaseTokenizedObject {
			get {
				return self.append("virtualScheduleEventSubType") 
			}
		}
	}

	/**  The ID of the virtual event connected to this Schedule Event  */
	public var virtualEventId: Int? = nil
	/**  The type of the Virtual Schedule Event  */
	public var virtualScheduleEventSubType: VirtualScheduleEventSubType? = nil


	public func setMultiRequestToken(virtualEventId: String) {
		self.dict["virtualEventId"] = virtualEventId
	}
	
	public func setMultiRequestToken(virtualScheduleEventSubType: String) {
		self.dict["virtualScheduleEventSubType"] = virtualScheduleEventSubType
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["virtualEventId"] != nil {
			virtualEventId = dict["virtualEventId"] as? Int
		}
		if dict["virtualScheduleEventSubType"] != nil {
			virtualScheduleEventSubType = VirtualScheduleEventSubType(rawValue: (dict["virtualScheduleEventSubType"] as? Int)!)
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(virtualEventId != nil) {
			dict["virtualEventId"] = virtualEventId!
		}
		if(virtualScheduleEventSubType != nil) {
			dict["virtualScheduleEventSubType"] = virtualScheduleEventSubType!.rawValue
		}
		return dict
	}
}

