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

/**  Manage partner users on Kaltura's side  The userId in kaltura is the unique Id
  in the partner's system, and the [partnerId,Id] couple are unique key in
  kaltura's DB  */
extension UserService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func user<T: User.UserTokenizer>() -> T {
			return T(self.append("user"))
		}
	}

	/**  Adds a new user to an existing account in the Kaltura database.   Input param
	  $id is the unique identifier in the partner's system.  */
	public static func add(user: User) -> RequestBuilder<User, User.UserTokenizer, AddTokenizer> {
		let request: RequestBuilder<User, User.UserTokenizer, AddTokenizer> = RequestBuilder<User, User.UserTokenizer, AddTokenizer>(service: "user", action: "add")
			.setBody(key: "user", value: user)

		return request
	}

	public class AddFromBulkUploadTokenizer: ClientTokenizer  {
		
		public func bulkUploadData<T: BulkUploadJobData.BulkUploadJobDataTokenizer>() -> T {
			return T(self.append("bulkUploadData"))
		}
		
		public func bulkUploadUserData<T: BulkUploadUserData.BulkUploadUserDataTokenizer>() -> T {
			return T(self.append("bulkUploadUserData"))
		}
	}

	public static func addFromBulkUpload(fileData: RequestFile) -> RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AddFromBulkUploadTokenizer> {
		return addFromBulkUpload(fileData: fileData, bulkUploadData: nil)
	}

	public static func addFromBulkUpload(fileData: RequestFile, bulkUploadData: BulkUploadJobData?) -> RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AddFromBulkUploadTokenizer> {
		return addFromBulkUpload(fileData: fileData, bulkUploadData: bulkUploadData, bulkUploadUserData: nil)
	}

	public static func addFromBulkUpload(fileData: RequestFile, bulkUploadData: BulkUploadJobData?, bulkUploadUserData: BulkUploadUserData?) -> RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AddFromBulkUploadTokenizer> {
		let request: RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AddFromBulkUploadTokenizer> = RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AddFromBulkUploadTokenizer>(service: "user", action: "addFromBulkUpload")
			.setFile(key: "fileData", value: fileData)
			.setBody(key: "bulkUploadData", value: bulkUploadData)
			.setBody(key: "bulkUploadUserData", value: bulkUploadUserData)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
	}

	/**  Deletes a user from a partner account.  */
	public static func delete(userId: String) -> RequestBuilder<User, User.UserTokenizer, DeleteTokenizer> {
		let request: RequestBuilder<User, User.UserTokenizer, DeleteTokenizer> = RequestBuilder<User, User.UserTokenizer, DeleteTokenizer>(service: "user", action: "delete")
			.setBody(key: "userId", value: userId)

		return request
	}

	public class DisableLoginTokenizer: ClientTokenizer  {
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var loginId: BaseTokenizedObject {
			get {
				return self.append("loginId") 
			}
		}
	}

	public static func disableLogin() -> RequestBuilder<User, User.UserTokenizer, DisableLoginTokenizer> {
		return disableLogin(userId: nil)
	}

	public static func disableLogin(userId: String?) -> RequestBuilder<User, User.UserTokenizer, DisableLoginTokenizer> {
		return disableLogin(userId: userId, loginId: nil)
	}

	/**  Disables a user's ability to log into a partner account using an email address
	  and a password.   You may use either a userId or a loginId parameter for this
	  action.  */
	public static func disableLogin(userId: String?, loginId: String?) -> RequestBuilder<User, User.UserTokenizer, DisableLoginTokenizer> {
		let request: RequestBuilder<User, User.UserTokenizer, DisableLoginTokenizer> = RequestBuilder<User, User.UserTokenizer, DisableLoginTokenizer>(service: "user", action: "disableLogin")
			.setBody(key: "userId", value: userId)
			.setBody(key: "loginId", value: loginId)

		return request
	}

	public class EnableLoginTokenizer: ClientTokenizer  {
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var loginId: BaseTokenizedObject {
			get {
				return self.append("loginId") 
			}
		}
		
		public var password: BaseTokenizedObject {
			get {
				return self.append("password") 
			}
		}
	}

	public static func enableLogin(userId: String, loginId: String) -> RequestBuilder<User, User.UserTokenizer, EnableLoginTokenizer> {
		return enableLogin(userId: userId, loginId: loginId, password: nil)
	}

	/**  Enables a user to log into a partner account using an email address and a
	  password  */
	public static func enableLogin(userId: String, loginId: String, password: String?) -> RequestBuilder<User, User.UserTokenizer, EnableLoginTokenizer> {
		let request: RequestBuilder<User, User.UserTokenizer, EnableLoginTokenizer> = RequestBuilder<User, User.UserTokenizer, EnableLoginTokenizer>(service: "user", action: "enableLogin")
			.setBody(key: "userId", value: userId)
			.setBody(key: "loginId", value: loginId)
			.setBody(key: "password", value: password)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
	}

	public static func get() -> RequestBuilder<User, User.UserTokenizer, GetTokenizer> {
		return get(userId: nil)
	}

	/**  Retrieves a user object for a specified user ID.  */
	public static func get(userId: String?) -> RequestBuilder<User, User.UserTokenizer, GetTokenizer> {
		let request: RequestBuilder<User, User.UserTokenizer, GetTokenizer> = RequestBuilder<User, User.UserTokenizer, GetTokenizer>(service: "user", action: "get")
			.setBody(key: "userId", value: userId)

		return request
	}

	public class GetByLoginIdTokenizer: ClientTokenizer  {
		
		public var loginId: BaseTokenizedObject {
			get {
				return self.append("loginId") 
			}
		}
	}

	/**  Retrieves a user object for a user's login ID and partner ID.   A login ID is
	  the email address used by a user to log into the system.  */
	public static func getByLoginId(loginId: String) -> RequestBuilder<User, User.UserTokenizer, GetByLoginIdTokenizer> {
		let request: RequestBuilder<User, User.UserTokenizer, GetByLoginIdTokenizer> = RequestBuilder<User, User.UserTokenizer, GetByLoginIdTokenizer>(service: "user", action: "getByLoginId")
			.setBody(key: "loginId", value: loginId)

		return request
	}

	public class IndexTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var shouldUpdate: BaseTokenizedObject {
			get {
				return self.append("shouldUpdate") 
			}
		}
	}

	public static func index(id: String) -> RequestBuilder<String, BaseTokenizedObject, IndexTokenizer> {
		return index(id: id, shouldUpdate: true)
	}

	/**  Index an entry by id.  */
	public static func index(id: String, shouldUpdate: Bool?) -> RequestBuilder<String, BaseTokenizedObject, IndexTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, IndexTokenizer> = RequestBuilder<String, BaseTokenizedObject, IndexTokenizer>(service: "user", action: "index")
			.setBody(key: "id", value: id)
			.setBody(key: "shouldUpdate", value: shouldUpdate)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: UserFilter.UserFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<UserListResponse, UserListResponse.UserListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: UserFilter?) -> RequestBuilder<UserListResponse, UserListResponse.UserListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  Lists user objects that are associated with an account.   Blocked users are
	  listed unless you use a filter to exclude them.   Deleted users are not listed
	  unless you use a filter to include them.  */
	public static func list(filter: UserFilter?, pager: FilterPager?) -> RequestBuilder<UserListResponse, UserListResponse.UserListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<UserListResponse, UserListResponse.UserListResponseTokenizer, ListTokenizer> = RequestBuilder<UserListResponse, UserListResponse.UserListResponseTokenizer, ListTokenizer>(service: "user", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public class LoginTokenizer: ClientTokenizer  {
		
		public override var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var password: BaseTokenizedObject {
			get {
				return self.append("password") 
			}
		}
		
		public var expiry: BaseTokenizedObject {
			get {
				return self.append("expiry") 
			}
		}
		
		public var privileges: BaseTokenizedObject {
			get {
				return self.append("privileges") 
			}
		}
	}

	public static func login(partnerId: Int, userId: String, password: String) -> RequestBuilder<String, BaseTokenizedObject, LoginTokenizer> {
		return login(partnerId: partnerId, userId: userId, password: password, expiry: 86400)
	}

	public static func login(partnerId: Int, userId: String, password: String, expiry: Int?) -> RequestBuilder<String, BaseTokenizedObject, LoginTokenizer> {
		return login(partnerId: partnerId, userId: userId, password: password, expiry: expiry, privileges: "*")
	}

	/**  Logs a user into a partner account with a partner ID, a partner user ID (puser),
	  and a user password.  */
	public static func login(partnerId: Int, userId: String, password: String, expiry: Int?, privileges: String?) -> RequestBuilder<String, BaseTokenizedObject, LoginTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, LoginTokenizer> = RequestBuilder<String, BaseTokenizedObject, LoginTokenizer>(service: "user", action: "login")
			.setBody(key: "partnerId", value: partnerId)
			.setBody(key: "userId", value: userId)
			.setBody(key: "password", value: password)
			.setBody(key: "expiry", value: expiry)
			.setBody(key: "privileges", value: privileges)

		return request
	}

	public class LoginByLoginIdTokenizer: ClientTokenizer  {
		
		public var loginId: BaseTokenizedObject {
			get {
				return self.append("loginId") 
			}
		}
		
		public var password: BaseTokenizedObject {
			get {
				return self.append("password") 
			}
		}
		
		public override var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var expiry: BaseTokenizedObject {
			get {
				return self.append("expiry") 
			}
		}
		
		public var privileges: BaseTokenizedObject {
			get {
				return self.append("privileges") 
			}
		}
		
		public var otp: BaseTokenizedObject {
			get {
				return self.append("otp") 
			}
		}
	}

	public static func loginByLoginId(loginId: String, password: String) -> RequestBuilder<String, BaseTokenizedObject, LoginByLoginIdTokenizer> {
		return loginByLoginId(loginId: loginId, password: password, partnerId: nil)
	}

	public static func loginByLoginId(loginId: String, password: String, partnerId: Int?) -> RequestBuilder<String, BaseTokenizedObject, LoginByLoginIdTokenizer> {
		return loginByLoginId(loginId: loginId, password: password, partnerId: partnerId, expiry: 86400)
	}

	public static func loginByLoginId(loginId: String, password: String, partnerId: Int?, expiry: Int?) -> RequestBuilder<String, BaseTokenizedObject, LoginByLoginIdTokenizer> {
		return loginByLoginId(loginId: loginId, password: password, partnerId: partnerId, expiry: expiry, privileges: "*")
	}

	public static func loginByLoginId(loginId: String, password: String, partnerId: Int?, expiry: Int?, privileges: String?) -> RequestBuilder<String, BaseTokenizedObject, LoginByLoginIdTokenizer> {
		return loginByLoginId(loginId: loginId, password: password, partnerId: partnerId, expiry: expiry, privileges: privileges, otp: nil)
	}

	/**  Logs a user into a partner account with a user login ID and a user password.  */
	public static func loginByLoginId(loginId: String, password: String, partnerId: Int?, expiry: Int?, privileges: String?, otp: String?) -> RequestBuilder<String, BaseTokenizedObject, LoginByLoginIdTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, LoginByLoginIdTokenizer> = RequestBuilder<String, BaseTokenizedObject, LoginByLoginIdTokenizer>(service: "user", action: "loginByLoginId")
			.setBody(key: "loginId", value: loginId)
			.setBody(key: "password", value: password)
			.setBody(key: "partnerId", value: partnerId)
			.setBody(key: "expiry", value: expiry)
			.setBody(key: "privileges", value: privileges)
			.setBody(key: "otp", value: otp)

		return request
	}

	public class NotifyBanTokenizer: ClientTokenizer  {
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
	}

	/**  Notifies that a user is banned from an account.  */
	public static func notifyBan(userId: String) -> NullRequestBuilder<NotifyBanTokenizer> {
		let request: NullRequestBuilder<NotifyBanTokenizer> = NullRequestBuilder<NotifyBanTokenizer>(service: "user", action: "notifyBan")
			.setBody(key: "userId", value: userId)

		return request
	}

	public class ResetPasswordTokenizer: ClientTokenizer  {
		
		public var email: BaseTokenizedObject {
			get {
				return self.append("email") 
			}
		}
	}

	/**  Reset user's password and send the user an email to generate a new one.  */
	public static func resetPassword(email: String) -> NullRequestBuilder<ResetPasswordTokenizer> {
		let request: NullRequestBuilder<ResetPasswordTokenizer> = NullRequestBuilder<ResetPasswordTokenizer>(service: "user", action: "resetPassword")
			.setBody(key: "email", value: email)

		return request
	}

	public class SetInitialPasswordTokenizer: ClientTokenizer  {
		
		public var hashKey: BaseTokenizedObject {
			get {
				return self.append("hashKey") 
			}
		}
		
		public var newPassword: BaseTokenizedObject {
			get {
				return self.append("newPassword") 
			}
		}
	}

	/**  Set initial users password  */
	public static func setInitialPassword(hashKey: String, newPassword: String) -> NullRequestBuilder<SetInitialPasswordTokenizer> {
		let request: NullRequestBuilder<SetInitialPasswordTokenizer> = NullRequestBuilder<SetInitialPasswordTokenizer>(service: "user", action: "setInitialPassword")
			.setBody(key: "hashKey", value: hashKey)
			.setBody(key: "newPassword", value: newPassword)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public func user<T: User.UserTokenizer>() -> T {
			return T(self.append("user"))
		}
	}

	/**  Updates an existing user object.   You can also use this action to update the
	  userId.  */
	public static func update(userId: String, user: User) -> RequestBuilder<User, User.UserTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<User, User.UserTokenizer, UpdateTokenizer> = RequestBuilder<User, User.UserTokenizer, UpdateTokenizer>(service: "user", action: "update")
			.setBody(key: "userId", value: userId)
			.setBody(key: "user", value: user)

		return request
	}

	public class UpdateLoginDataTokenizer: ClientTokenizer  {
		
		public var oldLoginId: BaseTokenizedObject {
			get {
				return self.append("oldLoginId") 
			}
		}
		
		public var password: BaseTokenizedObject {
			get {
				return self.append("password") 
			}
		}
		
		public var newLoginId: BaseTokenizedObject {
			get {
				return self.append("newLoginId") 
			}
		}
		
		public var newPassword: BaseTokenizedObject {
			get {
				return self.append("newPassword") 
			}
		}
		
		public var newFirstName: BaseTokenizedObject {
			get {
				return self.append("newFirstName") 
			}
		}
		
		public var newLastName: BaseTokenizedObject {
			get {
				return self.append("newLastName") 
			}
		}
	}

	public static func updateLoginData(oldLoginId: String, password: String) -> NullRequestBuilder<UpdateLoginDataTokenizer> {
		return updateLoginData(oldLoginId: oldLoginId, password: password, newLoginId: "")
	}

	public static func updateLoginData(oldLoginId: String, password: String, newLoginId: String?) -> NullRequestBuilder<UpdateLoginDataTokenizer> {
		return updateLoginData(oldLoginId: oldLoginId, password: password, newLoginId: newLoginId, newPassword: "")
	}

	public static func updateLoginData(oldLoginId: String, password: String, newLoginId: String?, newPassword: String?) -> NullRequestBuilder<UpdateLoginDataTokenizer> {
		return updateLoginData(oldLoginId: oldLoginId, password: password, newLoginId: newLoginId, newPassword: newPassword, newFirstName: nil)
	}

	public static func updateLoginData(oldLoginId: String, password: String, newLoginId: String?, newPassword: String?, newFirstName: String?) -> NullRequestBuilder<UpdateLoginDataTokenizer> {
		return updateLoginData(oldLoginId: oldLoginId, password: password, newLoginId: newLoginId, newPassword: newPassword, newFirstName: newFirstName, newLastName: nil)
	}

	/**  Updates a user's login data: email, password, name.  */
	public static func updateLoginData(oldLoginId: String, password: String, newLoginId: String?, newPassword: String?, newFirstName: String?, newLastName: String?) -> NullRequestBuilder<UpdateLoginDataTokenizer> {
		let request: NullRequestBuilder<UpdateLoginDataTokenizer> = NullRequestBuilder<UpdateLoginDataTokenizer>(service: "user", action: "updateLoginData")
			.setBody(key: "oldLoginId", value: oldLoginId)
			.setBody(key: "password", value: password)
			.setBody(key: "newLoginId", value: newLoginId)
			.setBody(key: "newPassword", value: newPassword)
			.setBody(key: "newFirstName", value: newFirstName)
			.setBody(key: "newLastName", value: newLastName)

		return request
	}
}
