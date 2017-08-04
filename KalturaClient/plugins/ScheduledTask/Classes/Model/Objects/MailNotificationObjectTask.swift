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

open class MailNotificationObjectTask: ObjectTask {

	/**  The mail to send the notification to  */
	public var mailTo: String? = nil
	/**  The sender in the mail  */
	public var sender: String? = nil
	/**  The subject of the entry  */
	public var subject: String? = nil
	/**  The message to send in the notification mail  */
	public var message: String? = nil
	/**  The basic link for the KMC site  */
	public var link: String? = nil
	/**  Send the mail to each user  */
	public var sendToUsers: Bool? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["mailTo"] != nil {
			mailTo = dict["mailTo"] as? String
		}
		if dict["sender"] != nil {
			sender = dict["sender"] as? String
		}
		if dict["subject"] != nil {
			subject = dict["subject"] as? String
		}
		if dict["message"] != nil {
			message = dict["message"] as? String
		}
		if dict["link"] != nil {
			link = dict["link"] as? String
		}
		if dict["sendToUsers"] != nil {
			sendToUsers = dict["sendToUsers"] as? Bool
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(mailTo != nil) {
			dict["mailTo"] = mailTo!
		}
		if(sender != nil) {
			dict["sender"] = sender!
		}
		if(subject != nil) {
			dict["subject"] = subject!
		}
		if(message != nil) {
			dict["message"] = message!
		}
		if(link != nil) {
			dict["link"] = link!
		}
		if(sendToUsers != nil) {
			dict["sendToUsers"] = sendToUsers!
		}
		return dict
	}
}

