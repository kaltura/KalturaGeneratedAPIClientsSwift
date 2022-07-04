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

/**  API class for recipient provider containing a static list of email recipients.  */
open class EmailNotificationStaticRecipientProvider: EmailNotificationRecipientProvider {

	public class EmailNotificationStaticRecipientProviderTokenizer: EmailNotificationRecipientProvider.EmailNotificationRecipientProviderTokenizer {
		
		public var emailRecipients: ArrayTokenizedObject<EmailNotificationRecipient.EmailNotificationRecipientTokenizer> {
			get {
				return ArrayTokenizedObject<EmailNotificationRecipient.EmailNotificationRecipientTokenizer>(self.append("emailRecipients"))
			} 
		}
	}

	/**  Email to emails and names  */
	public var emailRecipients: Array<EmailNotificationRecipient>? = nil


	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["emailRecipients"] != nil {
			emailRecipients = try JSONParser.parse(array: dict["emailRecipients"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(emailRecipients != nil) {
			dict["emailRecipients"] = emailRecipients!.map { value in value.toDictionary() }
		}
		return dict
	}
}

