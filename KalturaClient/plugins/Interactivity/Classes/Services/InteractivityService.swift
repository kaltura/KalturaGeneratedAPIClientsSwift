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

public final class InteractivityService{

	public class AddTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public func kalturaInteractivity<T: Interactivity.InteractivityTokenizer>() -> T {
			return T(self.append("kalturaInteractivity"))
		}
	}

	/**  Add a interactivity object  */
	public static func add(entryId: String, kalturaInteractivity: Interactivity) -> RequestBuilder<Interactivity, Interactivity.InteractivityTokenizer, AddTokenizer> {
		let request: RequestBuilder<Interactivity, Interactivity.InteractivityTokenizer, AddTokenizer> = RequestBuilder<Interactivity, Interactivity.InteractivityTokenizer, AddTokenizer>(service: "interactivity_interactivity", action: "add")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "kalturaInteractivity", value: kalturaInteractivity)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
	}

	/**  Delete a interactivity object by entry id  */
	public static func delete(entryId: String) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "interactivity_interactivity", action: "delete")
			.setParam(key: "entryId", value: entryId)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public func dataFilter<T: InteractivityDataFilter.InteractivityDataFilterTokenizer>() -> T {
			return T(self.append("dataFilter"))
		}
	}

	public static func get(entryId: String) -> RequestBuilder<Interactivity, Interactivity.InteractivityTokenizer, GetTokenizer> {
		return get(entryId: entryId, dataFilter: nil)
	}

	/**  Retrieve a interactivity object by entry id  */
	public static func get(entryId: String, dataFilter: InteractivityDataFilter?) -> RequestBuilder<Interactivity, Interactivity.InteractivityTokenizer, GetTokenizer> {
		let request: RequestBuilder<Interactivity, Interactivity.InteractivityTokenizer, GetTokenizer> = RequestBuilder<Interactivity, Interactivity.InteractivityTokenizer, GetTokenizer>(service: "interactivity_interactivity", action: "get")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "dataFilter", value: dataFilter)

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
		
		public func kalturaInteractivity<T: Interactivity.InteractivityTokenizer>() -> T {
			return T(self.append("kalturaInteractivity"))
		}
	}

	/**  Update an existing interactivity object  */
	public static func update(entryId: String, version: Int, kalturaInteractivity: Interactivity) -> RequestBuilder<Interactivity, Interactivity.InteractivityTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<Interactivity, Interactivity.InteractivityTokenizer, UpdateTokenizer> = RequestBuilder<Interactivity, Interactivity.InteractivityTokenizer, UpdateTokenizer>(service: "interactivity_interactivity", action: "update")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "version", value: version)
			.setParam(key: "kalturaInteractivity", value: kalturaInteractivity)

		return request
	}
}
