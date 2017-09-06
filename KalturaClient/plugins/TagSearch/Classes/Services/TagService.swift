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

/**  Search object tags  */
public final class TagService{

	public class DeletePendingTokenizer: ClientTokenizer  {
	}

	/**  Action goes over all tags with instanceCount==0 and checks whether they need to
	  be removed from the DB. Returns number of removed tags.  */
	public static func deletePending() -> RequestBuilder<Int, BaseTokenizedObject, DeletePendingTokenizer> {
		let request: RequestBuilder<Int, BaseTokenizedObject, DeletePendingTokenizer> = RequestBuilder<Int, BaseTokenizedObject, DeletePendingTokenizer>(service: "tagsearch_tag", action: "deletePending")

		return request
	}

	public class IndexCategoryEntryTagsTokenizer: ClientTokenizer  {
		
		public var categoryId: BaseTokenizedObject {
			get {
				return self.append("categoryId") 
			}
		}
		
		public var pcToDecrement: BaseTokenizedObject {
			get {
				return self.append("pcToDecrement") 
			}
		}
		
		public var pcToIncrement: BaseTokenizedObject {
			get {
				return self.append("pcToIncrement") 
			}
		}
	}

	public static func indexCategoryEntryTags(categoryId: Int, pcToDecrement: String, pcToIncrement: String) -> NullRequestBuilder<IndexCategoryEntryTagsTokenizer> {
		let request: NullRequestBuilder<IndexCategoryEntryTagsTokenizer> = NullRequestBuilder<IndexCategoryEntryTagsTokenizer>(service: "tagsearch_tag", action: "indexCategoryEntryTags")
			.setBody(key: "categoryId", value: categoryId)
			.setBody(key: "pcToDecrement", value: pcToDecrement)
			.setBody(key: "pcToIncrement", value: pcToIncrement)

		return request
	}

	public class SearchTokenizer: ClientTokenizer  {
		
		public func tagFilter<T: TagFilter.TagFilterTokenizer>() -> T {
			return T(self.append("tagFilter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func search(tagFilter: TagFilter) -> RequestBuilder<TagListResponse, TagListResponse.TagListResponseTokenizer, SearchTokenizer> {
		return search(tagFilter: tagFilter, pager: nil)
	}

	public static func search(tagFilter: TagFilter, pager: FilterPager?) -> RequestBuilder<TagListResponse, TagListResponse.TagListResponseTokenizer, SearchTokenizer> {
		let request: RequestBuilder<TagListResponse, TagListResponse.TagListResponseTokenizer, SearchTokenizer> = RequestBuilder<TagListResponse, TagListResponse.TagListResponseTokenizer, SearchTokenizer>(service: "tagsearch_tag", action: "search")
			.setBody(key: "tagFilter", value: tagFilter)
			.setBody(key: "pager", value: pager)

		return request
	}
}
