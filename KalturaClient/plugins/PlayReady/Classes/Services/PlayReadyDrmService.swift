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

public final class PlayReadyDrmService{

	/**  Generate key id and content key for PlayReady encryption  */
	public static func generateKey() -> RequestBuilder<PlayReadyContentKey> {
		let request: RequestBuilder<PlayReadyContentKey> = RequestBuilder<PlayReadyContentKey>(service: "playready_playreadydrm", action: "generateKey")

		return request
	}

	/**  Get content keys for input key ids  */
	public static func getContentKeys(keyIds: String) -> RequestBuilder<Array<PlayReadyContentKey>> {
		let request: ArrayRequestBuilder<PlayReadyContentKey> = ArrayRequestBuilder<PlayReadyContentKey>(service: "playready_playreadydrm", action: "getContentKeys")
			.setBody(key: "keyIds", value: keyIds)

		return request
	}

	public static func getEntryContentKey(entryId: String) -> RequestBuilder<PlayReadyContentKey> {
		return getEntryContentKey(entryId: entryId, createIfMissing: false)
	}

	/**  Get content key and key id for the given entry  */
	public static func getEntryContentKey(entryId: String, createIfMissing: Bool?) -> RequestBuilder<PlayReadyContentKey> {
		let request: RequestBuilder<PlayReadyContentKey> = RequestBuilder<PlayReadyContentKey>(service: "playready_playreadydrm", action: "getEntryContentKey")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "createIfMissing", value: createIfMissing)

		return request
	}

	public static func getLicenseDetails(keyId: String, deviceId: String, deviceType: Int) -> RequestBuilder<PlayReadyLicenseDetails> {
		return getLicenseDetails(keyId: keyId, deviceId: deviceId, deviceType: deviceType, entryId: nil)
	}

	public static func getLicenseDetails(keyId: String, deviceId: String, deviceType: Int, entryId: String?) -> RequestBuilder<PlayReadyLicenseDetails> {
		return getLicenseDetails(keyId: keyId, deviceId: deviceId, deviceType: deviceType, entryId: entryId, referrer: nil)
	}

	/**  Get Play Ready policy and dates for license creation  */
	public static func getLicenseDetails(keyId: String, deviceId: String, deviceType: Int, entryId: String?, referrer: String?) -> RequestBuilder<PlayReadyLicenseDetails> {
		let request: RequestBuilder<PlayReadyLicenseDetails> = RequestBuilder<PlayReadyLicenseDetails>(service: "playready_playreadydrm", action: "getLicenseDetails")
			.setBody(key: "keyId", value: keyId)
			.setBody(key: "deviceId", value: deviceId)
			.setBody(key: "deviceType", value: deviceType)
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "referrer", value: referrer)

		return request
	}
}
