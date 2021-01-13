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
// Copyright (C) 2006-2021  Kaltura Inc.
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

/**  Manage details for the administrative user  */
public final class AdminUserService{

	public class LoginTokenizer: ClientTokenizer  {
		
		public var email: BaseTokenizedObject {
			get {
				return self.append("email") 
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
	}

	public static func login(email: String, password: String) -> RequestBuilder<String, BaseTokenizedObject, LoginTokenizer> {
		return login(email: email, password: password, partnerId: nil)
	}

	/**  Get an admin session using admin email and password (Used for login to the KMC
	  application)  */
	public static func login(email: String, password: String, partnerId: Int?) -> RequestBuilder<String, BaseTokenizedObject, LoginTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, LoginTokenizer> = RequestBuilder<String, BaseTokenizedObject, LoginTokenizer>(service: "adminuser", action: "login")
			.setParam(key: "email", value: email)
			.setParam(key: "password", value: password)
			.setParam(key: "partnerId", value: partnerId)

		return request
	}

	public class ResetPasswordTokenizer: ClientTokenizer  {
		
		public var email: BaseTokenizedObject {
			get {
				return self.append("email") 
			}
		}
	}

	/**  Reset admin user password and send it to the users email address  */
	public static func resetPassword(email: String) -> NullRequestBuilder<ResetPasswordTokenizer> {
		let request: NullRequestBuilder<ResetPasswordTokenizer> = NullRequestBuilder<ResetPasswordTokenizer>(service: "adminuser", action: "resetPassword")
			.setParam(key: "email", value: email)

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
	public static func setInitialPassword(hashKey: String, newPassword: String) -> RequestBuilder<Authentication, Authentication.AuthenticationTokenizer, SetInitialPasswordTokenizer> {
		let request: RequestBuilder<Authentication, Authentication.AuthenticationTokenizer, SetInitialPasswordTokenizer> = RequestBuilder<Authentication, Authentication.AuthenticationTokenizer, SetInitialPasswordTokenizer>(service: "adminuser", action: "setInitialPassword")
			.setParam(key: "hashKey", value: hashKey)
			.setParam(key: "newPassword", value: newPassword)

		return request
	}

	public class UpdatePasswordTokenizer: ClientTokenizer  {
		
		public var email: BaseTokenizedObject {
			get {
				return self.append("email") 
			}
		}
		
		public var password: BaseTokenizedObject {
			get {
				return self.append("password") 
			}
		}
		
		public var newEmail: BaseTokenizedObject {
			get {
				return self.append("newEmail") 
			}
		}
		
		public var newPassword: BaseTokenizedObject {
			get {
				return self.append("newPassword") 
			}
		}
		
		public var otp: BaseTokenizedObject {
			get {
				return self.append("otp") 
			}
		}
	}

	public static func updatePassword(email: String, password: String) -> RequestBuilder<AdminUser, AdminUser.AdminUserTokenizer, UpdatePasswordTokenizer> {
		return updatePassword(email: email, password: password, newEmail: "")
	}

	public static func updatePassword(email: String, password: String, newEmail: String?) -> RequestBuilder<AdminUser, AdminUser.AdminUserTokenizer, UpdatePasswordTokenizer> {
		return updatePassword(email: email, password: password, newEmail: newEmail, newPassword: "")
	}

	public static func updatePassword(email: String, password: String, newEmail: String?, newPassword: String?) -> RequestBuilder<AdminUser, AdminUser.AdminUserTokenizer, UpdatePasswordTokenizer> {
		return updatePassword(email: email, password: password, newEmail: newEmail, newPassword: newPassword, otp: nil)
	}

	/**  Update admin user password and email  */
	public static func updatePassword(email: String, password: String, newEmail: String?, newPassword: String?, otp: String?) -> RequestBuilder<AdminUser, AdminUser.AdminUserTokenizer, UpdatePasswordTokenizer> {
		let request: RequestBuilder<AdminUser, AdminUser.AdminUserTokenizer, UpdatePasswordTokenizer> = RequestBuilder<AdminUser, AdminUser.AdminUserTokenizer, UpdatePasswordTokenizer>(service: "adminuser", action: "updatePassword")
			.setParam(key: "email", value: email)
			.setParam(key: "password", value: password)
			.setParam(key: "newEmail", value: newEmail)
			.setParam(key: "newPassword", value: newPassword)
			.setParam(key: "otp", value: otp)

		return request
	}
}
