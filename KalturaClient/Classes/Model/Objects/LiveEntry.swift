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

open class LiveEntry: MediaEntry {

	public class LiveEntryTokenizer: MediaEntry.MediaEntryTokenizer {
		
		public var offlineMessage: BaseTokenizedObject {
			get {
				return self.append("offlineMessage") 
			}
		}
		
		public var recordStatus: BaseTokenizedObject {
			get {
				return self.append("recordStatus") 
			}
		}
		
		public var dvrStatus: BaseTokenizedObject {
			get {
				return self.append("dvrStatus") 
			}
		}
		
		public var dvrWindow: BaseTokenizedObject {
			get {
				return self.append("dvrWindow") 
			}
		}
		
		public var lastElapsedRecordingTime: BaseTokenizedObject {
			get {
				return self.append("lastElapsedRecordingTime") 
			}
		}
		
		public var liveStreamConfigurations: ArrayTokenizedObject<LiveStreamConfiguration.LiveStreamConfigurationTokenizer> {
			get {
				return ArrayTokenizedObject<LiveStreamConfiguration.LiveStreamConfigurationTokenizer>(self.append("liveStreamConfigurations"))
			} 
		}
		
		public var recordedEntryId: BaseTokenizedObject {
			get {
				return self.append("recordedEntryId") 
			}
		}
		
		public var pushPublishEnabled: BaseTokenizedObject {
			get {
				return self.append("pushPublishEnabled") 
			}
		}
		
		public var publishConfigurations: ArrayTokenizedObject<LiveStreamPushPublishConfiguration.LiveStreamPushPublishConfigurationTokenizer> {
			get {
				return ArrayTokenizedObject<LiveStreamPushPublishConfiguration.LiveStreamPushPublishConfigurationTokenizer>(self.append("publishConfigurations"))
			} 
		}
		
		public var firstBroadcast: BaseTokenizedObject {
			get {
				return self.append("firstBroadcast") 
			}
		}
		
		public var lastBroadcast: BaseTokenizedObject {
			get {
				return self.append("lastBroadcast") 
			}
		}
		
		public var currentBroadcastStartTime: BaseTokenizedObject {
			get {
				return self.append("currentBroadcastStartTime") 
			}
		}
		
		public func recordingOptions<T: LiveEntryRecordingOptions.LiveEntryRecordingOptionsTokenizer>() -> T {
			return T(self.append("recordingOptions"))
		}
		
		public var liveStatus: BaseTokenizedObject {
			get {
				return self.append("liveStatus") 
			}
		}
		
		public var segmentDuration: BaseTokenizedObject {
			get {
				return self.append("segmentDuration") 
			}
		}
		
		public var explicitLive: BaseTokenizedObject {
			get {
				return self.append("explicitLive") 
			}
		}
		
		public var viewMode: BaseTokenizedObject {
			get {
				return self.append("viewMode") 
			}
		}
		
		public var recordingStatus: BaseTokenizedObject {
			get {
				return self.append("recordingStatus") 
			}
		}
		
		public var lastBroadcastEndTime: BaseTokenizedObject {
			get {
				return self.append("lastBroadcastEndTime") 
			}
		}
		
		public var broadcastTime: BaseTokenizedObject {
			get {
				return self.append("broadcastTime") 
			}
		}
	}

	/**  The message to be presented when the stream is offline  */
	public var offlineMessage: String? = nil
	/**  Recording Status Enabled/Disabled  */
	public var recordStatus: RecordStatus? = nil
	/**  DVR Status Enabled/Disabled  */
	public var dvrStatus: DVRStatus? = nil
	/**  Window of time which the DVR allows for backwards scrubbing (in minutes)  */
	public var dvrWindow: Int? = nil
	/**  Elapsed recording time (in msec) up to the point where the live stream was last
	  stopped (unpublished).  */
	public var lastElapsedRecordingTime: Int? = nil
	/**  Array of key value protocol-&gt;live stream url objects  */
	public var liveStreamConfigurations: Array<LiveStreamConfiguration>? = nil
	/**  Recorded entry id  */
	public var recordedEntryId: String? = nil
	/**  Flag denoting whether entry should be published by the media server  */
	public var pushPublishEnabled: LivePublishStatus? = nil
	/**  Array of publish configurations  */
	public var publishConfigurations: Array<LiveStreamPushPublishConfiguration>? = nil
	/**  The first time in which the entry was broadcast  */
	public var firstBroadcast: Int? = nil
	/**  The Last time in which the entry was broadcast  */
	public var lastBroadcast: Int? = nil
	/**  The time (unix timestamp in milliseconds) in which the entry broadcast started
	  or 0 when the entry is off the air  */
	public var currentBroadcastStartTime: Double? = nil
	public var recordingOptions: LiveEntryRecordingOptions? = nil
	/**  the status of the entry of type EntryServerNodeStatus  */
	public var liveStatus: EntryServerNodeStatus? = nil
	/**  The chunk duration value in milliseconds  */
	public var segmentDuration: Int? = nil
	public var explicitLive: Bool? = nil
	public var viewMode: ViewMode? = nil
	public var recordingStatus: RecordingStatus? = nil
	/**  The time the last broadcast finished.  */
	public var lastBroadcastEndTime: Int? = nil
	/**  The time when the entry was first live with view_all  */
	public var broadcastTime: Int? = nil


	public func setMultiRequestToken(offlineMessage: String) {
		self.dict["offlineMessage"] = offlineMessage
	}
	
	public func setMultiRequestToken(recordStatus: String) {
		self.dict["recordStatus"] = recordStatus
	}
	
	public func setMultiRequestToken(dvrStatus: String) {
		self.dict["dvrStatus"] = dvrStatus
	}
	
	public func setMultiRequestToken(dvrWindow: String) {
		self.dict["dvrWindow"] = dvrWindow
	}
	
	public func setMultiRequestToken(lastElapsedRecordingTime: String) {
		self.dict["lastElapsedRecordingTime"] = lastElapsedRecordingTime
	}
	
	public func setMultiRequestToken(recordedEntryId: String) {
		self.dict["recordedEntryId"] = recordedEntryId
	}
	
	public func setMultiRequestToken(pushPublishEnabled: String) {
		self.dict["pushPublishEnabled"] = pushPublishEnabled
	}
	
	public func setMultiRequestToken(firstBroadcast: String) {
		self.dict["firstBroadcast"] = firstBroadcast
	}
	
	public func setMultiRequestToken(lastBroadcast: String) {
		self.dict["lastBroadcast"] = lastBroadcast
	}
	
	public func setMultiRequestToken(currentBroadcastStartTime: String) {
		self.dict["currentBroadcastStartTime"] = currentBroadcastStartTime
	}
	
	public func setMultiRequestToken(liveStatus: String) {
		self.dict["liveStatus"] = liveStatus
	}
	
	public func setMultiRequestToken(segmentDuration: String) {
		self.dict["segmentDuration"] = segmentDuration
	}
	
	public func setMultiRequestToken(explicitLive: String) {
		self.dict["explicitLive"] = explicitLive
	}
	
	public func setMultiRequestToken(viewMode: String) {
		self.dict["viewMode"] = viewMode
	}
	
	public func setMultiRequestToken(recordingStatus: String) {
		self.dict["recordingStatus"] = recordingStatus
	}
	
	public func setMultiRequestToken(lastBroadcastEndTime: String) {
		self.dict["lastBroadcastEndTime"] = lastBroadcastEndTime
	}
	
	public func setMultiRequestToken(broadcastTime: String) {
		self.dict["broadcastTime"] = broadcastTime
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["offlineMessage"] != nil {
			offlineMessage = dict["offlineMessage"] as? String
		}
		if dict["recordStatus"] != nil {
			recordStatus = RecordStatus(rawValue: (dict["recordStatus"] as? Int)!)
		}
		if dict["dvrStatus"] != nil {
			dvrStatus = DVRStatus(rawValue: (dict["dvrStatus"] as? Int)!)
		}
		if dict["dvrWindow"] != nil {
			dvrWindow = dict["dvrWindow"] as? Int
		}
		if dict["lastElapsedRecordingTime"] != nil {
			lastElapsedRecordingTime = dict["lastElapsedRecordingTime"] as? Int
		}
		if dict["liveStreamConfigurations"] != nil {
			liveStreamConfigurations = try JSONParser.parse(array: dict["liveStreamConfigurations"] as! [Any])
		}
		if dict["recordedEntryId"] != nil {
			recordedEntryId = dict["recordedEntryId"] as? String
		}
		if dict["pushPublishEnabled"] != nil {
			pushPublishEnabled = LivePublishStatus(rawValue: (dict["pushPublishEnabled"] as? Int)!)
		}
		if dict["publishConfigurations"] != nil {
			publishConfigurations = try JSONParser.parse(array: dict["publishConfigurations"] as! [Any])
		}
		if dict["firstBroadcast"] != nil {
			firstBroadcast = dict["firstBroadcast"] as? Int
		}
		if dict["lastBroadcast"] != nil {
			lastBroadcast = dict["lastBroadcast"] as? Int
		}
		if dict["currentBroadcastStartTime"] != nil {
			currentBroadcastStartTime = dict["currentBroadcastStartTime"] as? Double
		}
		if dict["recordingOptions"] != nil {
		recordingOptions = try JSONParser.parse(object: dict["recordingOptions"] as! [String: Any])		}
		if dict["liveStatus"] != nil {
			liveStatus = EntryServerNodeStatus(rawValue: (dict["liveStatus"] as? Int)!)
		}
		if dict["segmentDuration"] != nil {
			segmentDuration = dict["segmentDuration"] as? Int
		}
		if dict["explicitLive"] != nil {
			explicitLive = dict["explicitLive"] as? Bool
		}
		if dict["viewMode"] != nil {
			viewMode = ViewMode(rawValue: (dict["viewMode"] as? Int)!)
		}
		if dict["recordingStatus"] != nil {
			recordingStatus = RecordingStatus(rawValue: (dict["recordingStatus"] as? Int)!)
		}
		if dict["lastBroadcastEndTime"] != nil {
			lastBroadcastEndTime = dict["lastBroadcastEndTime"] as? Int
		}
		if dict["broadcastTime"] != nil {
			broadcastTime = dict["broadcastTime"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(offlineMessage != nil) {
			dict["offlineMessage"] = offlineMessage!
		}
		if(recordStatus != nil) {
			dict["recordStatus"] = recordStatus!.rawValue
		}
		if(dvrStatus != nil) {
			dict["dvrStatus"] = dvrStatus!.rawValue
		}
		if(dvrWindow != nil) {
			dict["dvrWindow"] = dvrWindow!
		}
		if(lastElapsedRecordingTime != nil) {
			dict["lastElapsedRecordingTime"] = lastElapsedRecordingTime!
		}
		if(liveStreamConfigurations != nil) {
			dict["liveStreamConfigurations"] = liveStreamConfigurations!.map { value in value.toDictionary() }
		}
		if(recordedEntryId != nil) {
			dict["recordedEntryId"] = recordedEntryId!
		}
		if(pushPublishEnabled != nil) {
			dict["pushPublishEnabled"] = pushPublishEnabled!.rawValue
		}
		if(publishConfigurations != nil) {
			dict["publishConfigurations"] = publishConfigurations!.map { value in value.toDictionary() }
		}
		if(currentBroadcastStartTime != nil) {
			dict["currentBroadcastStartTime"] = currentBroadcastStartTime!
		}
		if(recordingOptions != nil) {
			dict["recordingOptions"] = recordingOptions!.toDictionary()
		}
		if(segmentDuration != nil) {
			dict["segmentDuration"] = segmentDuration!
		}
		if(explicitLive != nil) {
			dict["explicitLive"] = explicitLive!
		}
		if(viewMode != nil) {
			dict["viewMode"] = viewMode!.rawValue
		}
		if(recordingStatus != nil) {
			dict["recordingStatus"] = recordingStatus!.rawValue
		}
		if(broadcastTime != nil) {
			dict["broadcastTime"] = broadcastTime!
		}
		return dict
	}
}

