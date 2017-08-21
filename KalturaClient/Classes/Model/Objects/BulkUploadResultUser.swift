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

open class BulkUploadResultUser: BulkUploadResult {

	public var userId: String? = nil
	public var screenName: String? = nil
	public var email: String? = nil
	public var description: String? = nil
	public var tags: String? = nil
	public var dateOfBirth: Int? = nil
	public var country: String? = nil
	public var state: String? = nil
	public var city: String? = nil
	public var zip: String? = nil
	public var gender: Int? = nil
	public var firstName: String? = nil
	public var lastName: String? = nil
	public var group: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["userId"] != nil {
			userId = dict["userId"] as? String
		}
		if dict["screenName"] != nil {
			screenName = dict["screenName"] as? String
		}
		if dict["email"] != nil {
			email = dict["email"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["tags"] != nil {
			tags = dict["tags"] as? String
		}
		if dict["dateOfBirth"] != nil {
			dateOfBirth = dict["dateOfBirth"] as? Int
		}
		if dict["country"] != nil {
			country = dict["country"] as? String
		}
		if dict["state"] != nil {
			state = dict["state"] as? String
		}
		if dict["city"] != nil {
			city = dict["city"] as? String
		}
		if dict["zip"] != nil {
			zip = dict["zip"] as? String
		}
		if dict["gender"] != nil {
			gender = dict["gender"] as? Int
		}
		if dict["firstName"] != nil {
			firstName = dict["firstName"] as? String
		}
		if dict["lastName"] != nil {
			lastName = dict["lastName"] as? String
		}
		if dict["group"] != nil {
			group = dict["group"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(userId != nil) {
			dict["userId"] = userId!
		}
		if(screenName != nil) {
			dict["screenName"] = screenName!
		}
		if(email != nil) {
			dict["email"] = email!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(tags != nil) {
			dict["tags"] = tags!
		}
		if(dateOfBirth != nil) {
			dict["dateOfBirth"] = dateOfBirth!
		}
		if(country != nil) {
			dict["country"] = country!
		}
		if(state != nil) {
			dict["state"] = state!
		}
		if(city != nil) {
			dict["city"] = city!
		}
		if(zip != nil) {
			dict["zip"] = zip!
		}
		if(gender != nil) {
			dict["gender"] = gender!
		}
		if(firstName != nil) {
			dict["firstName"] = firstName!
		}
		if(lastName != nil) {
			dict["lastName"] = lastName!
		}
		if(group != nil) {
			dict["group"] = group!
		}
		return dict
	}
}

