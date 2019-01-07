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
// Copyright (C) 2006-2019  Kaltura Inc.
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

open class PushNotificationData: ObjectBase {

	public class PushNotificationDataTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var queueName: BaseTokenizedObject {
			get {
				return self.append("queueName") 
			}
		}
		
		public var queueKey: BaseTokenizedObject {
			get {
				return self.append("queueKey") 
			}
		}
		
		public var url: BaseTokenizedObject {
			get {
				return self.append("url") 
			}
		}
	}

	public var queueName: String? = nil
	public var queueKey: String? = nil
	public var url: String? = nil


	public func setMultiRequestToken(queueName: String) {
		self.dict["queueName"] = queueName
	}
	
	public func setMultiRequestToken(queueKey: String) {
		self.dict["queueKey"] = queueKey
	}
	
	public func setMultiRequestToken(url: String) {
		self.dict["url"] = url
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["queueName"] != nil {
			queueName = dict["queueName"] as? String
		}
		if dict["queueKey"] != nil {
			queueKey = dict["queueKey"] as? String
		}
		if dict["url"] != nil {
			url = dict["url"] as? String
		}

	}

}

