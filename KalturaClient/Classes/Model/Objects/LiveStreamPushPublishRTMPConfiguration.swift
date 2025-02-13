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

/**  A representation of an RTMP live stream configuration  */
open class LiveStreamPushPublishRTMPConfiguration: LiveStreamPushPublishConfiguration {

	public class LiveStreamPushPublishRTMPConfigurationTokenizer: LiveStreamPushPublishConfiguration.LiveStreamPushPublishConfigurationTokenizer {
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var password: BaseTokenizedObject {
			get {
				return self.append("password") 
			}
		}
		
		public var streamName: BaseTokenizedObject {
			get {
				return self.append("streamName") 
			}
		}
		
		public var applicationName: BaseTokenizedObject {
			get {
				return self.append("applicationName") 
			}
		}
	}

	public var userId: String? = nil
	public var password: String? = nil
	public var streamName: String? = nil
	public var applicationName: String? = nil


	public func setMultiRequestToken(userId: String) {
		self.dict["userId"] = userId
	}
	
	public func setMultiRequestToken(password: String) {
		self.dict["password"] = password
	}
	
	public func setMultiRequestToken(streamName: String) {
		self.dict["streamName"] = streamName
	}
	
	public func setMultiRequestToken(applicationName: String) {
		self.dict["applicationName"] = applicationName
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["userId"] != nil {
			userId = dict["userId"] as? String
		}
		if dict["password"] != nil {
			password = dict["password"] as? String
		}
		if dict["streamName"] != nil {
			streamName = dict["streamName"] as? String
		}
		if dict["applicationName"] != nil {
			applicationName = dict["applicationName"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(userId != nil) {
			dict["userId"] = userId!
		}
		if(password != nil) {
			dict["password"] = password!
		}
		if(streamName != nil) {
			dict["streamName"] = streamName!
		}
		if(applicationName != nil) {
			dict["applicationName"] = applicationName!
		}
		return dict
	}
}

