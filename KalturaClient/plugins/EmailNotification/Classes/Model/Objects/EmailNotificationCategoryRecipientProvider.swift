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

/**  API object which provides the recipients of category related notifications.  */
open class EmailNotificationCategoryRecipientProvider: EmailNotificationRecipientProvider {

	public class EmailNotificationCategoryRecipientProviderTokenizer: EmailNotificationRecipientProvider.EmailNotificationRecipientProviderTokenizer {
		
		public func categoryId<T: StringValue.StringValueTokenizer>() -> T {
			return T(self.append("categoryId"))
		}
		
		public func categoryIds<T: StringValue.StringValueTokenizer>() -> T {
			return T(self.append("categoryIds"))
		}
		
		public func categoryUserFilter<T: CategoryUserProviderFilter.CategoryUserProviderFilterTokenizer>() -> T {
			return T(self.append("categoryUserFilter"))
		}
	}

	/**  The ID of the category whose subscribers should receive the email notification.  */
	public var categoryId: StringValue? = nil
	/**  The IDs of the categories whose subscribers should receive the email
	  notification.  */
	public var categoryIds: StringValue? = nil
	public var categoryUserFilter: CategoryUserProviderFilter? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["categoryId"] != nil {
		categoryId = try JSONParser.parse(object: dict["categoryId"] as! [String: Any])		}
		if dict["categoryIds"] != nil {
		categoryIds = try JSONParser.parse(object: dict["categoryIds"] as! [String: Any])		}
		if dict["categoryUserFilter"] != nil {
		categoryUserFilter = try JSONParser.parse(object: dict["categoryUserFilter"] as! [String: Any])		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(categoryId != nil) {
			dict["categoryId"] = categoryId!.toDictionary()
		}
		if(categoryIds != nil) {
			dict["categoryIds"] = categoryIds!.toDictionary()
		}
		if(categoryUserFilter != nil) {
			dict["categoryUserFilter"] = categoryUserFilter!.toDictionary()
		}
		return dict
	}
}

