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

/**  Manage application authentication tokens  */
public final class AppTokenService{

	/**  Add new application authentication token  */
	public static func add(appToken: AppToken) -> RequestBuilder<AppToken> {
		let request: RequestBuilder<AppToken> = RequestBuilder<AppToken>(service: "apptoken", action: "add")
			.setBody(key: "appToken", value: appToken)

		return request
	}

	/**  Delete application authentication token by id  */
	public static func delete(id: String) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "apptoken", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Get application authentication token by id  */
	public static func get(id: String) -> RequestBuilder<AppToken> {
		let request: RequestBuilder<AppToken> = RequestBuilder<AppToken>(service: "apptoken", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public static func list() -> RequestBuilder<AppTokenListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: AppTokenFilter?) -> RequestBuilder<AppTokenListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List application authentication tokens by filter and pager  */
	public static func list(filter: AppTokenFilter?, pager: FilterPager?) -> RequestBuilder<AppTokenListResponse> {
		let request: RequestBuilder<AppTokenListResponse> = RequestBuilder<AppTokenListResponse>(service: "apptoken", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public static func startSession(id: String, tokenHash: String) -> RequestBuilder<SessionInfo> {
		return startSession(id: id, tokenHash: tokenHash, userId: nil)
	}

	public static func startSession(id: String, tokenHash: String, userId: String?) -> RequestBuilder<SessionInfo> {
		return startSession(id: id, tokenHash: tokenHash, userId: userId, type: nil)
	}

	public static func startSession(id: String, tokenHash: String, userId: String?, type: SessionType?) -> RequestBuilder<SessionInfo> {
		return startSession(id: id, tokenHash: tokenHash, userId: userId, type: type, expiry: nil)
	}

	/**  Starts a new KS (kaltura Session) based on application authentication token id  */
	public static func startSession(id: String, tokenHash: String, userId: String?, type: SessionType?, expiry: Int?) -> RequestBuilder<SessionInfo> {
		let request: RequestBuilder<SessionInfo> = RequestBuilder<SessionInfo>(service: "apptoken", action: "startSession")
			.setBody(key: "id", value: id)
			.setBody(key: "tokenHash", value: tokenHash)
			.setBody(key: "userId", value: userId)
			.setBody(key: "type", value: type?.rawValue)
			.setBody(key: "expiry", value: expiry)

		return request
	}

	/**  Update application authentication token by id  */
	public static func update(id: String, appToken: AppToken) -> RequestBuilder<AppToken> {
		let request: RequestBuilder<AppToken> = RequestBuilder<AppToken>(service: "apptoken", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "appToken", value: appToken)

		return request
	}
}
