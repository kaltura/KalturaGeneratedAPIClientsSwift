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
// Copyright (C) 2006-2019  Kaltura Inc.
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

/**  Manage partner users on Kaltura's side  The userId in kaltura is the unique ID
  in the partner's system, and the [partnerId,Id] couple are unique key in
  kaltura's DB  */
public final class UserService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func user<T: User.UserTokenizer>() -> T {
			return T(self.append("user"))
		}
	}

	/**  Adds a new user to an existing account in the Kaltura database.   Input param
	  $id is the unique identifier in the partner's system.  */
	public static func add(user: User) -> RequestBuilder<User, User.UserTokenizer, AddTokenizer> {
		let request: RequestBuilder<User, User.UserTokenizer, AddTokenizer> = RequestBuilder<User, User.UserTokenizer, AddTokenizer>(service: "user", action: "add")
			.setParam(key: "user", value: user)

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
			.setParam(key: "userId", value: userId)

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
			.setParam(key: "userId", value: userId)
			.setParam(key: "loginId", value: loginId)

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
			.setParam(key: "userId", value: userId)
			.setParam(key: "loginId", value: loginId)
			.setParam(key: "password", value: password)

		return request
	}

	public class ExportToCsvTokenizer: ClientTokenizer  {
		
		public func filter<T: UserFilter.UserFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public var metadataProfileId: BaseTokenizedObject {
			get {
				return self.append("metadataProfileId") 
			}
		}
		
		public var additionalFields: ArrayTokenizedObject<CsvAdditionalFieldInfo.CsvAdditionalFieldInfoTokenizer> {
			get {
				return ArrayTokenizedObject<CsvAdditionalFieldInfo.CsvAdditionalFieldInfoTokenizer>(self.append("additionalFields"))
			} 
		}
	}

	public static func exportToCsv() -> RequestBuilder<String, BaseTokenizedObject, ExportToCsvTokenizer> {
		return exportToCsv(filter: nil)
	}

	public static func exportToCsv(filter: UserFilter?) -> RequestBuilder<String, BaseTokenizedObject, ExportToCsvTokenizer> {
		return exportToCsv(filter: filter, metadataProfileId: nil)
	}

	public static func exportToCsv(filter: UserFilter?, metadataProfileId: Int?) -> RequestBuilder<String, BaseTokenizedObject, ExportToCsvTokenizer> {
		return exportToCsv(filter: filter, metadataProfileId: metadataProfileId, additionalFields: nil)
	}

	/**  Creates a batch job that sends an email with a link to download a CSV containing
	  a list of users  */
	public static func exportToCsv(filter: UserFilter?, metadataProfileId: Int?, additionalFields: Array<CsvAdditionalFieldInfo>?) -> RequestBuilder<String, BaseTokenizedObject, ExportToCsvTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, ExportToCsvTokenizer> = RequestBuilder<String, BaseTokenizedObject, ExportToCsvTokenizer>(service: "user", action: "exportToCsv")
			.setParam(key: "filter", value: filter)
			.setParam(key: "metadataProfileId", value: metadataProfileId)
			.setParam(key: "additionalFields", value: additionalFields)

		return request
	}

	public class GenerateQrCodeTokenizer: ClientTokenizer  {
		
		public var hashKey: BaseTokenizedObject {
			get {
				return self.append("hashKey") 
			}
		}
	}

	/**  get QR image content  */
	public static func generateQrCode(hashKey: String) -> RequestBuilder<String, BaseTokenizedObject, GenerateQrCodeTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, GenerateQrCodeTokenizer> = RequestBuilder<String, BaseTokenizedObject, GenerateQrCodeTokenizer>(service: "user", action: "generateQrCode")
			.setParam(key: "hashKey", value: hashKey)

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
			.setParam(key: "userId", value: userId)

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
			.setParam(key: "loginId", value: loginId)

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
			.setParam(key: "id", value: id)
			.setParam(key: "shouldUpdate", value: shouldUpdate)

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
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

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
			.setParam(key: "partnerId", value: partnerId)
			.setParam(key: "userId", value: userId)
			.setParam(key: "password", value: password)
			.setParam(key: "expiry", value: expiry)
			.setParam(key: "privileges", value: privileges)

		return request
	}

	public class LoginByKsTokenizer: ClientTokenizer  {
		
		public var requestedPartnerId: BaseTokenizedObject {
			get {
				return self.append("requestedPartnerId") 
			}
		}
	}

	/**  Logs a user to the destination account provided the KS' user ID is associated
	  with the destination account and the loginData ID matches  */
	public static func loginByKs(requestedPartnerId: Int) -> RequestBuilder<SessionResponse, SessionResponse.SessionResponseTokenizer, LoginByKsTokenizer> {
		let request: RequestBuilder<SessionResponse, SessionResponse.SessionResponseTokenizer, LoginByKsTokenizer> = RequestBuilder<SessionResponse, SessionResponse.SessionResponseTokenizer, LoginByKsTokenizer>(service: "user", action: "loginByKs")
			.setParam(key: "requestedPartnerId", value: requestedPartnerId)

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
			.setParam(key: "loginId", value: loginId)
			.setParam(key: "password", value: password)
			.setParam(key: "partnerId", value: partnerId)
			.setParam(key: "expiry", value: expiry)
			.setParam(key: "privileges", value: privileges)
			.setParam(key: "otp", value: otp)

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
			.setParam(key: "userId", value: userId)

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
			.setParam(key: "email", value: email)

		return request
	}

	public class ServeCsvTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Will serve a requested CSV  */
	public static func serveCsv(id: String) -> RequestBuilder<String, BaseTokenizedObject, ServeCsvTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, ServeCsvTokenizer> = RequestBuilder<String, BaseTokenizedObject, ServeCsvTokenizer>(service: "user", action: "serveCsv")
			.setParam(key: "id", value: id)

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

	/**  Set initial user password  */
	public static func setInitialPassword(hashKey: String, newPassword: String) -> NullRequestBuilder<SetInitialPasswordTokenizer> {
		let request: NullRequestBuilder<SetInitialPasswordTokenizer> = NullRequestBuilder<SetInitialPasswordTokenizer>(service: "user", action: "setInitialPassword")
			.setParam(key: "hashKey", value: hashKey)
			.setParam(key: "newPassword", value: newPassword)

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
			.setParam(key: "userId", value: userId)
			.setParam(key: "user", value: user)

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
			.setParam(key: "oldLoginId", value: oldLoginId)
			.setParam(key: "password", value: password)
			.setParam(key: "newLoginId", value: newLoginId)
			.setParam(key: "newPassword", value: newPassword)
			.setParam(key: "newFirstName", value: newFirstName)
			.setParam(key: "newLastName", value: newLastName)

		return request
	}
}
