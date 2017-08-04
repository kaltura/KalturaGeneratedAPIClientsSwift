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

/**  Manage partner users on Kaltura's side  The userId in kaltura is the unique Id
  in the partner's system, and the [partnerId,Id] couple are unique key in
  kaltura's DB  */
public final class UserService{

	/**  Adds a new user to an existing account in the Kaltura database.   Input param
	  $id is the unique identifier in the partner's system.  */
	public static func add(user: User) -> RequestBuilder<User> {
		let request: RequestBuilder<User> = RequestBuilder<User>(service: "user", action: "add")
			.setBody(key: "user", value: user)

		return request
	}

	/**  Deletes a user from a partner account.  */
	public static func delete(userId: String) -> RequestBuilder<User> {
		let request: RequestBuilder<User> = RequestBuilder<User>(service: "user", action: "delete")
			.setBody(key: "userId", value: userId)

		return request
	}

	public static func disableLogin() -> RequestBuilder<User> {
		return disableLogin(userId: nil)
	}

	public static func disableLogin(userId: String?) -> RequestBuilder<User> {
		return disableLogin(userId: userId, loginId: nil)
	}

	/**  Disables a user's ability to log into a partner account using an email address
	  and a password.   You may use either a userId or a loginId parameter for this
	  action.  */
	public static func disableLogin(userId: String?, loginId: String?) -> RequestBuilder<User> {
		let request: RequestBuilder<User> = RequestBuilder<User>(service: "user", action: "disableLogin")
			.setBody(key: "userId", value: userId)
			.setBody(key: "loginId", value: loginId)

		return request
	}

	public static func enableLogin(userId: String, loginId: String) -> RequestBuilder<User> {
		return enableLogin(userId: userId, loginId: loginId, password: nil)
	}

	/**  Enables a user to log into a partner account using an email address and a
	  password  */
	public static func enableLogin(userId: String, loginId: String, password: String?) -> RequestBuilder<User> {
		let request: RequestBuilder<User> = RequestBuilder<User>(service: "user", action: "enableLogin")
			.setBody(key: "userId", value: userId)
			.setBody(key: "loginId", value: loginId)
			.setBody(key: "password", value: password)

		return request
	}

	public static func get() -> RequestBuilder<User> {
		return get(userId: nil)
	}

	/**  Retrieves a user object for a specified user ID.  */
	public static func get(userId: String?) -> RequestBuilder<User> {
		let request: RequestBuilder<User> = RequestBuilder<User>(service: "user", action: "get")
			.setBody(key: "userId", value: userId)

		return request
	}

	/**  Retrieves a user object for a user's login ID and partner ID.   A login ID is
	  the email address used by a user to log into the system.  */
	public static func getByLoginId(loginId: String) -> RequestBuilder<User> {
		let request: RequestBuilder<User> = RequestBuilder<User>(service: "user", action: "getByLoginId")
			.setBody(key: "loginId", value: loginId)

		return request
	}

	public static func index(id: String) -> RequestBuilder<String> {
		return index(id: id, shouldUpdate: true)
	}

	/**  Index an entry by id.  */
	public static func index(id: String, shouldUpdate: Bool?) -> RequestBuilder<String> {
		let request: RequestBuilder<String> = RequestBuilder<String>(service: "user", action: "index")
			.setBody(key: "id", value: id)
			.setBody(key: "shouldUpdate", value: shouldUpdate)

		return request
	}

	public static func list() -> RequestBuilder<UserListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: UserFilter?) -> RequestBuilder<UserListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  Lists user objects that are associated with an account.   Blocked users are
	  listed unless you use a filter to exclude them.   Deleted users are not listed
	  unless you use a filter to include them.  */
	public static func list(filter: UserFilter?, pager: FilterPager?) -> RequestBuilder<UserListResponse> {
		let request: RequestBuilder<UserListResponse> = RequestBuilder<UserListResponse>(service: "user", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public static func login(partnerId: Int, userId: String, password: String) -> RequestBuilder<String> {
		return login(partnerId: partnerId, userId: userId, password: password, expiry: 86400)
	}

	public static func login(partnerId: Int, userId: String, password: String, expiry: Int?) -> RequestBuilder<String> {
		return login(partnerId: partnerId, userId: userId, password: password, expiry: expiry, privileges: "*")
	}

	/**  Logs a user into a partner account with a partner ID, a partner user ID (puser),
	  and a user password.  */
	public static func login(partnerId: Int, userId: String, password: String, expiry: Int?, privileges: String?) -> RequestBuilder<String> {
		let request: RequestBuilder<String> = RequestBuilder<String>(service: "user", action: "login")
			.setBody(key: "partnerId", value: partnerId)
			.setBody(key: "userId", value: userId)
			.setBody(key: "password", value: password)
			.setBody(key: "expiry", value: expiry)
			.setBody(key: "privileges", value: privileges)

		return request
	}

	public static func loginByLoginId(loginId: String, password: String) -> RequestBuilder<String> {
		return loginByLoginId(loginId: loginId, password: password, partnerId: nil)
	}

	public static func loginByLoginId(loginId: String, password: String, partnerId: Int?) -> RequestBuilder<String> {
		return loginByLoginId(loginId: loginId, password: password, partnerId: partnerId, expiry: 86400)
	}

	public static func loginByLoginId(loginId: String, password: String, partnerId: Int?, expiry: Int?) -> RequestBuilder<String> {
		return loginByLoginId(loginId: loginId, password: password, partnerId: partnerId, expiry: expiry, privileges: "*")
	}

	public static func loginByLoginId(loginId: String, password: String, partnerId: Int?, expiry: Int?, privileges: String?) -> RequestBuilder<String> {
		return loginByLoginId(loginId: loginId, password: password, partnerId: partnerId, expiry: expiry, privileges: privileges, otp: nil)
	}

	/**  Logs a user into a partner account with a user login ID and a user password.  */
	public static func loginByLoginId(loginId: String, password: String, partnerId: Int?, expiry: Int?, privileges: String?, otp: String?) -> RequestBuilder<String> {
		let request: RequestBuilder<String> = RequestBuilder<String>(service: "user", action: "loginByLoginId")
			.setBody(key: "loginId", value: loginId)
			.setBody(key: "password", value: password)
			.setBody(key: "partnerId", value: partnerId)
			.setBody(key: "expiry", value: expiry)
			.setBody(key: "privileges", value: privileges)
			.setBody(key: "otp", value: otp)

		return request
	}

	/**  Notifies that a user is banned from an account.  */
	public static func notifyBan(userId: String) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "user", action: "notifyBan")
			.setBody(key: "userId", value: userId)

		return request
	}

	/**  Reset user's password and send the user an email to generate a new one.  */
	public static func resetPassword(email: String) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "user", action: "resetPassword")
			.setBody(key: "email", value: email)

		return request
	}

	/**  Set initial users password  */
	public static func setInitialPassword(hashKey: String, newPassword: String) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "user", action: "setInitialPassword")
			.setBody(key: "hashKey", value: hashKey)
			.setBody(key: "newPassword", value: newPassword)

		return request
	}

	/**  Updates an existing user object.   You can also use this action to update the
	  userId.  */
	public static func update(userId: String, user: User) -> RequestBuilder<User> {
		let request: RequestBuilder<User> = RequestBuilder<User>(service: "user", action: "update")
			.setBody(key: "userId", value: userId)
			.setBody(key: "user", value: user)

		return request
	}

	public static func updateLoginData(oldLoginId: String, password: String) -> RequestBuilder<Void> {
		return updateLoginData(oldLoginId: oldLoginId, password: password, newLoginId: "")
	}

	public static func updateLoginData(oldLoginId: String, password: String, newLoginId: String?) -> RequestBuilder<Void> {
		return updateLoginData(oldLoginId: oldLoginId, password: password, newLoginId: newLoginId, newPassword: "")
	}

	public static func updateLoginData(oldLoginId: String, password: String, newLoginId: String?, newPassword: String?) -> RequestBuilder<Void> {
		return updateLoginData(oldLoginId: oldLoginId, password: password, newLoginId: newLoginId, newPassword: newPassword, newFirstName: nil)
	}

	public static func updateLoginData(oldLoginId: String, password: String, newLoginId: String?, newPassword: String?, newFirstName: String?) -> RequestBuilder<Void> {
		return updateLoginData(oldLoginId: oldLoginId, password: password, newLoginId: newLoginId, newPassword: newPassword, newFirstName: newFirstName, newLastName: nil)
	}

	/**  Updates a user's login data: email, password, name.  */
	public static func updateLoginData(oldLoginId: String, password: String, newLoginId: String?, newPassword: String?, newFirstName: String?, newLastName: String?) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "user", action: "updateLoginData")
			.setBody(key: "oldLoginId", value: oldLoginId)
			.setBody(key: "password", value: password)
			.setBody(key: "newLoginId", value: newLoginId)
			.setBody(key: "newPassword", value: newPassword)
			.setBody(key: "newFirstName", value: newFirstName)
			.setBody(key: "newLastName", value: newLastName)

		return request
	}
}
