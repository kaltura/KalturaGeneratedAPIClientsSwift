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

/**  Add &amp; Manage Categories  */
public final class CategoryService{

	/**  Add new Category  */
	public static func add(category: Category) -> RequestBuilder<Category> {
		let request: RequestBuilder<Category> = RequestBuilder<Category>(service: "category", action: "add")
			.setBody(key: "category", value: category)

		return request
	}

	public static func delete(id: Int) -> RequestBuilder<Void> {
		return delete(id: id, moveEntriesToParentCategory: true)
	}

	/**  Delete a Category  */
	public static func delete(id: Int, moveEntriesToParentCategory: Bool?) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "category", action: "delete")
			.setBody(key: "id", value: id)
			.setBody(key: "moveEntriesToParentCategory", value: moveEntriesToParentCategory)

		return request
	}

	/**  Get Category by id  */
	public static func get(id: Int) -> RequestBuilder<Category> {
		let request: RequestBuilder<Category> = RequestBuilder<Category>(service: "category", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public static func index(id: Int) -> RequestBuilder<Int> {
		return index(id: id, shouldUpdate: true)
	}

	/**  Index Category by id  */
	public static func index(id: Int, shouldUpdate: Bool?) -> RequestBuilder<Int> {
		let request: RequestBuilder<Int> = RequestBuilder<Int>(service: "category", action: "index")
			.setBody(key: "id", value: id)
			.setBody(key: "shouldUpdate", value: shouldUpdate)

		return request
	}

	public static func list() -> RequestBuilder<CategoryListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: CategoryFilter?) -> RequestBuilder<CategoryListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List all categories  */
	public static func list(filter: CategoryFilter?, pager: FilterPager?) -> RequestBuilder<CategoryListResponse> {
		let request: RequestBuilder<CategoryListResponse> = RequestBuilder<CategoryListResponse>(service: "category", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Move categories that belong to the same parent category to a target categroy -
	  enabled only for ks with disable entitlement  */
	public static func move(categoryIds: String, targetCategoryParentId: Int) -> RequestBuilder<CategoryListResponse> {
		let request: RequestBuilder<CategoryListResponse> = RequestBuilder<CategoryListResponse>(service: "category", action: "move")
			.setBody(key: "categoryIds", value: categoryIds)
			.setBody(key: "targetCategoryParentId", value: targetCategoryParentId)

		return request
	}

	/**  Unlock categories  */
	public static func unlockCategories() -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "category", action: "unlockCategories")

		return request
	}

	/**  Update Category  */
	public static func update(id: Int, category: Category) -> RequestBuilder<Category> {
		let request: RequestBuilder<Category> = RequestBuilder<Category>(service: "category", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "category", value: category)

		return request
	}
}
