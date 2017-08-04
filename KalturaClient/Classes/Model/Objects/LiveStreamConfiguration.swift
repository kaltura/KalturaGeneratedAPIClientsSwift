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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

/**  A representation of a live stream configuration  */
open class LiveStreamConfiguration: ObjectBase {

	public var protocol_: PlaybackProtocol? = nil
	public var url: String? = nil
	public var publishUrl: String? = nil
	public var backupUrl: String? = nil
	public var streamName: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["protocol"] != nil {
			protocol_ = PlaybackProtocol(rawValue: "\(dict["protocol"]!)")
		}
		if dict["url"] != nil {
			url = dict["url"] as? String
		}
		if dict["publishUrl"] != nil {
			publishUrl = dict["publishUrl"] as? String
		}
		if dict["backupUrl"] != nil {
			backupUrl = dict["backupUrl"] as? String
		}
		if dict["streamName"] != nil {
			streamName = dict["streamName"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(protocol_ != nil) {
			dict["protocol"] = protocol_!.rawValue
		}
		if(url != nil) {
			dict["url"] = url!
		}
		if(publishUrl != nil) {
			dict["publishUrl"] = publishUrl!
		}
		if(backupUrl != nil) {
			dict["backupUrl"] = backupUrl!
		}
		if(streamName != nil) {
			dict["streamName"] = streamName!
		}
		return dict
	}
}

