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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

public final class WebexVendorService{

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
		let request: NullRequestBuilder<FetchRegistrationPageTokenizer> = NullRequestBuilder<FetchRegistrationPageTokenizer>(service: "webexapidropfolder_webexvendor", action: "fetchRegistrationPage")
			.setParam(key: "tokensData", value: tokensData)
			.setParam(key: "iv", value: iv)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<WebexAPIIntegrationSettingResponse, WebexAPIIntegrationSettingResponse.WebexAPIIntegrationSettingResponseTokenizer, ListTokenizer> {
		return list(pager: nil)
	}

	/**  List KalturaWebexAPIIntegrationSetting objects  */
	public static func list(pager: FilterPager?) -> RequestBuilder<WebexAPIIntegrationSettingResponse, WebexAPIIntegrationSettingResponse.WebexAPIIntegrationSettingResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<WebexAPIIntegrationSettingResponse, WebexAPIIntegrationSettingResponse.WebexAPIIntegrationSettingResponseTokenizer, ListTokenizer> = RequestBuilder<WebexAPIIntegrationSettingResponse, WebexAPIIntegrationSettingResponse.WebexAPIIntegrationSettingResponseTokenizer, ListTokenizer>(service: "webexapidropfolder_webexvendor", action: "list")
			.setParam(key: "pager", value: pager)

		return request
	}

	public class OauthValidationTokenizer: ClientTokenizer  {
	}

	public static func oauthValidation() -> RequestBuilder<String, BaseTokenizedObject, OauthValidationTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, OauthValidationTokenizer> = RequestBuilder<String, BaseTokenizedObject, OauthValidationTokenizer>(service: "webexapidropfolder_webexvendor", action: "oauthValidation")

		return request
	}

	public class PreOauthValidationTokenizer: ClientTokenizer  {
	}

	public static func preOauthValidation() -> NullRequestBuilder<PreOauthValidationTokenizer> {
		let request: NullRequestBuilder<PreOauthValidationTokenizer> = NullRequestBuilder<PreOauthValidationTokenizer>(service: "webexapidropfolder_webexvendor", action: "preOauthValidation")

		return request
	}

	public class SubmitRegistrationTokenizer: ClientTokenizer  {
		
		public var accountId: BaseTokenizedObject {
			get {
				return self.append("accountId") 
			}
		}
		
		public func integrationSetting<T: WebexAPIIntegrationSetting.WebexAPIIntegrationSettingTokenizer>() -> T {
			return T(self.append("integrationSetting"))
		}
	}

	public static func submitRegistration(accountId: String, integrationSetting: WebexAPIIntegrationSetting) -> RequestBuilder<String, BaseTokenizedObject, SubmitRegistrationTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, SubmitRegistrationTokenizer> = RequestBuilder<String, BaseTokenizedObject, SubmitRegistrationTokenizer>(service: "webexapidropfolder_webexvendor", action: "submitRegistration")
			.setParam(key: "accountId", value: accountId)
			.setParam(key: "integrationSetting", value: integrationSetting)

		return request
	}
}
