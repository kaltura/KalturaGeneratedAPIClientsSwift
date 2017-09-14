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

/**  Search service allows you to search for media in various media providers  This
  service is being used mostly by the CW component  */
public final class SearchService{

	public class ExternalLoginTokenizer: ClientTokenizer  {
		
		public var searchSource: BaseTokenizedObject {
			get {
				return self.append("searchSource") 
			}
		}
		
		public var userName: BaseTokenizedObject {
			get {
				return self.append("userName") 
			}
		}
		
		public var password: BaseTokenizedObject {
			get {
				return self.append("password") 
			}
		}
	}

	public static func externalLogin(searchSource: SearchProviderType, userName: String, password: String) -> RequestBuilder<SearchAuthData, SearchAuthData.SearchAuthDataTokenizer, ExternalLoginTokenizer> {
		let request: RequestBuilder<SearchAuthData, SearchAuthData.SearchAuthDataTokenizer, ExternalLoginTokenizer> = RequestBuilder<SearchAuthData, SearchAuthData.SearchAuthDataTokenizer, ExternalLoginTokenizer>(service: "search", action: "externalLogin")
			.setParam(key: "searchSource", value: searchSource.rawValue)
			.setParam(key: "userName", value: userName)
			.setParam(key: "password", value: password)

		return request
	}

	public class GetMediaInfoTokenizer: ClientTokenizer  {
		
		public func searchResult<T: SearchResult.SearchResultTokenizer>() -> T {
			return T(self.append("searchResult"))
		}
	}

	/**  Retrieve extra information about media found in search action   Some providers
	  return only part of the fields needed to create entry from, use this action to
	  get the rest of the fields.  */
	public static func getMediaInfo(searchResult: SearchResult) -> RequestBuilder<SearchResult, SearchResult.SearchResultTokenizer, GetMediaInfoTokenizer> {
		let request: RequestBuilder<SearchResult, SearchResult.SearchResultTokenizer, GetMediaInfoTokenizer> = RequestBuilder<SearchResult, SearchResult.SearchResultTokenizer, GetMediaInfoTokenizer>(service: "search", action: "getMediaInfo")
			.setParam(key: "searchResult", value: searchResult)

		return request
	}

	public class SearchTokenizer: ClientTokenizer  {
		
		public func search_<T: Search.SearchTokenizer>() -> T {
			return T(self.append("search_"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func search(search_: Search) -> RequestBuilder<SearchResultResponse, SearchResultResponse.SearchResultResponseTokenizer, SearchTokenizer> {
		return search(search_: search_, pager: nil)
	}

	/**  Search for media in one of the supported media providers  */
	public static func search(search_: Search, pager: FilterPager?) -> RequestBuilder<SearchResultResponse, SearchResultResponse.SearchResultResponseTokenizer, SearchTokenizer> {
		let request: RequestBuilder<SearchResultResponse, SearchResultResponse.SearchResultResponseTokenizer, SearchTokenizer> = RequestBuilder<SearchResultResponse, SearchResultResponse.SearchResultResponseTokenizer, SearchTokenizer>(service: "search", action: "search")
			.setParam(key: "search", value: search_)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class SearchUrlTokenizer: ClientTokenizer  {
		
		public var mediaType: BaseTokenizedObject {
			get {
				return self.append("mediaType") 
			}
		}
		
		public var url: BaseTokenizedObject {
			get {
				return self.append("url") 
			}
		}
	}

	/**  Search for media given a specific URL   Kaltura supports a searchURL action on
	  some of the media providers.   This action will return a KalturaSearchResult
	  object based on a given URL (assuming the media provider is supported)  */
	public static func searchUrl(mediaType: MediaType, url: String) -> RequestBuilder<SearchResult, SearchResult.SearchResultTokenizer, SearchUrlTokenizer> {
		let request: RequestBuilder<SearchResult, SearchResult.SearchResultTokenizer, SearchUrlTokenizer> = RequestBuilder<SearchResult, SearchResult.SearchResultTokenizer, SearchUrlTokenizer>(service: "search", action: "searchUrl")
			.setParam(key: "mediaType", value: mediaType.rawValue)
			.setParam(key: "url", value: url)

		return request
	}
}
