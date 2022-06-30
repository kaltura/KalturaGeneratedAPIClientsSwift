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
// Copyright (C) 2006-2022  Kaltura Inc.
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

	public class GetTokenizer: ClientTokenizer  {
		
		public override var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
	}

	/**  Retrieve zoom integration setting object by partner id  */
	public static func get(partnerId: Int) -> RequestBuilder<ZoomIntegrationSetting, ZoomIntegrationSetting.ZoomIntegrationSettingTokenizer, GetTokenizer> {
		let request: RequestBuilder<ZoomIntegrationSetting, ZoomIntegrationSetting.ZoomIntegrationSettingTokenizer, GetTokenizer> = RequestBuilder<ZoomIntegrationSetting, ZoomIntegrationSetting.ZoomIntegrationSettingTokenizer, GetTokenizer>(service: "vendor_zoomvendor", action: "get")
			.setParam(key: "partnerId", value: partnerId)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<ZoomIntegrationSettingResponse, ZoomIntegrationSettingResponse.ZoomIntegrationSettingResponseTokenizer, ListTokenizer> {
		return list(pager: nil)
	}

	/**  List KalturaZoomIntegrationSetting objects  */
	public static func list(pager: FilterPager?) -> RequestBuilder<ZoomIntegrationSettingResponse, ZoomIntegrationSettingResponse.ZoomIntegrationSettingResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<ZoomIntegrationSettingResponse, ZoomIntegrationSettingResponse.ZoomIntegrationSettingResponseTokenizer, ListTokenizer> = RequestBuilder<ZoomIntegrationSettingResponse, ZoomIntegrationSettingResponse.ZoomIntegrationSettingResponseTokenizer, ListTokenizer>(service: "vendor_zoomvendor", action: "list")
			.setParam(key: "pager", value: pager)

		return request
	}

	public class LocalRegistrationPageTokenizer: ClientTokenizer  {
		
		public var jwt: BaseTokenizedObject {
			get {
				return self.append("jwt") 
			}
		}
	}

	public static func localRegistrationPage(jwt: String) -> NullRequestBuilder<LocalRegistrationPageTokenizer> {
		let request: NullRequestBuilder<LocalRegistrationPageTokenizer> = NullRequestBuilder<LocalRegistrationPageTokenizer>(service: "vendor_zoomvendor", action: "localRegistrationPage")
			.setParam(key: "jwt", value: jwt)

		return request
	}

	public class OauthValidationTokenizer: ClientTokenizer  {
	}

	/**  load html page the that will ask the user for its KMC URL, derive the region of
	  the user from it,   and redirect to the registration page in the correct region,
	  while forwarding the necessary code for registration  */
	public static func oauthValidation() -> NullRequestBuilder<OauthValidationTokenizer> {
		let request: NullRequestBuilder<OauthValidationTokenizer> = NullRequestBuilder<OauthValidationTokenizer>(service: "vendor_zoomvendor", action: "oauthValidation")

		return request
	}

	public class PreOauthValidationTokenizer: ClientTokenizer  {
	}

	public static func preOauthValidation() -> RequestBuilder<String, BaseTokenizedObject, PreOauthValidationTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, PreOauthValidationTokenizer> = RequestBuilder<String, BaseTokenizedObject, PreOauthValidationTokenizer>(service: "vendor_zoomvendor", action: "preOauthValidation")

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
