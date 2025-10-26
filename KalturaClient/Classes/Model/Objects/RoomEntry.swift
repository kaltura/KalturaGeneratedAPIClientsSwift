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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class RoomEntry: BaseEntry {

	public class RoomEntryTokenizer: BaseEntry.BaseEntryTokenizer {
		
		public var roomType: BaseTokenizedObject {
			get {
				return self.append("roomType") 
			}
		}
		
		public var broadcastEntryId: BaseTokenizedObject {
			get {
				return self.append("broadcastEntryId") 
			}
		}
		
		public var templateRoomEntryId: BaseTokenizedObject {
			get {
				return self.append("templateRoomEntryId") 
			}
		}
		
		public var recordedEntryId: BaseTokenizedObject {
			get {
				return self.append("recordedEntryId") 
			}
		}
	}

	public var roomType: RoomType? = nil
	/**  The entryId of the broadcast that the room streaming to  */
	public var broadcastEntryId: String? = nil
	/**  The entryId of the room where settings will be taken from  */
	public var templateRoomEntryId: String? = nil
	/**  The entryId of the recording  */
	public var recordedEntryId: String? = nil


	public func setMultiRequestToken(roomType: String) {
		self.dict["roomType"] = roomType
	}
	
	public func setMultiRequestToken(broadcastEntryId: String) {
		self.dict["broadcastEntryId"] = broadcastEntryId
	}
	
	public func setMultiRequestToken(templateRoomEntryId: String) {
		self.dict["templateRoomEntryId"] = templateRoomEntryId
	}
	
	public func setMultiRequestToken(recordedEntryId: String) {
		self.dict["recordedEntryId"] = recordedEntryId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["roomType"] != nil {
			roomType = RoomType(rawValue: (dict["roomType"] as? Int)!)
		}
		if dict["broadcastEntryId"] != nil {
			broadcastEntryId = dict["broadcastEntryId"] as? String
		}
		if dict["templateRoomEntryId"] != nil {
			templateRoomEntryId = dict["templateRoomEntryId"] as? String
		}
		if dict["recordedEntryId"] != nil {
			recordedEntryId = dict["recordedEntryId"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(roomType != nil) {
			dict["roomType"] = roomType!.rawValue
		}
		if(broadcastEntryId != nil) {
			dict["broadcastEntryId"] = broadcastEntryId!
		}
		if(templateRoomEntryId != nil) {
			dict["templateRoomEntryId"] = templateRoomEntryId!
		}
		if(recordedEntryId != nil) {
			dict["recordedEntryId"] = recordedEntryId!
		}
		return dict
	}
}

