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
 * This class was generated using generate.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

public final class PexipService{

	public class GenerateSipUrlTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var regenerate: BaseTokenizedObject {
			get {
				return self.append("regenerate") 
			}
		}
		
		public var sourceType: BaseTokenizedObject {
			get {
				return self.append("sourceType") 
			}
		}
	}

	public static func generateSipUrl(entryId: String) -> RequestBuilder<String, BaseTokenizedObject, GenerateSipUrlTokenizer> {
		return generateSipUrl(entryId: entryId, regenerate: false)
	}

	public static func generateSipUrl(entryId: String, regenerate: Bool?) -> RequestBuilder<String, BaseTokenizedObject, GenerateSipUrlTokenizer> {
		return generateSipUrl(entryId: entryId, regenerate: regenerate, sourceType: SipSourceType(rawValue: 1))
	}

	public static func generateSipUrl(entryId: String, regenerate: Bool?, sourceType: SipSourceType?) -> RequestBuilder<String, BaseTokenizedObject, GenerateSipUrlTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, GenerateSipUrlTokenizer> = RequestBuilder<String, BaseTokenizedObject, GenerateSipUrlTokenizer>(service: "sip_pexip", action: "generateSipUrl")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "regenerate", value: regenerate)
			.setParam(key: "sourceType", value: sourceType?.rawValue)

		return request
	}

	public class HandleIncomingCallTokenizer: ClientTokenizer  {
	}

	public static func handleIncomingCall() -> NullRequestBuilder<HandleIncomingCallTokenizer> {
		let request: NullRequestBuilder<HandleIncomingCallTokenizer> = NullRequestBuilder<HandleIncomingCallTokenizer>(service: "sip_pexip", action: "handleIncomingCall")

		return request
	}

	public class ListRoomsTokenizer: ClientTokenizer  {
		
		public var offset: BaseTokenizedObject {
			get {
				return self.append("offset") 
			}
		}
		
		public var pageSize: BaseTokenizedObject {
			get {
				return self.append("pageSize") 
			}
		}
		
		public var activeOnly: BaseTokenizedObject {
			get {
				return self.append("activeOnly") 
			}
		}
	}

	public static func listRooms() -> ArrayRequestBuilder<StringValue, ArrayTokenizedObject<StringValue.StringValueTokenizer>, ListRoomsTokenizer> {
		return listRooms(offset: 0)
	}

	public static func listRooms(offset: Int?) -> ArrayRequestBuilder<StringValue, ArrayTokenizedObject<StringValue.StringValueTokenizer>, ListRoomsTokenizer> {
		return listRooms(offset: offset, pageSize: 500)
	}

	public static func listRooms(offset: Int?, pageSize: Int?) -> ArrayRequestBuilder<StringValue, ArrayTokenizedObject<StringValue.StringValueTokenizer>, ListRoomsTokenizer> {
		return listRooms(offset: offset, pageSize: pageSize, activeOnly: false)
	}

	public static func listRooms(offset: Int?, pageSize: Int?, activeOnly: Bool?) -> ArrayRequestBuilder<StringValue, ArrayTokenizedObject<StringValue.StringValueTokenizer>, ListRoomsTokenizer> {
		let request: ArrayRequestBuilder<StringValue, ArrayTokenizedObject<StringValue.StringValueTokenizer>, ListRoomsTokenizer> = ArrayRequestBuilder<StringValue, ArrayTokenizedObject<StringValue.StringValueTokenizer>, ListRoomsTokenizer>(service: "sip_pexip", action: "listRooms")
			.setParam(key: "offset", value: offset)
			.setParam(key: "pageSize", value: pageSize)
			.setParam(key: "activeOnly", value: activeOnly)

		return request
	}
}
