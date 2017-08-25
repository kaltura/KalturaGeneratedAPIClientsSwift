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

/**  Add &amp; Manage CategoryEntry - assign entry to category  */
public final class CategoryEntryService{

	public class ActivateTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var categoryId: BaseTokenizedObject {
			get {
				return self.append("categoryId") 
			}
		}
	}

	/**  activate CategoryEntry when it is pending moderation  */
	public static func activate(entryId: String, categoryId: Int) -> NullRequestBuilder {
		let request: NullRequestBuilder = NullRequestBuilder(service: "categoryentry", action: "activate")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "categoryId", value: categoryId)

		return request
	}

	public class AddTokenizer: ClientTokenizer  {
		
		public var categoryEntry: CategoryEntry.CategoryEntryTokenizer {
			get {
				return CategoryEntry.CategoryEntryTokenizer(self.append("categoryEntry")) 
			}
		}
	}

	/**  Add new CategoryEntry  */
	public static func add(categoryEntry: CategoryEntry) -> RequestBuilder<CategoryEntry, CategoryEntry.CategoryEntryTokenizer, AddTokenizer> {
		let request: RequestBuilder<CategoryEntry, CategoryEntry.CategoryEntryTokenizer, AddTokenizer> = RequestBuilder<CategoryEntry, CategoryEntry.CategoryEntryTokenizer, AddTokenizer>(service: "categoryentry", action: "add")
			.setBody(key: "categoryEntry", value: categoryEntry)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var categoryId: BaseTokenizedObject {
			get {
				return self.append("categoryId") 
			}
		}
	}

	/**  Delete CategoryEntry  */
	public static func delete(entryId: String, categoryId: Int) -> NullRequestBuilder {
		let request: NullRequestBuilder = NullRequestBuilder(service: "categoryentry", action: "delete")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "categoryId", value: categoryId)

		return request
	}

	public class IndexTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var categoryId: BaseTokenizedObject {
			get {
				return self.append("categoryId") 
			}
		}
		
		public var shouldUpdate: BaseTokenizedObject {
			get {
				return self.append("shouldUpdate") 
			}
		}
	}

	public static func index(entryId: String, categoryId: Int) -> RequestBuilder<Int, BaseTokenizedObject, IndexTokenizer> {
		return index(entryId: entryId, categoryId: categoryId, shouldUpdate: true)
	}

	/**  Index CategoryEntry by Id  */
	public static func index(entryId: String, categoryId: Int, shouldUpdate: Bool?) -> RequestBuilder<Int, BaseTokenizedObject, IndexTokenizer> {
		let request: RequestBuilder<Int, BaseTokenizedObject, IndexTokenizer> = RequestBuilder<Int, BaseTokenizedObject, IndexTokenizer>(service: "categoryentry", action: "index")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "categoryId", value: categoryId)
			.setBody(key: "shouldUpdate", value: shouldUpdate)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public var filter: CategoryEntryFilter.CategoryEntryFilterTokenizer {
			get {
				return CategoryEntryFilter.CategoryEntryFilterTokenizer(self.append("filter")) 
			}
		}
		
		public var pager: FilterPager.FilterPagerTokenizer {
			get {
				return FilterPager.FilterPagerTokenizer(self.append("pager")) 
			}
		}
	}

	public static func list() -> RequestBuilder<CategoryEntryListResponse, CategoryEntryListResponse.CategoryEntryListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: CategoryEntryFilter?) -> RequestBuilder<CategoryEntryListResponse, CategoryEntryListResponse.CategoryEntryListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List all categoryEntry  */
	public static func list(filter: CategoryEntryFilter?, pager: FilterPager?) -> RequestBuilder<CategoryEntryListResponse, CategoryEntryListResponse.CategoryEntryListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<CategoryEntryListResponse, CategoryEntryListResponse.CategoryEntryListResponseTokenizer, ListTokenizer> = RequestBuilder<CategoryEntryListResponse, CategoryEntryListResponse.CategoryEntryListResponseTokenizer, ListTokenizer>(service: "categoryentry", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public class RejectTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var categoryId: BaseTokenizedObject {
			get {
				return self.append("categoryId") 
			}
		}
	}

	/**  activate CategoryEntry when it is pending moderation  */
	public static func reject(entryId: String, categoryId: Int) -> NullRequestBuilder {
		let request: NullRequestBuilder = NullRequestBuilder(service: "categoryentry", action: "reject")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "categoryId", value: categoryId)

		return request
	}

	public class SyncPrivacyContextTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var categoryId: BaseTokenizedObject {
			get {
				return self.append("categoryId") 
			}
		}
	}

	/**  update privacy context from the category  */
	public static func syncPrivacyContext(entryId: String, categoryId: Int) -> NullRequestBuilder {
		let request: NullRequestBuilder = NullRequestBuilder(service: "categoryentry", action: "syncPrivacyContext")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "categoryId", value: categoryId)

		return request
	}
}
