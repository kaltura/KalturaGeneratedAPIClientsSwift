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

open class PushNotificationTemplate: EventNotificationTemplate {

	public class PushNotificationTemplateTokenizer: EventNotificationTemplate.EventNotificationTemplateTokenizer {
		
		public var queueNameParameters: ArrayTokenizedObject<PushEventNotificationParameter.PushEventNotificationParameterTokenizer> {
			get {
				return ArrayTokenizedObject<PushEventNotificationParameter.PushEventNotificationParameterTokenizer>(self.append("queueNameParameters"))
			} 
		}
		
		public var queueKeyParameters: ArrayTokenizedObject<PushEventNotificationParameter.PushEventNotificationParameterTokenizer> {
			get {
				return ArrayTokenizedObject<PushEventNotificationParameter.PushEventNotificationParameterTokenizer>(self.append("queueKeyParameters"))
			} 
		}
		
		public var apiObjectType: BaseTokenizedObject {
			get {
				return self.append("apiObjectType") 
			}
		}
		
		public var objectFormat: BaseTokenizedObject {
			get {
				return self.append("objectFormat") 
			}
		}
		
		public var responseProfileId: BaseTokenizedObject {
			get {
				return self.append("responseProfileId") 
			}
		}
	}

	/**  Define the content dynamic parameters  */
	public var queueNameParameters: Array<PushEventNotificationParameter>? = nil
	/**  Define the content dynamic parameters  */
	public var queueKeyParameters: Array<PushEventNotificationParameter>? = nil
	/**  Kaltura API object type  */
	public var apiObjectType: String? = nil
	/**  Kaltura Object format  */
	public var objectFormat: ResponseType? = nil
	/**  Kaltura response-profile id  */
	public var responseProfileId: Int? = nil


	public func setMultiRequestToken(apiObjectType: String) {
		self.dict["apiObjectType"] = apiObjectType
	}
	
	public func setMultiRequestToken(objectFormat: String) {
		self.dict["objectFormat"] = objectFormat
	}
	
	public func setMultiRequestToken(responseProfileId: String) {
		self.dict["responseProfileId"] = responseProfileId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["queueNameParameters"] != nil {
			queueNameParameters = try JSONParser.parse(array: dict["queueNameParameters"] as! [Any])
		}
		if dict["queueKeyParameters"] != nil {
			queueKeyParameters = try JSONParser.parse(array: dict["queueKeyParameters"] as! [Any])
		}
		if dict["apiObjectType"] != nil {
			apiObjectType = dict["apiObjectType"] as? String
		}
		if dict["objectFormat"] != nil {
			objectFormat = ResponseType(rawValue: (dict["objectFormat"] as? Int)!)
		}
		if dict["responseProfileId"] != nil {
			responseProfileId = dict["responseProfileId"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(queueNameParameters != nil) {
			dict["queueNameParameters"] = queueNameParameters!.map { value in value.toDictionary() }
		}
		if(queueKeyParameters != nil) {
			dict["queueKeyParameters"] = queueKeyParameters!.map { value in value.toDictionary() }
		}
		if(apiObjectType != nil) {
			dict["apiObjectType"] = apiObjectType!
		}
		if(objectFormat != nil) {
			dict["objectFormat"] = objectFormat!.rawValue
		}
		if(responseProfileId != nil) {
			dict["responseProfileId"] = responseProfileId!
		}
		return dict
	}
}

