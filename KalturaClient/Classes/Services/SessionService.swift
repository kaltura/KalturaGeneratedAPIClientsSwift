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

/**  Session service  */
public final class SessionService{

	public class EndTokenizer: ClientTokenizer  {
	}

	/**  End a session with the Kaltura server, making the current KS invalid.  */
	public static func end() -> NullRequestBuilder<EndTokenizer> {
		let request: NullRequestBuilder<EndTokenizer> = NullRequestBuilder<EndTokenizer>(service: "session", action: "end")

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var session: BaseTokenizedObject {
			get {
				return self.append("session") 
			}
		}
	}

	public static func get() -> RequestBuilder<SessionInfo, SessionInfo.SessionInfoTokenizer, GetTokenizer> {
		return get(session: nil)
	}

	/**  Parse session key and return its info  */
	public static func get(session: String?) -> RequestBuilder<SessionInfo, SessionInfo.SessionInfoTokenizer, GetTokenizer> {
		let request: RequestBuilder<SessionInfo, SessionInfo.SessionInfoTokenizer, GetTokenizer> = RequestBuilder<SessionInfo, SessionInfo.SessionInfoTokenizer, GetTokenizer>(service: "session", action: "get")
			.setParam(key: "session", value: session)

		return request
	}

	public class ImpersonateTokenizer: ClientTokenizer  {
		
		public var secret: BaseTokenizedObject {
			get {
				return self.append("secret") 
			}
		}
		
		public var impersonatedPartnerId: BaseTokenizedObject {
			get {
				return self.append("impersonatedPartnerId") 
			}
		}
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
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
	}

	public static func impersonate(secret: String, impersonatedPartnerId: Int) -> RequestBuilder<String, BaseTokenizedObject, ImpersonateTokenizer> {
		return impersonate(secret: secret, impersonatedPartnerId: impersonatedPartnerId, userId: "")
	}

	public static func impersonate(secret: String, impersonatedPartnerId: Int, userId: String?) -> RequestBuilder<String, BaseTokenizedObject, ImpersonateTokenizer> {
		return impersonate(secret: secret, impersonatedPartnerId: impersonatedPartnerId, userId: userId, type: SessionType(rawValue: 0))
	}

	public static func impersonate(secret: String, impersonatedPartnerId: Int, userId: String?, type: SessionType?) -> RequestBuilder<String, BaseTokenizedObject, ImpersonateTokenizer> {
		return impersonate(secret: secret, impersonatedPartnerId: impersonatedPartnerId, userId: userId, type: type, partnerId: nil)
	}

	public static func impersonate(secret: String, impersonatedPartnerId: Int, userId: String?, type: SessionType?, partnerId: Int?) -> RequestBuilder<String, BaseTokenizedObject, ImpersonateTokenizer> {
		return impersonate(secret: secret, impersonatedPartnerId: impersonatedPartnerId, userId: userId, type: type, partnerId: partnerId, expiry: 86400)
	}

	public static func impersonate(secret: String, impersonatedPartnerId: Int, userId: String?, type: SessionType?, partnerId: Int?, expiry: Int?) -> RequestBuilder<String, BaseTokenizedObject, ImpersonateTokenizer> {
		return impersonate(secret: secret, impersonatedPartnerId: impersonatedPartnerId, userId: userId, type: type, partnerId: partnerId, expiry: expiry, privileges: nil)
	}

	/**  Start an impersonated session with Kaltura's server.   The result KS is the
	  session key that you should pass to all services that requires a ticket.  */
	public static func impersonate(secret: String, impersonatedPartnerId: Int, userId: String?, type: SessionType?, partnerId: Int?, expiry: Int?, privileges: String?) -> RequestBuilder<String, BaseTokenizedObject, ImpersonateTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, ImpersonateTokenizer> = RequestBuilder<String, BaseTokenizedObject, ImpersonateTokenizer>(service: "session", action: "impersonate")
			.setParam(key: "secret", value: secret)
			.setParam(key: "impersonatedPartnerId", value: impersonatedPartnerId)
			.setParam(key: "userId", value: userId)
			.setParam(key: "type", value: type?.rawValue)
			.setParam(key: "partnerId", value: partnerId)
			.setParam(key: "expiry", value: expiry)
			.setParam(key: "privileges", value: privileges)

		return request
	}

	public class ImpersonateByKsTokenizer: ClientTokenizer  {
		
		public var session: BaseTokenizedObject {
			get {
				return self.append("session") 
			}
		}
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
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

	public static func impersonateByKs(session: String) -> RequestBuilder<SessionInfo, SessionInfo.SessionInfoTokenizer, ImpersonateByKsTokenizer> {
		return impersonateByKs(session: session, type: nil)
	}

	public static func impersonateByKs(session: String, type: SessionType?) -> RequestBuilder<SessionInfo, SessionInfo.SessionInfoTokenizer, ImpersonateByKsTokenizer> {
		return impersonateByKs(session: session, type: type, expiry: nil)
	}

	public static func impersonateByKs(session: String, type: SessionType?, expiry: Int?) -> RequestBuilder<SessionInfo, SessionInfo.SessionInfoTokenizer, ImpersonateByKsTokenizer> {
		return impersonateByKs(session: session, type: type, expiry: expiry, privileges: nil)
	}

	/**  Start an impersonated session with Kaltura's server.   The result KS info
	  contains the session key that you should pass to all services that requires a
	  ticket.   Type, expiry and privileges won't be changed if they're not set  */
	public static func impersonateByKs(session: String, type: SessionType?, expiry: Int?, privileges: String?) -> RequestBuilder<SessionInfo, SessionInfo.SessionInfoTokenizer, ImpersonateByKsTokenizer> {
		let request: RequestBuilder<SessionInfo, SessionInfo.SessionInfoTokenizer, ImpersonateByKsTokenizer> = RequestBuilder<SessionInfo, SessionInfo.SessionInfoTokenizer, ImpersonateByKsTokenizer>(service: "session", action: "impersonateByKs")
			.setParam(key: "session", value: session)
			.setParam(key: "type", value: type?.rawValue)
			.setParam(key: "expiry", value: expiry)
			.setParam(key: "privileges", value: privileges)

		return request
	}

	public class StartTokenizer: ClientTokenizer  {
		
		public var secret: BaseTokenizedObject {
			get {
				return self.append("secret") 
			}
		}
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
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
	}

	public static func start(secret: String) -> RequestBuilder<String, BaseTokenizedObject, StartTokenizer> {
		return start(secret: secret, userId: "")
	}

	public static func start(secret: String, userId: String?) -> RequestBuilder<String, BaseTokenizedObject, StartTokenizer> {
		return start(secret: secret, userId: userId, type: SessionType(rawValue: 0))
	}

	public static func start(secret: String, userId: String?, type: SessionType?) -> RequestBuilder<String, BaseTokenizedObject, StartTokenizer> {
		return start(secret: secret, userId: userId, type: type, partnerId: nil)
	}

	public static func start(secret: String, userId: String?, type: SessionType?, partnerId: Int?) -> RequestBuilder<String, BaseTokenizedObject, StartTokenizer> {
		return start(secret: secret, userId: userId, type: type, partnerId: partnerId, expiry: 86400)
	}

	public static func start(secret: String, userId: String?, type: SessionType?, partnerId: Int?, expiry: Int?) -> RequestBuilder<String, BaseTokenizedObject, StartTokenizer> {
		return start(secret: secret, userId: userId, type: type, partnerId: partnerId, expiry: expiry, privileges: nil)
	}

	/**  Start a session with Kaltura's server.   The result KS is the session key that
	  you should pass to all services that requires a ticket.  */
	public static func start(secret: String, userId: String?, type: SessionType?, partnerId: Int?, expiry: Int?, privileges: String?) -> RequestBuilder<String, BaseTokenizedObject, StartTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, StartTokenizer> = RequestBuilder<String, BaseTokenizedObject, StartTokenizer>(service: "session", action: "start")
			.setParam(key: "secret", value: secret)
			.setParam(key: "userId", value: userId)
			.setParam(key: "type", value: type?.rawValue)
			.setParam(key: "partnerId", value: partnerId)
			.setParam(key: "expiry", value: expiry)
			.setParam(key: "privileges", value: privileges)

		return request
	}

	public class StartWidgetSessionTokenizer: ClientTokenizer  {
		
		public var widgetId: BaseTokenizedObject {
			get {
				return self.append("widgetId") 
			}
		}
		
		public var expiry: BaseTokenizedObject {
			get {
				return self.append("expiry") 
			}
		}
	}

	public static func startWidgetSession(widgetId: String) -> RequestBuilder<StartWidgetSessionResponse, StartWidgetSessionResponse.StartWidgetSessionResponseTokenizer, StartWidgetSessionTokenizer> {
		return startWidgetSession(widgetId: widgetId, expiry: 86400)
	}

	/**  Start a session for Kaltura's flash widgets  */
	public static func startWidgetSession(widgetId: String, expiry: Int?) -> RequestBuilder<StartWidgetSessionResponse, StartWidgetSessionResponse.StartWidgetSessionResponseTokenizer, StartWidgetSessionTokenizer> {
		let request: RequestBuilder<StartWidgetSessionResponse, StartWidgetSessionResponse.StartWidgetSessionResponseTokenizer, StartWidgetSessionTokenizer> = RequestBuilder<StartWidgetSessionResponse, StartWidgetSessionResponse.StartWidgetSessionResponseTokenizer, StartWidgetSessionTokenizer>(service: "session", action: "startWidgetSession")
			.setParam(key: "widgetId", value: widgetId)
			.setParam(key: "expiry", value: expiry)

		return request
	}
}
