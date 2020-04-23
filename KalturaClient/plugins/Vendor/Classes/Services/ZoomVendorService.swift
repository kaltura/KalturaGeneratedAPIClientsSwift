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
// Copyright (C) 2006-2020  Kaltura Inc.
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

public final class ZoomVendorService{

	public class DeAuthorizationTokenizer: ClientTokenizer  {
	}

	public static func deAuthorization() -> RequestBuilder<String, BaseTokenizedObject, DeAuthorizationTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, DeAuthorizationTokenizer> = RequestBuilder<String, BaseTokenizedObject, DeAuthorizationTokenizer>(service: "vendor_zoomvendor", action: "deAuthorization")

		return request
	}

	public class FetchRegistrationPageTokenizer: ClientTokenizer  {
		
		public var tokensData: BaseTokenizedObject {
			get {
				return self.append("tokensData") 
			}
		}
		
		public var iv: BaseTokenizedObject {
			get {
				return self.append("iv") 
			}
		}
	}

	public static func fetchRegistrationPage(tokensData: String, iv: String) -> NullRequestBuilder<FetchRegistrationPageTokenizer> {
		let request: NullRequestBuilder<FetchRegistrationPageTokenizer> = NullRequestBuilder<FetchRegistrationPageTokenizer>(service: "vendor_zoomvendor", action: "fetchRegistrationPage")
			.setParam(key: "tokensData", value: tokensData)
			.setParam(key: "iv", value: iv)

		return request
	}

	public class OauthValidationTokenizer: ClientTokenizer  {
	}

	public static func oauthValidation() -> RequestBuilder<String, BaseTokenizedObject, OauthValidationTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, OauthValidationTokenizer> = RequestBuilder<String, BaseTokenizedObject, OauthValidationTokenizer>(service: "vendor_zoomvendor", action: "oauthValidation")

		return request
	}

	public class RecordingCompleteTokenizer: ClientTokenizer  {
	}

	public static func recordingComplete() -> NullRequestBuilder<RecordingCompleteTokenizer> {
		let request: NullRequestBuilder<RecordingCompleteTokenizer> = NullRequestBuilder<RecordingCompleteTokenizer>(service: "vendor_zoomvendor", action: "recordingComplete")

		return request
	}

	public class SubmitRegistrationTokenizer: ClientTokenizer  {
		
		public var accountId: BaseTokenizedObject {
			get {
				return self.append("accountId") 
			}
		}
		
		public func integrationSetting<T: ZoomIntegrationSetting.ZoomIntegrationSettingTokenizer>() -> T {
			return T(self.append("integrationSetting"))
		}
	}

	public static func submitRegistration(accountId: String, integrationSetting: ZoomIntegrationSetting) -> RequestBuilder<String, BaseTokenizedObject, SubmitRegistrationTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, SubmitRegistrationTokenizer> = RequestBuilder<String, BaseTokenizedObject, SubmitRegistrationTokenizer>(service: "vendor_zoomvendor", action: "submitRegistration")
			.setParam(key: "accountId", value: accountId)
			.setParam(key: "integrationSetting", value: integrationSetting)

		return request
	}
}
