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
// Copyright (C) 2006-2022  Kaltura Inc.
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

open class LiveStreamScheduleEvent: BaseLiveScheduleEvent {

	public class LiveStreamScheduleEventTokenizer: BaseLiveScheduleEvent.BaseLiveScheduleEventTokenizer {
		
		public var sourceEntryId: BaseTokenizedObject {
			get {
				return self.append("sourceEntryId") 
			}
		}
		
		public var projectedAudience: BaseTokenizedObject {
			get {
				return self.append("projectedAudience") 
			}
		}
		
		public var preStartTime: BaseTokenizedObject {
			get {
				return self.append("preStartTime") 
			}
		}
		
		public var postEndTime: BaseTokenizedObject {
			get {
				return self.append("postEndTime") 
			}
		}
		
		public var preStartEntryId: BaseTokenizedObject {
			get {
				return self.append("preStartEntryId") 
			}
		}
		
		public var postEndEntryId: BaseTokenizedObject {
			get {
				return self.append("postEndEntryId") 
			}
		}
	}

	/**  The entry ID of the source entry (for simulive)  */
	public var sourceEntryId: String? = nil
	/**  Defines the expected audience.  */
	public var projectedAudience: Int? = nil
	/**  The time relative time before the startTime considered as preStart time  */
	public var preStartTime: Int? = nil
	/**  The time relative time before the endTime considered as postEnd time  */
	public var postEndTime: Int? = nil
	/**  The entry id of the pre start entry  */
	public var preStartEntryId: String? = nil
	/**  The entry id of the post end entry  */
	public var postEndEntryId: String? = nil


	public func setMultiRequestToken(sourceEntryId: String) {
		self.dict["sourceEntryId"] = sourceEntryId
	}
	
	public func setMultiRequestToken(projectedAudience: String) {
		self.dict["projectedAudience"] = projectedAudience
	}
	
	public func setMultiRequestToken(preStartTime: String) {
		self.dict["preStartTime"] = preStartTime
	}
	
	public func setMultiRequestToken(postEndTime: String) {
		self.dict["postEndTime"] = postEndTime
	}
	
	public func setMultiRequestToken(preStartEntryId: String) {
		self.dict["preStartEntryId"] = preStartEntryId
	}
	
	public func setMultiRequestToken(postEndEntryId: String) {
		self.dict["postEndEntryId"] = postEndEntryId
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["sourceEntryId"] != nil {
			sourceEntryId = dict["sourceEntryId"] as? String
		}
		if dict["projectedAudience"] != nil {
			projectedAudience = dict["projectedAudience"] as? Int
		}
		if dict["preStartTime"] != nil {
			preStartTime = dict["preStartTime"] as? Int
		}
		if dict["postEndTime"] != nil {
			postEndTime = dict["postEndTime"] as? Int
		}
		if dict["preStartEntryId"] != nil {
			preStartEntryId = dict["preStartEntryId"] as? String
		}
		if dict["postEndEntryId"] != nil {
			postEndEntryId = dict["postEndEntryId"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(sourceEntryId != nil) {
			dict["sourceEntryId"] = sourceEntryId!
		}
		if(projectedAudience != nil) {
			dict["projectedAudience"] = projectedAudience!
		}
		if(preStartTime != nil) {
			dict["preStartTime"] = preStartTime!
		}
		if(postEndTime != nil) {
			dict["postEndTime"] = postEndTime!
		}
		if(preStartEntryId != nil) {
			dict["preStartEntryId"] = preStartEntryId!
		}
		if(postEndEntryId != nil) {
			dict["postEndEntryId"] = postEndEntryId!
		}
		return dict
	}
}

