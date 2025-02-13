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

open class KafkaNotificationTemplate: EventNotificationTemplate {

	public class KafkaNotificationTemplateTokenizer: EventNotificationTemplate.EventNotificationTemplateTokenizer {
		
		public var topicName: BaseTokenizedObject {
			get {
				return self.append("topicName") 
			}
		}
		
		public var partitionKey: BaseTokenizedObject {
			get {
				return self.append("partitionKey") 
			}
		}
		
		public var messageFormat: BaseTokenizedObject {
			get {
				return self.append("messageFormat") 
			}
		}
		
		public var apiObjectType: BaseTokenizedObject {
			get {
				return self.append("apiObjectType") 
			}
		}
		
		public var responseProfileSystemName: BaseTokenizedObject {
			get {
				return self.append("responseProfileSystemName") 
			}
		}
		
		public var requiresPermissions: BaseTokenizedObject {
			get {
				return self.append("requiresPermissions") 
			}
		}
	}

	/**  Define the content dynamic parameters  */
	public var topicName: String? = nil
	/**  Define the content dynamic parameters  */
	public var partitionKey: String? = nil
	/**  Define the content dynamic parameters  */
	public var messageFormat: KafkaNotificationFormat? = nil
	/**  Kaltura API object type  */
	public var apiObjectType: String? = nil
	/**  Kaltura response-profile system name  */
	public var responseProfileSystemName: String? = nil
	/**  Partner permissions needed to trigger the notification (comma seperated list of
	  permissions)  */
	public var requiresPermissions: String? = nil


	public func setMultiRequestToken(topicName: String) {
		self.dict["topicName"] = topicName
	}
	
	public func setMultiRequestToken(partitionKey: String) {
		self.dict["partitionKey"] = partitionKey
	}
	
	public func setMultiRequestToken(messageFormat: String) {
		self.dict["messageFormat"] = messageFormat
	}
	
	public func setMultiRequestToken(apiObjectType: String) {
		self.dict["apiObjectType"] = apiObjectType
	}
	
	public func setMultiRequestToken(responseProfileSystemName: String) {
		self.dict["responseProfileSystemName"] = responseProfileSystemName
	}
	
	public func setMultiRequestToken(requiresPermissions: String) {
		self.dict["requiresPermissions"] = requiresPermissions
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["topicName"] != nil {
			topicName = dict["topicName"] as? String
		}
		if dict["partitionKey"] != nil {
			partitionKey = dict["partitionKey"] as? String
		}
		if dict["messageFormat"] != nil {
			messageFormat = KafkaNotificationFormat(rawValue: (dict["messageFormat"] as? Int)!)
		}
		if dict["apiObjectType"] != nil {
			apiObjectType = dict["apiObjectType"] as? String
		}
		if dict["responseProfileSystemName"] != nil {
			responseProfileSystemName = dict["responseProfileSystemName"] as? String
		}
		if dict["requiresPermissions"] != nil {
			requiresPermissions = dict["requiresPermissions"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(topicName != nil) {
			dict["topicName"] = topicName!
		}
		if(partitionKey != nil) {
			dict["partitionKey"] = partitionKey!
		}
		if(messageFormat != nil) {
			dict["messageFormat"] = messageFormat!.rawValue
		}
		if(apiObjectType != nil) {
			dict["apiObjectType"] = apiObjectType!
		}
		if(responseProfileSystemName != nil) {
			dict["responseProfileSystemName"] = responseProfileSystemName!
		}
		if(requiresPermissions != nil) {
			dict["requiresPermissions"] = requiresPermissions!
		}
		return dict
	}
}

