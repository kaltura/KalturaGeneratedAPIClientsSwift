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

public final class VolatileInteractivityService{

	public class AddTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public func kalturaVolatileInteractivity<T: VolatileInteractivity.VolatileInteractivityTokenizer>() -> T {
			return T(self.append("kalturaVolatileInteractivity"))
		}
	}

	/**  add a volatile interactivity object  */
	public static func add(entryId: String, kalturaVolatileInteractivity: VolatileInteractivity) -> RequestBuilder<VolatileInteractivity, VolatileInteractivity.VolatileInteractivityTokenizer, AddTokenizer> {
		let request: RequestBuilder<VolatileInteractivity, VolatileInteractivity.VolatileInteractivityTokenizer, AddTokenizer> = RequestBuilder<VolatileInteractivity, VolatileInteractivity.VolatileInteractivityTokenizer, AddTokenizer>(service: "interactivity_volatileinteractivity", action: "add")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "kalturaVolatileInteractivity", value: kalturaVolatileInteractivity)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
	}

	/**  Delete a volatile interactivity object by entry id  */
	public static func delete(entryId: String) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "interactivity_volatileinteractivity", action: "delete")
			.setParam(key: "entryId", value: entryId)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
	}

	/**  Retrieve a volatile interactivity object by entry id  */
	public static func get(entryId: String) -> RequestBuilder<VolatileInteractivity, VolatileInteractivity.VolatileInteractivityTokenizer, GetTokenizer> {
		let request: RequestBuilder<VolatileInteractivity, VolatileInteractivity.VolatileInteractivityTokenizer, GetTokenizer> = RequestBuilder<VolatileInteractivity, VolatileInteractivity.VolatileInteractivityTokenizer, GetTokenizer>(service: "interactivity_volatileinteractivity", action: "get")
			.setParam(key: "entryId", value: entryId)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var version: BaseTokenizedObject {
			get {
				return self.append("version") 
			}
		}
		
		public func kalturaVolatileInteractivity<T: VolatileInteractivity.VolatileInteractivityTokenizer>() -> T {
			return T(self.append("kalturaVolatileInteractivity"))
		}
	}

	/**  Update a volatile interactivity object  */
	public static func update(entryId: String, version: Int, kalturaVolatileInteractivity: VolatileInteractivity) -> RequestBuilder<VolatileInteractivity, VolatileInteractivity.VolatileInteractivityTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<VolatileInteractivity, VolatileInteractivity.VolatileInteractivityTokenizer, UpdateTokenizer> = RequestBuilder<VolatileInteractivity, VolatileInteractivity.VolatileInteractivityTokenizer, UpdateTokenizer>(service: "interactivity_volatileinteractivity", action: "update")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "version", value: version)
			.setParam(key: "kalturaVolatileInteractivity", value: kalturaVolatileInteractivity)

		return request
	}
}
