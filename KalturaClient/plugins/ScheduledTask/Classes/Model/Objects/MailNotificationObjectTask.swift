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
// Copyright (C) 2006-2020  Kaltura Inc.
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

open class MailNotificationObjectTask: ObjectTask {

	public class MailNotificationObjectTaskTokenizer: ObjectTask.ObjectTaskTokenizer {
		
		public var mailTo: BaseTokenizedObject {
			get {
				return self.append("mailTo") 
			}
		}
		
		public var sender: BaseTokenizedObject {
			get {
				return self.append("sender") 
			}
		}
		
		public var subject: BaseTokenizedObject {
			get {
				return self.append("subject") 
			}
		}
		
		public var message: BaseTokenizedObject {
			get {
				return self.append("message") 
			}
		}
		
		public var footer: BaseTokenizedObject {
			get {
				return self.append("footer") 
			}
		}
		
		public var link: BaseTokenizedObject {
			get {
				return self.append("link") 
			}
		}
		
		public var sendToUsers: BaseTokenizedObject {
			get {
				return self.append("sendToUsers") 
			}
		}
	}

	/**  The mail to send the notification to  */
	public var mailTo: String? = nil
	/**  The sender in the mail  */
	public var sender: String? = nil
	/**  The subject of the entry  */
	public var subject: String? = nil
	/**  The message to send in the notification mail  */
	public var message: String? = nil
	/**  The footer of the message to send in the notification mail  */
	public var footer: String? = nil
	/**  The basic link for the KMC site  */
	public var link: String? = nil
	/**  Send the mail to each user  */
	public var sendToUsers: Bool? = nil


	public func setMultiRequestToken(mailTo: String) {
		self.dict["mailTo"] = mailTo
	}
	
	public func setMultiRequestToken(sender: String) {
		self.dict["sender"] = sender
	}
	
	public func setMultiRequestToken(subject: String) {
		self.dict["subject"] = subject
	}
	
	public func setMultiRequestToken(message: String) {
		self.dict["message"] = message
	}
	
	public func setMultiRequestToken(footer: String) {
		self.dict["footer"] = footer
	}
	
	public func setMultiRequestToken(link: String) {
		self.dict["link"] = link
	}
	
	public func setMultiRequestToken(sendToUsers: String) {
		self.dict["sendToUsers"] = sendToUsers
	}
	
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
		if dict["footer"] != nil {
			footer = dict["footer"] as? String
		}
		if dict["link"] != nil {
			link = dict["link"] as? String
		}
		if dict["sendToUsers"] != nil {
			sendToUsers = dict["sendToUsers"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
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
		if(footer != nil) {
			dict["footer"] = footer!
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

