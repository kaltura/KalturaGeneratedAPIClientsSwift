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

/**  Session service  */
public final class SessionService{

	/**  End a session with the Kaltura server, making the current KS invalid.  */
	public static func end() -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "session", action: "end")

		return request
	}

	public static func get() -> RequestBuilder<SessionInfo> {
		return get(session: nil)
	}

	/**  Parse session key and return its info  */
	public static func get(session: String?) -> RequestBuilder<SessionInfo> {
		let request: RequestBuilder<SessionInfo> = RequestBuilder<SessionInfo>(service: "session", action: "get")
			.setBody(key: "session", value: session)

		return request
	}

	public static func impersonate(secret: String, impersonatedPartnerId: Int) -> RequestBuilder<String> {
		return impersonate(secret: secret, impersonatedPartnerId: impersonatedPartnerId, userId: "")
	}

	public static func impersonate(secret: String, impersonatedPartnerId: Int, userId: String?) -> RequestBuilder<String> {
		return impersonate(secret: secret, impersonatedPartnerId: impersonatedPartnerId, userId: userId, type: SessionType(rawValue: 0))
	}

	public static func impersonate(secret: String, impersonatedPartnerId: Int, userId: String?, type: SessionType?) -> RequestBuilder<String> {
		return impersonate(secret: secret, impersonatedPartnerId: impersonatedPartnerId, userId: userId, type: type, partnerId: nil)
	}

	public static func impersonate(secret: String, impersonatedPartnerId: Int, userId: String?, type: SessionType?, partnerId: Int?) -> RequestBuilder<String> {
		return impersonate(secret: secret, impersonatedPartnerId: impersonatedPartnerId, userId: userId, type: type, partnerId: partnerId, expiry: 86400)
	}

	public static func impersonate(secret: String, impersonatedPartnerId: Int, userId: String?, type: SessionType?, partnerId: Int?, expiry: Int?) -> RequestBuilder<String> {
		return impersonate(secret: secret, impersonatedPartnerId: impersonatedPartnerId, userId: userId, type: type, partnerId: partnerId, expiry: expiry, privileges: nil)
	}

	/**  Start an impersonated session with Kaltura's server.   The result KS is the
	  session key that you should pass to all services that requires a ticket.  */
	public static func impersonate(secret: String, impersonatedPartnerId: Int, userId: String?, type: SessionType?, partnerId: Int?, expiry: Int?, privileges: String?) -> RequestBuilder<String> {
		let request: RequestBuilder<String> = RequestBuilder<String>(service: "session", action: "impersonate")
			.setBody(key: "secret", value: secret)
			.setBody(key: "impersonatedPartnerId", value: impersonatedPartnerId)
			.setBody(key: "userId", value: userId)
			.setBody(key: "type", value: type?.rawValue)
			.setBody(key: "partnerId", value: partnerId)
			.setBody(key: "expiry", value: expiry)
			.setBody(key: "privileges", value: privileges)

		return request
	}

	public static func impersonateByKs(session: String) -> RequestBuilder<SessionInfo> {
		return impersonateByKs(session: session, type: nil)
	}

	public static func impersonateByKs(session: String, type: SessionType?) -> RequestBuilder<SessionInfo> {
		return impersonateByKs(session: session, type: type, expiry: nil)
	}

	public static func impersonateByKs(session: String, type: SessionType?, expiry: Int?) -> RequestBuilder<SessionInfo> {
		return impersonateByKs(session: session, type: type, expiry: expiry, privileges: nil)
	}

	/**  Start an impersonated session with Kaltura's server.   The result KS info
	  contains the session key that you should pass to all services that requires a
	  ticket.   Type, expiry and privileges won't be changed if they're not set  */
	public static func impersonateByKs(session: String, type: SessionType?, expiry: Int?, privileges: String?) -> RequestBuilder<SessionInfo> {
		let request: RequestBuilder<SessionInfo> = RequestBuilder<SessionInfo>(service: "session", action: "impersonateByKs")
			.setBody(key: "session", value: session)
			.setBody(key: "type", value: type?.rawValue)
			.setBody(key: "expiry", value: expiry)
			.setBody(key: "privileges", value: privileges)

		return request
	}

	public static func start(secret: String) -> RequestBuilder<String> {
		return start(secret: secret, userId: "")
	}

	public static func start(secret: String, userId: String?) -> RequestBuilder<String> {
		return start(secret: secret, userId: userId, type: SessionType(rawValue: 0))
	}

	public static func start(secret: String, userId: String?, type: SessionType?) -> RequestBuilder<String> {
		return start(secret: secret, userId: userId, type: type, partnerId: nil)
	}

	public static func start(secret: String, userId: String?, type: SessionType?, partnerId: Int?) -> RequestBuilder<String> {
		return start(secret: secret, userId: userId, type: type, partnerId: partnerId, expiry: 86400)
	}

	public static func start(secret: String, userId: String?, type: SessionType?, partnerId: Int?, expiry: Int?) -> RequestBuilder<String> {
		return start(secret: secret, userId: userId, type: type, partnerId: partnerId, expiry: expiry, privileges: nil)
	}

	/**  Start a session with Kaltura's server.   The result KS is the session key that
	  you should pass to all services that requires a ticket.  */
	public static func start(secret: String, userId: String?, type: SessionType?, partnerId: Int?, expiry: Int?, privileges: String?) -> RequestBuilder<String> {
		let request: RequestBuilder<String> = RequestBuilder<String>(service: "session", action: "start")
			.setBody(key: "secret", value: secret)
			.setBody(key: "userId", value: userId)
			.setBody(key: "type", value: type?.rawValue)
			.setBody(key: "partnerId", value: partnerId)
			.setBody(key: "expiry", value: expiry)
			.setBody(key: "privileges", value: privileges)

		return request
	}

	public static func startWidgetSession(widgetId: String) -> RequestBuilder<StartWidgetSessionResponse> {
		return startWidgetSession(widgetId: widgetId, expiry: 86400)
	}

	/**  Start a session for Kaltura's flash widgets  */
	public static func startWidgetSession(widgetId: String, expiry: Int?) -> RequestBuilder<StartWidgetSessionResponse> {
		let request: RequestBuilder<StartWidgetSessionResponse> = RequestBuilder<StartWidgetSessionResponse>(service: "session", action: "startWidgetSession")
			.setBody(key: "widgetId", value: widgetId)
			.setBody(key: "expiry", value: expiry)

		return request
	}
}
