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

open class BusinessProcessSignalNotificationTemplate: BusinessProcessNotificationTemplate {

	public class BusinessProcessSignalNotificationTemplateTokenizer: BusinessProcessNotificationTemplate.BusinessProcessNotificationTemplateTokenizer {
		
		public var message: BaseTokenizedObject {
			get {
				return self.append("message") 
			}
		}
		
		public var eventId: BaseTokenizedObject {
			get {
				return self.append("eventId") 
			}
		}
	}

	/**  Define the message to be sent  */
	public var message: String? = nil
	/**  Define the event that waiting to the signal  */
	public var eventId: String? = nil


	public func setMultiRequestToken(message: String) {
		self.dict["message"] = message
	}
	
	public func setMultiRequestToken(eventId: String) {
		self.dict["eventId"] = eventId
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["message"] != nil {
			message = dict["message"] as? String
		}
		if dict["eventId"] != nil {
			eventId = dict["eventId"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(message != nil) {
			dict["message"] = message!
		}
		if(eventId != nil) {
			dict["eventId"] = eventId!
		}
		return dict
	}
}

