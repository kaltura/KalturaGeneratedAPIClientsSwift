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

/**  WidevineDrmService serves as a license proxy to a Widevine license server  */
public final class WidevineDrmService{

	public class GetLicenseTokenizer: ClientTokenizer  {
		
		public var flavorAssetId: BaseTokenizedObject {
			get {
				return self.append("flavorAssetId") 
			}
		}
		
		public var referrer: BaseTokenizedObject {
			get {
				return self.append("referrer") 
			}
		}
	}

	public static func getLicense(flavorAssetId: String) -> RequestBuilder<String, BaseTokenizedObject, GetLicenseTokenizer> {
		return getLicense(flavorAssetId: flavorAssetId, referrer: nil)
	}

	/**  Get license for encrypted content playback  */
	public static func getLicense(flavorAssetId: String, referrer: String?) -> RequestBuilder<String, BaseTokenizedObject, GetLicenseTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, GetLicenseTokenizer> = RequestBuilder<String, BaseTokenizedObject, GetLicenseTokenizer>(service: "widevine_widevinedrm", action: "getLicense")
			.setParam(key: "flavorAssetId", value: flavorAssetId)
			.setParam(key: "referrer", value: referrer)

		return request
	}
}
