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

/**  A representation of a live stream configuration  */
open class LiveStreamConfiguration: ObjectBase {

	public class LiveStreamConfigurationTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var protocol_: BaseTokenizedObject {
			get {
				return self.append("protocol_") 
			}
		}
		
		public var url: BaseTokenizedObject {
			get {
				return self.append("url") 
			}
		}
		
		public var publishUrl: BaseTokenizedObject {
			get {
				return self.append("publishUrl") 
			}
		}
		
		public var backupUrl: BaseTokenizedObject {
			get {
				return self.append("backupUrl") 
			}
		}
		
		public var streamName: BaseTokenizedObject {
			get {
				return self.append("streamName") 
			}
		}
	}

	public var protocol_: PlaybackProtocol? = nil
	public var url: String? = nil
	public var publishUrl: String? = nil
	public var backupUrl: String? = nil
	public var streamName: String? = nil


	public func setMultiRequestToken(protocol_: String) {
		self.dict["protocol"] = protocol_
	}
	
	public func setMultiRequestToken(url: String) {
		self.dict["url"] = url
	}
	
	public func setMultiRequestToken(publishUrl: String) {
		self.dict["publishUrl"] = publishUrl
	}
	
	public func setMultiRequestToken(backupUrl: String) {
		self.dict["backupUrl"] = backupUrl
	}
	
	public func setMultiRequestToken(streamName: String) {
		self.dict["streamName"] = streamName
	}
	
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

	internal override func toDictionary() -> [String: Any] {
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

