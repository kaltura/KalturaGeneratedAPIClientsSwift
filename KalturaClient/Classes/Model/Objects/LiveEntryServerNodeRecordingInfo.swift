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

open class LiveEntryServerNodeRecordingInfo: ObjectBase {

	public class LiveEntryServerNodeRecordingInfoTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var recordedEntryId: BaseTokenizedObject {
			get {
				return self.append("recordedEntryId") 
			}
		}
		
		public var duration: BaseTokenizedObject {
			get {
				return self.append("duration") 
			}
		}
		
		public var recordingStatus: BaseTokenizedObject {
			get {
				return self.append("recordingStatus") 
			}
		}
	}

	public var recordedEntryId: String? = nil
	public var duration: Int? = nil
	public var recordingStatus: EntryServerNodeRecordingStatus? = nil


	public func setMultiRequestToken(recordedEntryId: String) {
		self.dict["recordedEntryId"] = recordedEntryId
	}
	
	public func setMultiRequestToken(duration: String) {
		self.dict["duration"] = duration
	}
	
	public func setMultiRequestToken(recordingStatus: String) {
		self.dict["recordingStatus"] = recordingStatus
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["recordedEntryId"] != nil {
			recordedEntryId = dict["recordedEntryId"] as? String
		}
		if dict["duration"] != nil {
			duration = dict["duration"] as? Int
		}
		if dict["recordingStatus"] != nil {
			recordingStatus = EntryServerNodeRecordingStatus(rawValue: (dict["recordingStatus"] as? Int)!)
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(recordedEntryId != nil) {
			dict["recordedEntryId"] = recordedEntryId!
		}
		if(duration != nil) {
			dict["duration"] = duration!
		}
		if(recordingStatus != nil) {
			dict["recordingStatus"] = recordingStatus!.rawValue
		}
		return dict
	}
}

