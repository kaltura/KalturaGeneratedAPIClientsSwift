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
 * This class was generated using generate.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

public final class SsoService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func sso<T: Sso.SsoTokenizer>() -> T {
			return T(self.append("sso"))
		}
	}

	/**  Adds a new sso configuration.  */
	public static func add(sso: Sso) -> RequestBuilder<Sso, Sso.SsoTokenizer, AddTokenizer> {
		let request: RequestBuilder<Sso, Sso.SsoTokenizer, AddTokenizer> = RequestBuilder<Sso, Sso.SsoTokenizer, AddTokenizer>(service: "sso_sso", action: "add")
			.setParam(key: "sso", value: sso)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var ssoId: BaseTokenizedObject {
			get {
				return self.append("ssoId") 
			}
		}
	}

	/**  Delete sso by ID  */
	public static func delete(ssoId: Int) -> RequestBuilder<Sso, Sso.SsoTokenizer, DeleteTokenizer> {
		let request: RequestBuilder<Sso, Sso.SsoTokenizer, DeleteTokenizer> = RequestBuilder<Sso, Sso.SsoTokenizer, DeleteTokenizer>(service: "sso_sso", action: "delete")
			.setParam(key: "ssoId", value: ssoId)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var ssoId: BaseTokenizedObject {
			get {
				return self.append("ssoId") 
			}
		}
	}

	/**  Retrieves sso object  */
	public static func get(ssoId: Int) -> RequestBuilder<Sso, Sso.SsoTokenizer, GetTokenizer> {
		let request: RequestBuilder<Sso, Sso.SsoTokenizer, GetTokenizer> = RequestBuilder<Sso, Sso.SsoTokenizer, GetTokenizer>(service: "sso_sso", action: "get")
			.setParam(key: "ssoId", value: ssoId)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: SsoFilter.SsoFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<SsoListResponse, SsoListResponse.SsoListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: SsoFilter?) -> RequestBuilder<SsoListResponse, SsoListResponse.SsoListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  Lists sso objects that are associated with an account.  */
	public static func list(filter: SsoFilter?, pager: FilterPager?) -> RequestBuilder<SsoListResponse, SsoListResponse.SsoListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<SsoListResponse, SsoListResponse.SsoListResponseTokenizer, ListTokenizer> = RequestBuilder<SsoListResponse, SsoListResponse.SsoListResponseTokenizer, ListTokenizer>(service: "sso_sso", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class LoginTokenizer: ClientTokenizer  {
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var applicationType: BaseTokenizedObject {
			get {
				return self.append("applicationType") 
			}
		}
		
		public override var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
	}

	public static func login(userId: String, applicationType: String) -> RequestBuilder<String, BaseTokenizedObject, LoginTokenizer> {
		return login(userId: userId, applicationType: applicationType, partnerId: nil)
	}

	/**  Login with SSO, getting redirect url according to application type and partner
	  Id   or according to application type and domain  */
	public static func login(userId: String, applicationType: String, partnerId: Int?) -> RequestBuilder<String, BaseTokenizedObject, LoginTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, LoginTokenizer> = RequestBuilder<String, BaseTokenizedObject, LoginTokenizer>(service: "sso_sso", action: "login")
			.setParam(key: "userId", value: userId)
			.setParam(key: "applicationType", value: applicationType)
			.setParam(key: "partnerId", value: partnerId)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var ssoId: BaseTokenizedObject {
			get {
				return self.append("ssoId") 
			}
		}
		
		public func sso<T: Sso.SsoTokenizer>() -> T {
			return T(self.append("sso"))
		}
	}

	/**  Update sso by ID  */
	public static func update(ssoId: Int, sso: Sso) -> RequestBuilder<Sso, Sso.SsoTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<Sso, Sso.SsoTokenizer, UpdateTokenizer> = RequestBuilder<Sso, Sso.SsoTokenizer, UpdateTokenizer>(service: "sso_sso", action: "update")
			.setParam(key: "ssoId", value: ssoId)
			.setParam(key: "sso", value: sso)

		return request
	}
}
