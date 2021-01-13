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

/**  System service is used for internal system helpers &amp; to retrieve system
  level information  */
public final class SystemService{

	public class GetHealthCheckTokenizer: ClientTokenizer  {
	}

	public static func getHealthCheck() -> RequestBuilder<String, BaseTokenizedObject, GetHealthCheckTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, GetHealthCheckTokenizer> = RequestBuilder<String, BaseTokenizedObject, GetHealthCheckTokenizer>(service: "system", action: "getHealthCheck")

		return request
	}

	public class GetTimeTokenizer: ClientTokenizer  {
	}

	public static func getTime() -> RequestBuilder<Int, BaseTokenizedObject, GetTimeTokenizer> {
		let request: RequestBuilder<Int, BaseTokenizedObject, GetTimeTokenizer> = RequestBuilder<Int, BaseTokenizedObject, GetTimeTokenizer>(service: "system", action: "getTime")

		return request
	}

	public class GetVersionTokenizer: ClientTokenizer  {
	}

	public static func getVersion() -> RequestBuilder<String, BaseTokenizedObject, GetVersionTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, GetVersionTokenizer> = RequestBuilder<String, BaseTokenizedObject, GetVersionTokenizer>(service: "system", action: "getVersion")

		return request
	}

	public class PingTokenizer: ClientTokenizer  {
	}

	public static func ping() -> RequestBuilder<Bool, BaseTokenizedObject, PingTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, PingTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, PingTokenizer>(service: "system", action: "ping")

		return request
	}

	public class PingDatabaseTokenizer: ClientTokenizer  {
	}

	public static func pingDatabase() -> RequestBuilder<Bool, BaseTokenizedObject, PingDatabaseTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, PingDatabaseTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, PingDatabaseTokenizer>(service: "system", action: "pingDatabase")

		return request
	}
}
