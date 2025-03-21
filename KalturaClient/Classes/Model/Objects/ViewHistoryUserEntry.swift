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

open class ViewHistoryUserEntry: UserEntry {

	public class ViewHistoryUserEntryTokenizer: UserEntry.UserEntryTokenizer {
		
		public var playbackContext: BaseTokenizedObject {
			get {
				return self.append("playbackContext") 
			}
		}
		
		public var lastTimeReached: BaseTokenizedObject {
			get {
				return self.append("lastTimeReached") 
			}
		}
		
		public var lastUpdateTime: BaseTokenizedObject {
			get {
				return self.append("lastUpdateTime") 
			}
		}
		
		public var playlistLastEntryId: BaseTokenizedObject {
			get {
				return self.append("playlistLastEntryId") 
			}
		}
		
		public var extendedStatus: BaseTokenizedObject {
			get {
				return self.append("extendedStatus") 
			}
		}
	}

	/**  Playback context  */
	public var playbackContext: String? = nil
	/**  Last playback time reached by user  */
	public var lastTimeReached: Int? = nil
	public var lastUpdateTime: Int? = nil
	/**  Property to save last entry ID played in a playlist.  */
	public var playlistLastEntryId: String? = nil
	public var extendedStatus: UserEntryExtendedStatus? = nil


	public func setMultiRequestToken(playbackContext: String) {
		self.dict["playbackContext"] = playbackContext
	}
	
	public func setMultiRequestToken(lastTimeReached: String) {
		self.dict["lastTimeReached"] = lastTimeReached
	}
	
	public func setMultiRequestToken(lastUpdateTime: String) {
		self.dict["lastUpdateTime"] = lastUpdateTime
	}
	
	public func setMultiRequestToken(playlistLastEntryId: String) {
		self.dict["playlistLastEntryId"] = playlistLastEntryId
	}
	
	public func setMultiRequestToken(extendedStatus: String) {
		self.dict["extendedStatus"] = extendedStatus
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["playbackContext"] != nil {
			playbackContext = dict["playbackContext"] as? String
		}
		if dict["lastTimeReached"] != nil {
			lastTimeReached = dict["lastTimeReached"] as? Int
		}
		if dict["lastUpdateTime"] != nil {
			lastUpdateTime = dict["lastUpdateTime"] as? Int
		}
		if dict["playlistLastEntryId"] != nil {
			playlistLastEntryId = dict["playlistLastEntryId"] as? String
		}
		if dict["extendedStatus"] != nil {
			extendedStatus = UserEntryExtendedStatus(rawValue: "\(dict["extendedStatus"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(playbackContext != nil) {
			dict["playbackContext"] = playbackContext!
		}
		if(lastTimeReached != nil) {
			dict["lastTimeReached"] = lastTimeReached!
		}
		if(lastUpdateTime != nil) {
			dict["lastUpdateTime"] = lastUpdateTime!
		}
		if(playlistLastEntryId != nil) {
			dict["playlistLastEntryId"] = playlistLastEntryId!
		}
		if(extendedStatus != nil) {
			dict["extendedStatus"] = extendedStatus!.rawValue
		}
		return dict
	}
}

