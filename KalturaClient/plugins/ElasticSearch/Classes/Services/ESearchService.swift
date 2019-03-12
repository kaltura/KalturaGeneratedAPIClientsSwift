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

public final class ESearchService{

	public class SearchCategoryTokenizer: ClientTokenizer  {
		
		public func searchParams<T: ESearchCategoryParams.ESearchCategoryParamsTokenizer>() -> T {
			return T(self.append("searchParams"))
		}
		
		public func pager<T: Pager.PagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func searchCategory(searchParams: ESearchCategoryParams) -> RequestBuilder<ESearchCategoryResponse, ESearchCategoryResponse.ESearchCategoryResponseTokenizer, SearchCategoryTokenizer> {
		return searchCategory(searchParams: searchParams, pager: nil)
	}

	public static func searchCategory(searchParams: ESearchCategoryParams, pager: Pager?) -> RequestBuilder<ESearchCategoryResponse, ESearchCategoryResponse.ESearchCategoryResponseTokenizer, SearchCategoryTokenizer> {
		let request: RequestBuilder<ESearchCategoryResponse, ESearchCategoryResponse.ESearchCategoryResponseTokenizer, SearchCategoryTokenizer> = RequestBuilder<ESearchCategoryResponse, ESearchCategoryResponse.ESearchCategoryResponseTokenizer, SearchCategoryTokenizer>(service: "elasticsearch_esearch", action: "searchCategory")
			.setParam(key: "searchParams", value: searchParams)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class SearchEntryTokenizer: ClientTokenizer  {
		
		public func searchParams<T: ESearchEntryParams.ESearchEntryParamsTokenizer>() -> T {
			return T(self.append("searchParams"))
		}
		
		public func pager<T: Pager.PagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func searchEntry(searchParams: ESearchEntryParams) -> RequestBuilder<ESearchEntryResponse, ESearchEntryResponse.ESearchEntryResponseTokenizer, SearchEntryTokenizer> {
		return searchEntry(searchParams: searchParams, pager: nil)
	}

	public static func searchEntry(searchParams: ESearchEntryParams, pager: Pager?) -> RequestBuilder<ESearchEntryResponse, ESearchEntryResponse.ESearchEntryResponseTokenizer, SearchEntryTokenizer> {
		let request: RequestBuilder<ESearchEntryResponse, ESearchEntryResponse.ESearchEntryResponseTokenizer, SearchEntryTokenizer> = RequestBuilder<ESearchEntryResponse, ESearchEntryResponse.ESearchEntryResponseTokenizer, SearchEntryTokenizer>(service: "elasticsearch_esearch", action: "searchEntry")
			.setParam(key: "searchParams", value: searchParams)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class SearchGroupTokenizer: ClientTokenizer  {
		
		public func searchParams<T: ESearchGroupParams.ESearchGroupParamsTokenizer>() -> T {
			return T(self.append("searchParams"))
		}
		
		public func pager<T: Pager.PagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func searchGroup(searchParams: ESearchGroupParams) -> RequestBuilder<ESearchGroupResponse, ESearchGroupResponse.ESearchGroupResponseTokenizer, SearchGroupTokenizer> {
		return searchGroup(searchParams: searchParams, pager: nil)
	}

	public static func searchGroup(searchParams: ESearchGroupParams, pager: Pager?) -> RequestBuilder<ESearchGroupResponse, ESearchGroupResponse.ESearchGroupResponseTokenizer, SearchGroupTokenizer> {
		let request: RequestBuilder<ESearchGroupResponse, ESearchGroupResponse.ESearchGroupResponseTokenizer, SearchGroupTokenizer> = RequestBuilder<ESearchGroupResponse, ESearchGroupResponse.ESearchGroupResponseTokenizer, SearchGroupTokenizer>(service: "elasticsearch_esearch", action: "searchGroup")
			.setParam(key: "searchParams", value: searchParams)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class SearchUserTokenizer: ClientTokenizer  {
		
		public func searchParams<T: ESearchUserParams.ESearchUserParamsTokenizer>() -> T {
			return T(self.append("searchParams"))
		}
		
		public func pager<T: Pager.PagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func searchUser(searchParams: ESearchUserParams) -> RequestBuilder<ESearchUserResponse, ESearchUserResponse.ESearchUserResponseTokenizer, SearchUserTokenizer> {
		return searchUser(searchParams: searchParams, pager: nil)
	}

	public static func searchUser(searchParams: ESearchUserParams, pager: Pager?) -> RequestBuilder<ESearchUserResponse, ESearchUserResponse.ESearchUserResponseTokenizer, SearchUserTokenizer> {
		let request: RequestBuilder<ESearchUserResponse, ESearchUserResponse.ESearchUserResponseTokenizer, SearchUserTokenizer> = RequestBuilder<ESearchUserResponse, ESearchUserResponse.ESearchUserResponseTokenizer, SearchUserTokenizer>(service: "elasticsearch_esearch", action: "searchUser")
			.setParam(key: "searchParams", value: searchParams)
			.setParam(key: "pager", value: pager)

		return request
	}
}
