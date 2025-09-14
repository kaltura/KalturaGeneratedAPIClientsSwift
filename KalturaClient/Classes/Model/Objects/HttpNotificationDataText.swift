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

open class HttpNotificationDataText: HttpNotificationData {

	public class HttpNotificationDataTextTokenizer: HttpNotificationData.HttpNotificationDataTokenizer {
		
		public func content<T: StringValue.StringValueTokenizer>() -> T {
			return T(self.append("content"))
		}
		
		public var contentType: BaseTokenizedObject {
			get {
				return self.append("contentType") 
			}
		}
	}

	public var content: StringValue? = nil
	public var contentType: String? = nil


	public func setMultiRequestToken(contentType: String) {
		self.dict["contentType"] = contentType
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["content"] != nil {
		content = try JSONParser.parse(object: dict["content"] as! [String: Any])		}
		if dict["contentType"] != nil {
			contentType = dict["contentType"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(content != nil) {
			dict["content"] = content!.toDictionary()
		}
		if(contentType != nil) {
			dict["contentType"] = contentType!
		}
		return dict
	}
}

