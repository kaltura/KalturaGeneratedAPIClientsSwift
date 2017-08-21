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
// Copyright (C) 2006-2017  Kaltura Inc.
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

	/**  The stream id as provided by the provider  */
	public var streamRemoteId: String? = nil
	/**  The backup stream id as provided by the provider  */
	public var streamRemoteBackupId: String? = nil
	/**  Array of supported bitrates  */
	public var bitrates: Array<LiveStreamBitrate>? = nil
	public var primaryBroadcastingUrl: String? = nil
	public var secondaryBroadcastingUrl: String? = nil
	public var primaryRtspBroadcastingUrl: String? = nil
	public var secondaryRtspBroadcastingUrl: String? = nil
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
	/**  The Streams primary server node id  */
	public var primaryServerNodeId: Int? = nil


	internal override func populate(_ dict: [String: Any]) throws {
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
		if dict["primaryRtspBroadcastingUrl"] != nil {
			primaryRtspBroadcastingUrl = dict["primaryRtspBroadcastingUrl"] as? String
		}
		if dict["secondaryRtspBroadcastingUrl"] != nil {
			secondaryRtspBroadcastingUrl = dict["secondaryRtspBroadcastingUrl"] as? String
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
		if dict["primaryServerNodeId"] != nil {
			primaryServerNodeId = dict["primaryServerNodeId"] as? Int
		}

	}

	public override func toDictionary() -> [String: Any] {
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
		if(primaryRtspBroadcastingUrl != nil) {
			dict["primaryRtspBroadcastingUrl"] = primaryRtspBroadcastingUrl!
		}
		if(secondaryRtspBroadcastingUrl != nil) {
			dict["secondaryRtspBroadcastingUrl"] = secondaryRtspBroadcastingUrl!
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
		return dict
	}
}

