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

open class EmailNotificationRecipient: ObjectBase {

	public class EmailNotificationRecipientTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public func email<T: StringValue.StringValueTokenizer>() -> T {
			return T(self.append("email"))
		}
		
		public func name<T: StringValue.StringValueTokenizer>() -> T {
			return T(self.append("name"))
		}
	}

	/**  Recipient e-mail address  */
	public var email: StringValue? = nil
	/**  Recipient name  */
	public var name: StringValue? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["email"] != nil {
		email = try JSONParser.parse(object: dict["email"] as! [String: Any])		}
		if dict["name"] != nil {
		name = try JSONParser.parse(object: dict["name"] as! [String: Any])		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(email != nil) {
			dict["email"] = email!.toDictionary()
		}
		if(name != nil) {
			dict["name"] = name!.toDictionary()
		}
		return dict
	}
}

