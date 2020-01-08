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
// Copyright (C) 2006-2020  Kaltura Inc.
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

open class LiveEntryServerNode: EntryServerNode {

	public class LiveEntryServerNodeTokenizer: EntryServerNode.EntryServerNodeTokenizer {
		
		public var streams: ArrayTokenizedObject<LiveStreamParams.LiveStreamParamsTokenizer> {
			get {
				return ArrayTokenizedObject<LiveStreamParams.LiveStreamParamsTokenizer>(self.append("streams"))
			} 
		}
		
		public var recordingInfo: ArrayTokenizedObject<LiveEntryServerNodeRecordingInfo.LiveEntryServerNodeRecordingInfoTokenizer> {
			get {
				return ArrayTokenizedObject<LiveEntryServerNodeRecordingInfo.LiveEntryServerNodeRecordingInfoTokenizer>(self.append("recordingInfo"))
			} 
		}
		
		public var isPlayableUser: BaseTokenizedObject {
			get {
				return self.append("isPlayableUser") 
			}
		}
	}

	/**  parameters of the stream we got  */
	public var streams: Array<LiveStreamParams>? = nil
	public var recordingInfo: Array<LiveEntryServerNodeRecordingInfo>? = nil
	public var isPlayableUser: Bool? = nil


	public func setMultiRequestToken(isPlayableUser: String) {
		self.dict["isPlayableUser"] = isPlayableUser
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["streams"] != nil {
			streams = try JSONParser.parse(array: dict["streams"] as! [Any])
		}
		if dict["recordingInfo"] != nil {
			recordingInfo = try JSONParser.parse(array: dict["recordingInfo"] as! [Any])
		}
		if dict["isPlayableUser"] != nil {
			isPlayableUser = dict["isPlayableUser"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(streams != nil) {
			dict["streams"] = streams!.map { value in value.toDictionary() }
		}
		if(recordingInfo != nil) {
			dict["recordingInfo"] = recordingInfo!.map { value in value.toDictionary() }
		}
		if(isPlayableUser != nil) {
			dict["isPlayableUser"] = isPlayableUser!
		}
		return dict
	}
}

