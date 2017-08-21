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

open class NotificationJobData: JobData {

	public var userId: String? = nil
	public var type: NotificationType? = nil
	public var typeAsString: String? = nil
	public var objectId: String? = nil
	public var status: NotificationStatus? = nil
	public var data: String? = nil
	public var numberOfAttempts: Int? = nil
	public var notificationResult: String? = nil
	public var objType: NotificationObjectType? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["userId"] != nil {
			userId = dict["userId"] as? String
		}
		if dict["type"] != nil {
			type = NotificationType(rawValue: (dict["type"] as? Int)!)
		}
		if dict["typeAsString"] != nil {
			typeAsString = dict["typeAsString"] as? String
		}
		if dict["objectId"] != nil {
			objectId = dict["objectId"] as? String
		}
		if dict["status"] != nil {
			status = NotificationStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["data"] != nil {
			data = dict["data"] as? String
		}
		if dict["numberOfAttempts"] != nil {
			numberOfAttempts = dict["numberOfAttempts"] as? Int
		}
		if dict["notificationResult"] != nil {
			notificationResult = dict["notificationResult"] as? String
		}
		if dict["objType"] != nil {
			objType = NotificationObjectType(rawValue: (dict["objType"] as? Int)!)
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(userId != nil) {
			dict["userId"] = userId!
		}
		if(type != nil) {
			dict["type"] = type!.rawValue
		}
		if(typeAsString != nil) {
			dict["typeAsString"] = typeAsString!
		}
		if(objectId != nil) {
			dict["objectId"] = objectId!
		}
		if(status != nil) {
			dict["status"] = status!.rawValue
		}
		if(data != nil) {
			dict["data"] = data!
		}
		if(numberOfAttempts != nil) {
			dict["numberOfAttempts"] = numberOfAttempts!
		}
		if(notificationResult != nil) {
			dict["notificationResult"] = notificationResult!
		}
		if(objType != nil) {
			dict["objType"] = objType!.rawValue
		}
		return dict
	}
}

