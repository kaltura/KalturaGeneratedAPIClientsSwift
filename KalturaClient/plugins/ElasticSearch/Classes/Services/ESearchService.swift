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
 * This class was generated using generate.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

public final class ESearchService{

	public class GetAllowedSearchTypesTokenizer: ClientTokenizer  {
		
		public func searchItem<T: ESearchItem.ESearchItemTokenizer>() -> T {
			return T(self.append("searchItem"))
		}
	}

	public static func getAllowedSearchTypes(searchItem: ESearchItem) -> ArrayRequestBuilder<KeyValue, ArrayTokenizedObject<KeyValue.KeyValueTokenizer>, GetAllowedSearchTypesTokenizer> {
		let request: ArrayRequestBuilder<KeyValue, ArrayTokenizedObject<KeyValue.KeyValueTokenizer>, GetAllowedSearchTypesTokenizer> = ArrayRequestBuilder<KeyValue, ArrayTokenizedObject<KeyValue.KeyValueTokenizer>, GetAllowedSearchTypesTokenizer>(service: "elasticsearch_esearch", action: "getAllowedSearchTypes")
			.setBody(key: "searchItem", value: searchItem)

		return request
	}

	public class SearchCategoryTokenizer: ClientTokenizer  {
		
		public func searchParams<T: ESearchParams.ESearchParamsTokenizer>() -> T {
			return T(self.append("searchParams"))
		}
		
		public func pager<T: Pager.PagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func searchCategory(searchParams: ESearchParams) -> RequestBuilder<ESearchResponse, ESearchResponse.ESearchResponseTokenizer, SearchCategoryTokenizer> {
		return searchCategory(searchParams: searchParams, pager: nil)
	}

	public static func searchCategory(searchParams: ESearchParams, pager: Pager?) -> RequestBuilder<ESearchResponse, ESearchResponse.ESearchResponseTokenizer, SearchCategoryTokenizer> {
		let request: RequestBuilder<ESearchResponse, ESearchResponse.ESearchResponseTokenizer, SearchCategoryTokenizer> = RequestBuilder<ESearchResponse, ESearchResponse.ESearchResponseTokenizer, SearchCategoryTokenizer>(service: "elasticsearch_esearch", action: "searchCategory")
			.setBody(key: "searchParams", value: searchParams)
			.setBody(key: "pager", value: pager)

		return request
	}

	public class SearchEntryTokenizer: ClientTokenizer  {
		
		public func searchParams<T: ESearchParams.ESearchParamsTokenizer>() -> T {
			return T(self.append("searchParams"))
		}
		
		public func pager<T: Pager.PagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func searchEntry(searchParams: ESearchParams) -> RequestBuilder<ESearchResponse, ESearchResponse.ESearchResponseTokenizer, SearchEntryTokenizer> {
		return searchEntry(searchParams: searchParams, pager: nil)
	}

	public static func searchEntry(searchParams: ESearchParams, pager: Pager?) -> RequestBuilder<ESearchResponse, ESearchResponse.ESearchResponseTokenizer, SearchEntryTokenizer> {
		let request: RequestBuilder<ESearchResponse, ESearchResponse.ESearchResponseTokenizer, SearchEntryTokenizer> = RequestBuilder<ESearchResponse, ESearchResponse.ESearchResponseTokenizer, SearchEntryTokenizer>(service: "elasticsearch_esearch", action: "searchEntry")
			.setBody(key: "searchParams", value: searchParams)
			.setBody(key: "pager", value: pager)

		return request
	}

	public class SearchUserTokenizer: ClientTokenizer  {
		
		public func searchParams<T: ESearchParams.ESearchParamsTokenizer>() -> T {
			return T(self.append("searchParams"))
		}
		
		public func pager<T: Pager.PagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func searchUser(searchParams: ESearchParams) -> RequestBuilder<ESearchResponse, ESearchResponse.ESearchResponseTokenizer, SearchUserTokenizer> {
		return searchUser(searchParams: searchParams, pager: nil)
	}

	public static func searchUser(searchParams: ESearchParams, pager: Pager?) -> RequestBuilder<ESearchResponse, ESearchResponse.ESearchResponseTokenizer, SearchUserTokenizer> {
		let request: RequestBuilder<ESearchResponse, ESearchResponse.ESearchResponseTokenizer, SearchUserTokenizer> = RequestBuilder<ESearchResponse, ESearchResponse.ESearchResponseTokenizer, SearchUserTokenizer>(service: "elasticsearch_esearch", action: "searchUser")
			.setBody(key: "searchParams", value: searchParams)
			.setBody(key: "pager", value: pager)

		return request
	}
}
