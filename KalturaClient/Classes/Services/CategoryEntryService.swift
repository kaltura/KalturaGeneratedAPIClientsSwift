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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

/**  Add &amp; Manage CategoryEntry - assign entry to category  */
public final class CategoryEntryService{

	/**  activate CategoryEntry when it is pending moderation  */
	public static func activate(entryId: String, categoryId: Int) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "categoryentry", action: "activate")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "categoryId", value: categoryId)

		return request
	}

	/**  Add new CategoryEntry  */
	public static func add(categoryEntry: CategoryEntry) -> RequestBuilder<CategoryEntry> {
		let request: RequestBuilder<CategoryEntry> = RequestBuilder<CategoryEntry>(service: "categoryentry", action: "add")
			.setBody(key: "categoryEntry", value: categoryEntry)

		return request
	}

	/**  Delete CategoryEntry  */
	public static func delete(entryId: String, categoryId: Int) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "categoryentry", action: "delete")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "categoryId", value: categoryId)

		return request
	}

	public static func index(entryId: String, categoryId: Int) -> RequestBuilder<Int> {
		return index(entryId: entryId, categoryId: categoryId, shouldUpdate: true)
	}

	/**  Index CategoryEntry by Id  */
	public static func index(entryId: String, categoryId: Int, shouldUpdate: Bool?) -> RequestBuilder<Int> {
		let request: RequestBuilder<Int> = RequestBuilder<Int>(service: "categoryentry", action: "index")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "categoryId", value: categoryId)
			.setBody(key: "shouldUpdate", value: shouldUpdate)

		return request
	}

	public static func list() -> RequestBuilder<CategoryEntryListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: CategoryEntryFilter?) -> RequestBuilder<CategoryEntryListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List all categoryEntry  */
	public static func list(filter: CategoryEntryFilter?, pager: FilterPager?) -> RequestBuilder<CategoryEntryListResponse> {
		let request: RequestBuilder<CategoryEntryListResponse> = RequestBuilder<CategoryEntryListResponse>(service: "categoryentry", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  activate CategoryEntry when it is pending moderation  */
	public static func reject(entryId: String, categoryId: Int) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "categoryentry", action: "reject")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "categoryId", value: categoryId)

		return request
	}

	/**  update privacy context from the category  */
	public static func syncPrivacyContext(entryId: String, categoryId: Int) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "categoryentry", action: "syncPrivacyContext")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "categoryId", value: categoryId)

		return request
	}
}
