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
// Copyright (C) 2006-2019  Kaltura Inc.
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

/**  External media service lets you upload and manage embed codes and external
  playable content  */
public final class ExternalMediaService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func entry<T: ExternalMediaEntry.ExternalMediaEntryTokenizer>() -> T {
			return T(self.append("entry"))
		}
	}

	/**  Add external media entry  */
	public static func add(entry: ExternalMediaEntry) -> RequestBuilder<ExternalMediaEntry, ExternalMediaEntry.ExternalMediaEntryTokenizer, AddTokenizer> {
		let request: RequestBuilder<ExternalMediaEntry, ExternalMediaEntry.ExternalMediaEntryTokenizer, AddTokenizer> = RequestBuilder<ExternalMediaEntry, ExternalMediaEntry.ExternalMediaEntryTokenizer, AddTokenizer>(service: "externalmedia_externalmedia", action: "add")
			.setParam(key: "entry", value: entry)

		return request
	}

	public class CountTokenizer: ClientTokenizer  {
		
		public func filter<T: ExternalMediaEntryFilter.ExternalMediaEntryFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	public static func count() -> RequestBuilder<Int, BaseTokenizedObject, CountTokenizer> {
		return count(filter: nil)
	}

	/**  Count media entries by filter.  */
	public static func count(filter: ExternalMediaEntryFilter?) -> RequestBuilder<Int, BaseTokenizedObject, CountTokenizer> {
		let request: RequestBuilder<Int, BaseTokenizedObject, CountTokenizer> = RequestBuilder<Int, BaseTokenizedObject, CountTokenizer>(service: "externalmedia_externalmedia", action: "count")
			.setParam(key: "filter", value: filter)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete a external media entry.  */
	public static func delete(id: String) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "externalmedia_externalmedia", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Get external media entry by ID.  */
	public static func get(id: String) -> RequestBuilder<ExternalMediaEntry, ExternalMediaEntry.ExternalMediaEntryTokenizer, GetTokenizer> {
		let request: RequestBuilder<ExternalMediaEntry, ExternalMediaEntry.ExternalMediaEntryTokenizer, GetTokenizer> = RequestBuilder<ExternalMediaEntry, ExternalMediaEntry.ExternalMediaEntryTokenizer, GetTokenizer>(service: "externalmedia_externalmedia", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: ExternalMediaEntryFilter.ExternalMediaEntryFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<ExternalMediaEntryListResponse, ExternalMediaEntryListResponse.ExternalMediaEntryListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: ExternalMediaEntryFilter?) -> RequestBuilder<ExternalMediaEntryListResponse, ExternalMediaEntryListResponse.ExternalMediaEntryListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List media entries by filter with paging support.  */
	public static func list(filter: ExternalMediaEntryFilter?, pager: FilterPager?) -> RequestBuilder<ExternalMediaEntryListResponse, ExternalMediaEntryListResponse.ExternalMediaEntryListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<ExternalMediaEntryListResponse, ExternalMediaEntryListResponse.ExternalMediaEntryListResponseTokenizer, ListTokenizer> = RequestBuilder<ExternalMediaEntryListResponse, ExternalMediaEntryListResponse.ExternalMediaEntryListResponseTokenizer, ListTokenizer>(service: "externalmedia_externalmedia", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func entry<T: ExternalMediaEntry.ExternalMediaEntryTokenizer>() -> T {
			return T(self.append("entry"))
		}
	}

	/**  Update external media entry. Only the properties that were set will be updated.  */
	public static func update(id: String, entry: ExternalMediaEntry) -> RequestBuilder<ExternalMediaEntry, ExternalMediaEntry.ExternalMediaEntryTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<ExternalMediaEntry, ExternalMediaEntry.ExternalMediaEntryTokenizer, UpdateTokenizer> = RequestBuilder<ExternalMediaEntry, ExternalMediaEntry.ExternalMediaEntryTokenizer, UpdateTokenizer>(service: "externalmedia_externalmedia", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "entry", value: entry)

		return request
	}
}
