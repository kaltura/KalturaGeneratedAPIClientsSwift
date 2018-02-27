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
// Copyright (C) 2006-2018  Kaltura Inc.
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

/**  Event notification template service lets you create and manage event
  notification templates  */
extension EventNotificationTemplateService{

	public class RegisterTokenizer: ClientTokenizer  {
		
		public var notificationTemplateSystemName: BaseTokenizedObject {
			get {
				return self.append("notificationTemplateSystemName") 
			}
		}
		
		public func pushNotificationParams<T: PushNotificationParams.PushNotificationParamsTokenizer>() -> T {
			return T(self.append("pushNotificationParams"))
		}
	}

	/**  Register to a queue from which event messages will be provided according to
	  given template. Queue will be created if not already exists  */
	public static func register(notificationTemplateSystemName: String, pushNotificationParams: PushNotificationParams) -> RequestBuilder<PushNotificationData, PushNotificationData.PushNotificationDataTokenizer, RegisterTokenizer> {
		let request: RequestBuilder<PushNotificationData, PushNotificationData.PushNotificationDataTokenizer, RegisterTokenizer> = RequestBuilder<PushNotificationData, PushNotificationData.PushNotificationDataTokenizer, RegisterTokenizer>(service: "eventnotification_eventnotificationtemplate", action: "register")
			.setParam(key: "notificationTemplateSystemName", value: notificationTemplateSystemName)
			.setParam(key: "pushNotificationParams", value: pushNotificationParams)

		return request
	}

	public class SendCommandTokenizer: ClientTokenizer  {
		
		public var notificationTemplateSystemName: BaseTokenizedObject {
			get {
				return self.append("notificationTemplateSystemName") 
			}
		}
		
		public func pushNotificationParams<T: PushNotificationParams.PushNotificationParamsTokenizer>() -> T {
			return T(self.append("pushNotificationParams"))
		}
		
		public var command: BaseTokenizedObject {
			get {
				return self.append("command") 
			}
		}
	}

	/**  Clear queue messages  */
	public static func sendCommand(notificationTemplateSystemName: String, pushNotificationParams: PushNotificationParams, command: PushNotificationCommandType) -> NullRequestBuilder<SendCommandTokenizer> {
		let request: NullRequestBuilder<SendCommandTokenizer> = NullRequestBuilder<SendCommandTokenizer>(service: "eventnotification_eventnotificationtemplate", action: "sendCommand")
			.setParam(key: "notificationTemplateSystemName", value: notificationTemplateSystemName)
			.setParam(key: "pushNotificationParams", value: pushNotificationParams)
			.setParam(key: "command", value: command.rawValue)

		return request
	}
}
