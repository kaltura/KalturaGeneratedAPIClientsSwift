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

public final class PlayReadyDrmService{

	public class GenerateKeyTokenizer: ClientTokenizer  {
	}

	/**  Generate key id and content key for PlayReady encryption  */
	public static func generateKey() -> RequestBuilder<PlayReadyContentKey, PlayReadyContentKey.PlayReadyContentKeyTokenizer, GenerateKeyTokenizer> {
		let request: RequestBuilder<PlayReadyContentKey, PlayReadyContentKey.PlayReadyContentKeyTokenizer, GenerateKeyTokenizer> = RequestBuilder<PlayReadyContentKey, PlayReadyContentKey.PlayReadyContentKeyTokenizer, GenerateKeyTokenizer>(service: "playready_playreadydrm", action: "generateKey")

		return request
	}

	public class GetContentKeysTokenizer: ClientTokenizer  {
		
		public var keyIds: BaseTokenizedObject {
			get {
				return self.append("keyIds") 
			}
		}
	}

	/**  Get content keys for input key ids  */
	public static func getContentKeys(keyIds: String) -> ArrayRequestBuilder<PlayReadyContentKey, ArrayTokenizedObject<PlayReadyContentKey.PlayReadyContentKeyTokenizer>, GetContentKeysTokenizer> {
		let request: ArrayRequestBuilder<PlayReadyContentKey, ArrayTokenizedObject<PlayReadyContentKey.PlayReadyContentKeyTokenizer>, GetContentKeysTokenizer> = ArrayRequestBuilder<PlayReadyContentKey, ArrayTokenizedObject<PlayReadyContentKey.PlayReadyContentKeyTokenizer>, GetContentKeysTokenizer>(service: "playready_playreadydrm", action: "getContentKeys")
			.setParam(key: "keyIds", value: keyIds)

		return request
	}

	public class GetEntryContentKeyTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var createIfMissing: BaseTokenizedObject {
			get {
				return self.append("createIfMissing") 
			}
		}
	}

	public static func getEntryContentKey(entryId: String) -> RequestBuilder<PlayReadyContentKey, PlayReadyContentKey.PlayReadyContentKeyTokenizer, GetEntryContentKeyTokenizer> {
		return getEntryContentKey(entryId: entryId, createIfMissing: false)
	}

	/**  Get content key and key id for the given entry  */
	public static func getEntryContentKey(entryId: String, createIfMissing: Bool?) -> RequestBuilder<PlayReadyContentKey, PlayReadyContentKey.PlayReadyContentKeyTokenizer, GetEntryContentKeyTokenizer> {
		let request: RequestBuilder<PlayReadyContentKey, PlayReadyContentKey.PlayReadyContentKeyTokenizer, GetEntryContentKeyTokenizer> = RequestBuilder<PlayReadyContentKey, PlayReadyContentKey.PlayReadyContentKeyTokenizer, GetEntryContentKeyTokenizer>(service: "playready_playreadydrm", action: "getEntryContentKey")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "createIfMissing", value: createIfMissing)

		return request
	}

	public class GetLicenseDetailsTokenizer: ClientTokenizer  {
		
		public var keyId: BaseTokenizedObject {
			get {
				return self.append("keyId") 
			}
		}
		
		public var deviceId: BaseTokenizedObject {
			get {
				return self.append("deviceId") 
			}
		}
		
		public var deviceType: BaseTokenizedObject {
			get {
				return self.append("deviceType") 
			}
		}
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var referrer: BaseTokenizedObject {
			get {
				return self.append("referrer") 
			}
		}
	}

	public static func getLicenseDetails(keyId: String, deviceId: String, deviceType: Int) -> RequestBuilder<PlayReadyLicenseDetails, PlayReadyLicenseDetails.PlayReadyLicenseDetailsTokenizer, GetLicenseDetailsTokenizer> {
		return getLicenseDetails(keyId: keyId, deviceId: deviceId, deviceType: deviceType, entryId: nil)
	}

	public static func getLicenseDetails(keyId: String, deviceId: String, deviceType: Int, entryId: String?) -> RequestBuilder<PlayReadyLicenseDetails, PlayReadyLicenseDetails.PlayReadyLicenseDetailsTokenizer, GetLicenseDetailsTokenizer> {
		return getLicenseDetails(keyId: keyId, deviceId: deviceId, deviceType: deviceType, entryId: entryId, referrer: nil)
	}

	/**  Get Play Ready policy and dates for license creation  */
	public static func getLicenseDetails(keyId: String, deviceId: String, deviceType: Int, entryId: String?, referrer: String?) -> RequestBuilder<PlayReadyLicenseDetails, PlayReadyLicenseDetails.PlayReadyLicenseDetailsTokenizer, GetLicenseDetailsTokenizer> {
		let request: RequestBuilder<PlayReadyLicenseDetails, PlayReadyLicenseDetails.PlayReadyLicenseDetailsTokenizer, GetLicenseDetailsTokenizer> = RequestBuilder<PlayReadyLicenseDetails, PlayReadyLicenseDetails.PlayReadyLicenseDetailsTokenizer, GetLicenseDetailsTokenizer>(service: "playready_playreadydrm", action: "getLicenseDetails")
			.setParam(key: "keyId", value: keyId)
			.setParam(key: "deviceId", value: deviceId)
			.setParam(key: "deviceType", value: deviceType)
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "referrer", value: referrer)

		return request
	}
}
