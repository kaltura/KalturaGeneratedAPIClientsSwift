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

open class ScheduledVendorTaskData: VendorTaskData {

	public class ScheduledVendorTaskDataTokenizer: VendorTaskData.VendorTaskDataTokenizer {
		
		public var startDate: BaseTokenizedObject {
			get {
				return self.append("startDate") 
			}
		}
		
		public var endDate: BaseTokenizedObject {
			get {
				return self.append("endDate") 
			}
		}
		
		public var scheduledEventId: BaseTokenizedObject {
			get {
				return self.append("scheduledEventId") 
			}
		}
	}

	public var startDate: Int? = nil
	public var endDate: Int? = nil
	public var scheduledEventId: Int? = nil


	public func setMultiRequestToken(startDate: String) {
		self.dict["startDate"] = startDate
	}
	
	public func setMultiRequestToken(endDate: String) {
		self.dict["endDate"] = endDate
	}
	
	public func setMultiRequestToken(scheduledEventId: String) {
		self.dict["scheduledEventId"] = scheduledEventId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["startDate"] != nil {
			startDate = dict["startDate"] as? Int
		}
		if dict["endDate"] != nil {
			endDate = dict["endDate"] as? Int
		}
		if dict["scheduledEventId"] != nil {
			scheduledEventId = dict["scheduledEventId"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(startDate != nil) {
			dict["startDate"] = startDate!
		}
		if(endDate != nil) {
			dict["endDate"] = endDate!
		}
		if(scheduledEventId != nil) {
			dict["scheduledEventId"] = scheduledEventId!
		}
		return dict
	}
}

