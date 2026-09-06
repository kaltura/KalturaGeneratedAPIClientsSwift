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

public final class KeyManagementPolicyService{

	public class GetTokenizer: ClientTokenizer  {
		
		public var objectType: BaseTokenizedObject {
			get {
				return self.append("objectType") 
			}
		}
		
		public var objectId: BaseTokenizedObject {
			get {
				return self.append("objectId") 
			}
		}
	}

	public static func get(objectType: KeyManagementPolicyObjectType, objectId: String) -> RequestBuilder<KeyManagementPolicy, KeyManagementPolicy.KeyManagementPolicyTokenizer, GetTokenizer> {
		let request: RequestBuilder<KeyManagementPolicy, KeyManagementPolicy.KeyManagementPolicyTokenizer, GetTokenizer> = RequestBuilder<KeyManagementPolicy, KeyManagementPolicy.KeyManagementPolicyTokenizer, GetTokenizer>(service: "drm_keymanagementpolicy", action: "get")
			.setParam(key: "objectType", value: objectType.rawValue)
			.setParam(key: "objectId", value: objectId)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var objectType: BaseTokenizedObject {
			get {
				return self.append("objectType") 
			}
		}
		
		public var objectId: BaseTokenizedObject {
			get {
				return self.append("objectId") 
			}
		}
		
		public func keyManagementPolicy<T: KeyManagementPolicy.KeyManagementPolicyTokenizer>() -> T {
			return T(self.append("keyManagementPolicy"))
		}
	}

	public static func update(objectType: KeyManagementPolicyObjectType, objectId: String, keyManagementPolicy: KeyManagementPolicy) -> RequestBuilder<KeyManagementPolicy, KeyManagementPolicy.KeyManagementPolicyTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<KeyManagementPolicy, KeyManagementPolicy.KeyManagementPolicyTokenizer, UpdateTokenizer> = RequestBuilder<KeyManagementPolicy, KeyManagementPolicy.KeyManagementPolicyTokenizer, UpdateTokenizer>(service: "drm_keymanagementpolicy", action: "update")
			.setParam(key: "objectType", value: objectType.rawValue)
			.setParam(key: "objectId", value: objectId)
			.setParam(key: "keyManagementPolicy", value: keyManagementPolicy)

		return request
	}
}
