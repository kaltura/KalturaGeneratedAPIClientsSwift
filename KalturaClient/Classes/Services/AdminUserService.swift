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

/**  Manage details for the administrative user  */
public final class AdminUserService{

	public static func login(email: String, password: String) -> RequestBuilder<String> {
		return login(email: email, password: password, partnerId: nil)
	}

	/**  Get an admin session using admin email and password (Used for login to the KMC
	  application)  */
	public static func login(email: String, password: String, partnerId: Int?) -> RequestBuilder<String> {
		let request: RequestBuilder<String> = RequestBuilder<String>(service: "adminuser", action: "login")
			.setBody(key: "email", value: email)
			.setBody(key: "password", value: password)
			.setBody(key: "partnerId", value: partnerId)

		return request
	}

	/**  Reset admin user password and send it to the users email address  */
	public static func resetPassword(email: String) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "adminuser", action: "resetPassword")
			.setBody(key: "email", value: email)

		return request
	}

	/**  Set initial users password  */
	public static func setInitialPassword(hashKey: String, newPassword: String) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "adminuser", action: "setInitialPassword")
			.setBody(key: "hashKey", value: hashKey)
			.setBody(key: "newPassword", value: newPassword)

		return request
	}

	public static func updatePassword(email: String, password: String) -> RequestBuilder<AdminUser> {
		return updatePassword(email: email, password: password, newEmail: "")
	}

	public static func updatePassword(email: String, password: String, newEmail: String?) -> RequestBuilder<AdminUser> {
		return updatePassword(email: email, password: password, newEmail: newEmail, newPassword: "")
	}

	/**  Update admin user password and email  */
	public static func updatePassword(email: String, password: String, newEmail: String?, newPassword: String?) -> RequestBuilder<AdminUser> {
		let request: RequestBuilder<AdminUser> = RequestBuilder<AdminUser>(service: "adminuser", action: "updatePassword")
			.setBody(key: "email", value: email)
			.setBody(key: "password", value: password)
			.setBody(key: "newEmail", value: newEmail)
			.setBody(key: "newPassword", value: newPassword)

		return request
	}
}
