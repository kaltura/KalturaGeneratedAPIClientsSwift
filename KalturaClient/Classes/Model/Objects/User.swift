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

open class User: ObjectBase {

	public var id: String? = nil
	public var partnerId: Int? = nil
	public var type: UserType? = nil
	public var screenName: String? = nil
	public var fullName: String? = nil
	public var email: String? = nil
	public var dateOfBirth: Int? = nil
	public var country: String? = nil
	public var state: String? = nil
	public var city: String? = nil
	public var zip: String? = nil
	public var thumbnailUrl: String? = nil
	public var description: String? = nil
	public var tags: String? = nil
	/**  Admin tags can be updated only by using an admin session  */
	public var adminTags: String? = nil
	public var gender: Gender? = nil
	public var status: UserStatus? = nil
	/**  Creation date as Unix timestamp (In seconds)  */
	public var createdAt: Int? = nil
	/**  Last update date as Unix timestamp (In seconds)  */
	public var updatedAt: Int? = nil
	/**  Can be used to store various partner related data as a string  */
	public var partnerData: String? = nil
	public var indexedPartnerDataInt: Int? = nil
	public var indexedPartnerDataString: String? = nil
	public var storageSize: Int? = nil
	public var password: String? = nil
	public var firstName: String? = nil
	public var lastName: String? = nil
	public var isAdmin: Bool? = nil
	public var language: LanguageCode? = nil
	public var lastLoginTime: Int? = nil
	public var statusUpdatedAt: Int? = nil
	public var deletedAt: Int? = nil
	public var loginEnabled: Bool? = nil
	public var roleIds: String? = nil
	public var roleNames: String? = nil
	public var isAccountOwner: Bool? = nil
	public var allowedPartnerIds: String? = nil
	public var allowedPartnerPackages: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? String
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["type"] != nil {
			type = UserType(rawValue: (dict["type"] as? Int)!)
		}
		if dict["screenName"] != nil {
			screenName = dict["screenName"] as? String
		}
		if dict["fullName"] != nil {
			fullName = dict["fullName"] as? String
		}
		if dict["email"] != nil {
			email = dict["email"] as? String
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
		if dict["thumbnailUrl"] != nil {
			thumbnailUrl = dict["thumbnailUrl"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["tags"] != nil {
			tags = dict["tags"] as? String
		}
		if dict["adminTags"] != nil {
			adminTags = dict["adminTags"] as? String
		}
		if dict["gender"] != nil {
			gender = Gender(rawValue: (dict["gender"] as? Int)!)
		}
		if dict["status"] != nil {
			status = UserStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["partnerData"] != nil {
			partnerData = dict["partnerData"] as? String
		}
		if dict["indexedPartnerDataInt"] != nil {
			indexedPartnerDataInt = dict["indexedPartnerDataInt"] as? Int
		}
		if dict["indexedPartnerDataString"] != nil {
			indexedPartnerDataString = dict["indexedPartnerDataString"] as? String
		}
		if dict["storageSize"] != nil {
			storageSize = dict["storageSize"] as? Int
		}
		if dict["password"] != nil {
			password = dict["password"] as? String
		}
		if dict["firstName"] != nil {
			firstName = dict["firstName"] as? String
		}
		if dict["lastName"] != nil {
			lastName = dict["lastName"] as? String
		}
		if dict["isAdmin"] != nil {
			isAdmin = dict["isAdmin"] as? Bool
		}
		if dict["language"] != nil {
			language = LanguageCode(rawValue: "\(dict["language"]!)")
		}
		if dict["lastLoginTime"] != nil {
			lastLoginTime = dict["lastLoginTime"] as? Int
		}
		if dict["statusUpdatedAt"] != nil {
			statusUpdatedAt = dict["statusUpdatedAt"] as? Int
		}
		if dict["deletedAt"] != nil {
			deletedAt = dict["deletedAt"] as? Int
		}
		if dict["loginEnabled"] != nil {
			loginEnabled = dict["loginEnabled"] as? Bool
		}
		if dict["roleIds"] != nil {
			roleIds = dict["roleIds"] as? String
		}
		if dict["roleNames"] != nil {
			roleNames = dict["roleNames"] as? String
		}
		if dict["isAccountOwner"] != nil {
			isAccountOwner = dict["isAccountOwner"] as? Bool
		}
		if dict["allowedPartnerIds"] != nil {
			allowedPartnerIds = dict["allowedPartnerIds"] as? String
		}
		if dict["allowedPartnerPackages"] != nil {
			allowedPartnerPackages = dict["allowedPartnerPackages"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(id != nil) {
			dict["id"] = id!
		}
		if(type != nil) {
			dict["type"] = type!.rawValue
		}
		if(screenName != nil) {
			dict["screenName"] = screenName!
		}
		if(fullName != nil) {
			dict["fullName"] = fullName!
		}
		if(email != nil) {
			dict["email"] = email!
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
		if(thumbnailUrl != nil) {
			dict["thumbnailUrl"] = thumbnailUrl!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(tags != nil) {
			dict["tags"] = tags!
		}
		if(adminTags != nil) {
			dict["adminTags"] = adminTags!
		}
		if(gender != nil) {
			dict["gender"] = gender!.rawValue
		}
		if(status != nil) {
			dict["status"] = status!.rawValue
		}
		if(partnerData != nil) {
			dict["partnerData"] = partnerData!
		}
		if(indexedPartnerDataInt != nil) {
			dict["indexedPartnerDataInt"] = indexedPartnerDataInt!
		}
		if(indexedPartnerDataString != nil) {
			dict["indexedPartnerDataString"] = indexedPartnerDataString!
		}
		if(password != nil) {
			dict["password"] = password!
		}
		if(firstName != nil) {
			dict["firstName"] = firstName!
		}
		if(lastName != nil) {
			dict["lastName"] = lastName!
		}
		if(isAdmin != nil) {
			dict["isAdmin"] = isAdmin!
		}
		if(language != nil) {
			dict["language"] = language!.rawValue
		}
		if(roleIds != nil) {
			dict["roleIds"] = roleIds!
		}
		if(allowedPartnerIds != nil) {
			dict["allowedPartnerIds"] = allowedPartnerIds!
		}
		if(allowedPartnerPackages != nil) {
			dict["allowedPartnerPackages"] = allowedPartnerPackages!
		}
		return dict
	}
}

