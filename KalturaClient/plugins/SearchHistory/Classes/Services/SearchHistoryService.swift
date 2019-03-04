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

public final class SearchHistoryService{

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var searchTerm: BaseTokenizedObject {
			get {
				return self.append("searchTerm") 
			}
		}
	}

	public static func delete(searchTerm: String) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "searchhistory_searchhistory", action: "delete")
			.setParam(key: "searchTerm", value: searchTerm)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: ESearchHistoryFilter.ESearchHistoryFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	public static func list() -> RequestBuilder<ESearchHistoryListResponse, ESearchHistoryListResponse.ESearchHistoryListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: ESearchHistoryFilter?) -> RequestBuilder<ESearchHistoryListResponse, ESearchHistoryListResponse.ESearchHistoryListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<ESearchHistoryListResponse, ESearchHistoryListResponse.ESearchHistoryListResponseTokenizer, ListTokenizer> = RequestBuilder<ESearchHistoryListResponse, ESearchHistoryListResponse.ESearchHistoryListResponseTokenizer, ListTokenizer>(service: "searchhistory_searchhistory", action: "list")
			.setParam(key: "filter", value: filter)

		return request
	}
}
