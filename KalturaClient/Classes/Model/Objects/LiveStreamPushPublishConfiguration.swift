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

/**  Basic push-publish configuration for Kaltura live stream entry  */
open class LiveStreamPushPublishConfiguration: ObjectBase {

	public class LiveStreamPushPublishConfigurationTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var publishUrl: BaseTokenizedObject {
			get {
				return self.append("publishUrl") 
			}
		}
		
		public var backupPublishUrl: BaseTokenizedObject {
			get {
				return self.append("backupPublishUrl") 
			}
		}
		
		public var port: BaseTokenizedObject {
			get {
				return self.append("port") 
			}
		}
	}

	public var publishUrl: String? = nil
	public var backupPublishUrl: String? = nil
	public var port: String? = nil


	public func setMultiRequestToken(publishUrl: String) {
		self.dict["publishUrl"] = publishUrl
	}
	
	public func setMultiRequestToken(backupPublishUrl: String) {
		self.dict["backupPublishUrl"] = backupPublishUrl
	}
	
	public func setMultiRequestToken(port: String) {
		self.dict["port"] = port
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["publishUrl"] != nil {
			publishUrl = dict["publishUrl"] as? String
		}
		if dict["backupPublishUrl"] != nil {
			backupPublishUrl = dict["backupPublishUrl"] as? String
		}
		if dict["port"] != nil {
			port = dict["port"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(publishUrl != nil) {
			dict["publishUrl"] = publishUrl!
		}
		if(backupPublishUrl != nil) {
			dict["backupPublishUrl"] = backupPublishUrl!
		}
		if(port != nil) {
			dict["port"] = port!
		}
		return dict
	}
}

