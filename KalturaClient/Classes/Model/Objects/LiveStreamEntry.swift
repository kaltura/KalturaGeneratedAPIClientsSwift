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

open class LiveStreamEntry: LiveEntry {

	public class LiveStreamEntryTokenizer: LiveEntry.LiveEntryTokenizer {
		
		public var streamRemoteId: BaseTokenizedObject {
			get {
				return self.append("streamRemoteId") 
			}
		}
		
		public var streamRemoteBackupId: BaseTokenizedObject {
			get {
				return self.append("streamRemoteBackupId") 
			}
		}
		
		public var bitrates: ArrayTokenizedObject<LiveStreamBitrate.LiveStreamBitrateTokenizer> {
			get {
				return ArrayTokenizedObject<LiveStreamBitrate.LiveStreamBitrateTokenizer>(self.append("bitrates"))
			} 
		}
		
		public var primaryBroadcastingUrl: BaseTokenizedObject {
			get {
				return self.append("primaryBroadcastingUrl") 
			}
		}
		
		public var secondaryBroadcastingUrl: BaseTokenizedObject {
			get {
				return self.append("secondaryBroadcastingUrl") 
			}
		}
		
		public var primarySecuredBroadcastingUrl: BaseTokenizedObject {
			get {
				return self.append("primarySecuredBroadcastingUrl") 
			}
		}
		
		public var secondarySecuredBroadcastingUrl: BaseTokenizedObject {
			get {
				return self.append("secondarySecuredBroadcastingUrl") 
			}
		}
		
		public var primaryRtspBroadcastingUrl: BaseTokenizedObject {
			get {
				return self.append("primaryRtspBroadcastingUrl") 
			}
		}
		
		public var secondaryRtspBroadcastingUrl: BaseTokenizedObject {
			get {
				return self.append("secondaryRtspBroadcastingUrl") 
			}
		}
		
		public var primarySrtBroadcastingUrl: BaseTokenizedObject {
			get {
				return self.append("primarySrtBroadcastingUrl") 
			}
		}
		
		public var primarySrtStreamId: BaseTokenizedObject {
			get {
				return self.append("primarySrtStreamId") 
			}
		}
		
		public var secondarySrtBroadcastingUrl: BaseTokenizedObject {
			get {
				return self.append("secondarySrtBroadcastingUrl") 
			}
		}
		
		public var secondarySrtStreamId: BaseTokenizedObject {
			get {
				return self.append("secondarySrtStreamId") 
			}
		}
		
		public var streamName: BaseTokenizedObject {
			get {
				return self.append("streamName") 
			}
		}
		
		public var streamUrl: BaseTokenizedObject {
			get {
				return self.append("streamUrl") 
			}
		}
		
		public var hlsStreamUrl: BaseTokenizedObject {
			get {
				return self.append("hlsStreamUrl") 
			}
		}
		
		public var urlManager: BaseTokenizedObject {
			get {
				return self.append("urlManager") 
			}
		}
		
		public var encodingIP1: BaseTokenizedObject {
			get {
				return self.append("encodingIP1") 
			}
		}
		
		public var encodingIP2: BaseTokenizedObject {
			get {
				return self.append("encodingIP2") 
			}
		}
		
		public var streamPassword: BaseTokenizedObject {
			get {
				return self.append("streamPassword") 
			}
		}
		
		public var streamUsername: BaseTokenizedObject {
			get {
				return self.append("streamUsername") 
			}
		}
		
		public var srtPass: BaseTokenizedObject {
			get {
				return self.append("srtPass") 
			}
		}
		
		public var primaryServerNodeId: BaseTokenizedObject {
			get {
				return self.append("primaryServerNodeId") 
			}
		}
		
		public var sipToken: BaseTokenizedObject {
			get {
				return self.append("sipToken") 
			}
		}
		
		public var sipSourceType: BaseTokenizedObject {
			get {
				return self.append("sipSourceType") 
			}
		}
	}

	/**  The stream id as provided by the provider  */
	public var streamRemoteId: String? = nil
	/**  The backup stream id as provided by the provider  */
	public var streamRemoteBackupId: String? = nil
	/**  Array of supported bitrates  */
	public var bitrates: Array<LiveStreamBitrate>? = nil
	public var primaryBroadcastingUrl: String? = nil
	public var secondaryBroadcastingUrl: String? = nil
	public var primarySecuredBroadcastingUrl: String? = nil
	public var secondarySecuredBroadcastingUrl: String? = nil
	public var primaryRtspBroadcastingUrl: String? = nil
	public var secondaryRtspBroadcastingUrl: String? = nil
	public var primarySrtBroadcastingUrl: String? = nil
	public var primarySrtStreamId: String? = nil
	public var secondarySrtBroadcastingUrl: String? = nil
	public var secondarySrtStreamId: String? = nil
	public var streamName: String? = nil
	/**  The stream url  */
	public var streamUrl: String? = nil
	/**  HLS URL - URL for live stream playback on mobile device  */
	public var hlsStreamUrl: String? = nil
	/**  URL Manager to handle the live stream URL (for instance, add token)  */
	public var urlManager: String? = nil
	/**  The broadcast primary ip  */
	public var encodingIP1: String? = nil
	/**  The broadcast secondary ip  */
	public var encodingIP2: String? = nil
	/**  The broadcast password  */
	public var streamPassword: String? = nil
	/**  The broadcast username  */
	public var streamUsername: String? = nil
	public var srtPass: String? = nil
	/**  The Streams primary server node id  */
	public var primaryServerNodeId: Int? = nil
	public var sipToken: String? = nil
	public var sipSourceType: SipSourceType? = nil


	public func setMultiRequestToken(streamRemoteId: String) {
		self.dict["streamRemoteId"] = streamRemoteId
	}
	
	public func setMultiRequestToken(streamRemoteBackupId: String) {
		self.dict["streamRemoteBackupId"] = streamRemoteBackupId
	}
	
	public func setMultiRequestToken(primaryBroadcastingUrl: String) {
		self.dict["primaryBroadcastingUrl"] = primaryBroadcastingUrl
	}
	
	public func setMultiRequestToken(secondaryBroadcastingUrl: String) {
		self.dict["secondaryBroadcastingUrl"] = secondaryBroadcastingUrl
	}
	
	public func setMultiRequestToken(primarySecuredBroadcastingUrl: String) {
		self.dict["primarySecuredBroadcastingUrl"] = primarySecuredBroadcastingUrl
	}
	
	public func setMultiRequestToken(secondarySecuredBroadcastingUrl: String) {
		self.dict["secondarySecuredBroadcastingUrl"] = secondarySecuredBroadcastingUrl
	}
	
	public func setMultiRequestToken(primaryRtspBroadcastingUrl: String) {
		self.dict["primaryRtspBroadcastingUrl"] = primaryRtspBroadcastingUrl
	}
	
	public func setMultiRequestToken(secondaryRtspBroadcastingUrl: String) {
		self.dict["secondaryRtspBroadcastingUrl"] = secondaryRtspBroadcastingUrl
	}
	
	public func setMultiRequestToken(primarySrtBroadcastingUrl: String) {
		self.dict["primarySrtBroadcastingUrl"] = primarySrtBroadcastingUrl
	}
	
	public func setMultiRequestToken(primarySrtStreamId: String) {
		self.dict["primarySrtStreamId"] = primarySrtStreamId
	}
	
	public func setMultiRequestToken(secondarySrtBroadcastingUrl: String) {
		self.dict["secondarySrtBroadcastingUrl"] = secondarySrtBroadcastingUrl
	}
	
	public func setMultiRequestToken(secondarySrtStreamId: String) {
		self.dict["secondarySrtStreamId"] = secondarySrtStreamId
	}
	
	public func setMultiRequestToken(streamName: String) {
		self.dict["streamName"] = streamName
	}
	
	public func setMultiRequestToken(streamUrl: String) {
		self.dict["streamUrl"] = streamUrl
	}
	
	public func setMultiRequestToken(hlsStreamUrl: String) {
		self.dict["hlsStreamUrl"] = hlsStreamUrl
	}
	
	public func setMultiRequestToken(urlManager: String) {
		self.dict["urlManager"] = urlManager
	}
	
	public func setMultiRequestToken(encodingIP1: String) {
		self.dict["encodingIP1"] = encodingIP1
	}
	
	public func setMultiRequestToken(encodingIP2: String) {
		self.dict["encodingIP2"] = encodingIP2
	}
	
	public func setMultiRequestToken(streamPassword: String) {
		self.dict["streamPassword"] = streamPassword
	}
	
	public func setMultiRequestToken(streamUsername: String) {
		self.dict["streamUsername"] = streamUsername
	}
	
	public func setMultiRequestToken(srtPass: String) {
		self.dict["srtPass"] = srtPass
	}
	
	public func setMultiRequestToken(primaryServerNodeId: String) {
		self.dict["primaryServerNodeId"] = primaryServerNodeId
	}
	
	public func setMultiRequestToken(sipToken: String) {
		self.dict["sipToken"] = sipToken
	}
	
	public func setMultiRequestToken(sipSourceType: String) {
		self.dict["sipSourceType"] = sipSourceType
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["streamRemoteId"] != nil {
			streamRemoteId = dict["streamRemoteId"] as? String
		}
		if dict["streamRemoteBackupId"] != nil {
			streamRemoteBackupId = dict["streamRemoteBackupId"] as? String
		}
		if dict["bitrates"] != nil {
			bitrates = try JSONParser.parse(array: dict["bitrates"] as! [Any])
		}
		if dict["primaryBroadcastingUrl"] != nil {
			primaryBroadcastingUrl = dict["primaryBroadcastingUrl"] as? String
		}
		if dict["secondaryBroadcastingUrl"] != nil {
			secondaryBroadcastingUrl = dict["secondaryBroadcastingUrl"] as? String
		}
		if dict["primarySecuredBroadcastingUrl"] != nil {
			primarySecuredBroadcastingUrl = dict["primarySecuredBroadcastingUrl"] as? String
		}
		if dict["secondarySecuredBroadcastingUrl"] != nil {
			secondarySecuredBroadcastingUrl = dict["secondarySecuredBroadcastingUrl"] as? String
		}
		if dict["primaryRtspBroadcastingUrl"] != nil {
			primaryRtspBroadcastingUrl = dict["primaryRtspBroadcastingUrl"] as? String
		}
		if dict["secondaryRtspBroadcastingUrl"] != nil {
			secondaryRtspBroadcastingUrl = dict["secondaryRtspBroadcastingUrl"] as? String
		}
		if dict["primarySrtBroadcastingUrl"] != nil {
			primarySrtBroadcastingUrl = dict["primarySrtBroadcastingUrl"] as? String
		}
		if dict["primarySrtStreamId"] != nil {
			primarySrtStreamId = dict["primarySrtStreamId"] as? String
		}
		if dict["secondarySrtBroadcastingUrl"] != nil {
			secondarySrtBroadcastingUrl = dict["secondarySrtBroadcastingUrl"] as? String
		}
		if dict["secondarySrtStreamId"] != nil {
			secondarySrtStreamId = dict["secondarySrtStreamId"] as? String
		}
		if dict["streamName"] != nil {
			streamName = dict["streamName"] as? String
		}
		if dict["streamUrl"] != nil {
			streamUrl = dict["streamUrl"] as? String
		}
		if dict["hlsStreamUrl"] != nil {
			hlsStreamUrl = dict["hlsStreamUrl"] as? String
		}
		if dict["urlManager"] != nil {
			urlManager = dict["urlManager"] as? String
		}
		if dict["encodingIP1"] != nil {
			encodingIP1 = dict["encodingIP1"] as? String
		}
		if dict["encodingIP2"] != nil {
			encodingIP2 = dict["encodingIP2"] as? String
		}
		if dict["streamPassword"] != nil {
			streamPassword = dict["streamPassword"] as? String
		}
		if dict["streamUsername"] != nil {
			streamUsername = dict["streamUsername"] as? String
		}
		if dict["srtPass"] != nil {
			srtPass = dict["srtPass"] as? String
		}
		if dict["primaryServerNodeId"] != nil {
			primaryServerNodeId = dict["primaryServerNodeId"] as? Int
		}
		if dict["sipToken"] != nil {
			sipToken = dict["sipToken"] as? String
		}
		if dict["sipSourceType"] != nil {
			sipSourceType = SipSourceType(rawValue: (dict["sipSourceType"] as? Int)!)
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(bitrates != nil) {
			dict["bitrates"] = bitrates!.map { value in value.toDictionary() }
		}
		if(primaryBroadcastingUrl != nil) {
			dict["primaryBroadcastingUrl"] = primaryBroadcastingUrl!
		}
		if(secondaryBroadcastingUrl != nil) {
			dict["secondaryBroadcastingUrl"] = secondaryBroadcastingUrl!
		}
		if(primarySecuredBroadcastingUrl != nil) {
			dict["primarySecuredBroadcastingUrl"] = primarySecuredBroadcastingUrl!
		}
		if(secondarySecuredBroadcastingUrl != nil) {
			dict["secondarySecuredBroadcastingUrl"] = secondarySecuredBroadcastingUrl!
		}
		if(primaryRtspBroadcastingUrl != nil) {
			dict["primaryRtspBroadcastingUrl"] = primaryRtspBroadcastingUrl!
		}
		if(secondaryRtspBroadcastingUrl != nil) {
			dict["secondaryRtspBroadcastingUrl"] = secondaryRtspBroadcastingUrl!
		}
		if(primarySrtBroadcastingUrl != nil) {
			dict["primarySrtBroadcastingUrl"] = primarySrtBroadcastingUrl!
		}
		if(primarySrtStreamId != nil) {
			dict["primarySrtStreamId"] = primarySrtStreamId!
		}
		if(secondarySrtBroadcastingUrl != nil) {
			dict["secondarySrtBroadcastingUrl"] = secondarySrtBroadcastingUrl!
		}
		if(secondarySrtStreamId != nil) {
			dict["secondarySrtStreamId"] = secondarySrtStreamId!
		}
		if(streamName != nil) {
			dict["streamName"] = streamName!
		}
		if(streamUrl != nil) {
			dict["streamUrl"] = streamUrl!
		}
		if(hlsStreamUrl != nil) {
			dict["hlsStreamUrl"] = hlsStreamUrl!
		}
		if(urlManager != nil) {
			dict["urlManager"] = urlManager!
		}
		if(encodingIP1 != nil) {
			dict["encodingIP1"] = encodingIP1!
		}
		if(encodingIP2 != nil) {
			dict["encodingIP2"] = encodingIP2!
		}
		if(streamPassword != nil) {
			dict["streamPassword"] = streamPassword!
		}
		if(srtPass != nil) {
			dict["srtPass"] = srtPass!
		}
		return dict
	}
}

