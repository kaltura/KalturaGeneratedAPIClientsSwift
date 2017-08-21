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

	public static func externalLogin(searchSource: SearchProviderType, userName: String, password: String) -> RequestBuilder<SearchAuthData> {
		let request: RequestBuilder<SearchAuthData> = RequestBuilder<SearchAuthData>(service: "search", action: "externalLogin")
			.setBody(key: "searchSource", value: searchSource.rawValue)
			.setBody(key: "userName", value: userName)
			.setBody(key: "password", value: password)

		return request
	}

	/**  Retrieve extra information about media found in search action   Some providers
	  return only part of the fields needed to create entry from, use this action to
	  get the rest of the fields.  */
	public static func getMediaInfo(searchResult: SearchResult) -> RequestBuilder<SearchResult> {
		let request: RequestBuilder<SearchResult> = RequestBuilder<SearchResult>(service: "search", action: "getMediaInfo")
			.setBody(key: "searchResult", value: searchResult)

		return request
	}

	public static func search(search_: Search) -> RequestBuilder<SearchResultResponse> {
		return search(search_: search_, pager: nil)
	}

	/**  Search for media in one of the supported media providers  */
	public static func search(search_: Search, pager: FilterPager?) -> RequestBuilder<SearchResultResponse> {
		let request: RequestBuilder<SearchResultResponse> = RequestBuilder<SearchResultResponse>(service: "search", action: "search")
			.setBody(key: "search", value: search_)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Search for media given a specific URL   Kaltura supports a searchURL action on
	  some of the media providers.   This action will return a KalturaSearchResult
	  object based on a given URL (assuming the media provider is supported)  */
	public static func searchUrl(mediaType: MediaType, url: String) -> RequestBuilder<SearchResult> {
		let request: RequestBuilder<SearchResult> = RequestBuilder<SearchResult>(service: "search", action: "searchUrl")
			.setBody(key: "mediaType", value: mediaType.rawValue)
			.setBody(key: "url", value: url)

		return request
	}
}
