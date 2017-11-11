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
extension CategoryService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func category<T: Category.CategoryTokenizer>() -> T {
			return T(self.append("category"))
		}
	}

	/**  Add new Category  */
	public static func add(category: Category) -> RequestBuilder<Category, Category.CategoryTokenizer, AddTokenizer> {
		let request: RequestBuilder<Category, Category.CategoryTokenizer, AddTokenizer> = RequestBuilder<Category, Category.CategoryTokenizer, AddTokenizer>(service: "category", action: "add")
			.setParam(key: "category", value: category)

		return request
	}

	public class AddFromBulkUploadTokenizer: ClientTokenizer  {
		
		public func bulkUploadData<T: BulkUploadJobData.BulkUploadJobDataTokenizer>() -> T {
			return T(self.append("bulkUploadData"))
		}
		
		public func bulkUploadCategoryData<T: BulkUploadCategoryData.BulkUploadCategoryDataTokenizer>() -> T {
			return T(self.append("bulkUploadCategoryData"))
		}
	}

	public static func addFromBulkUpload(fileData: RequestFile) -> RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AddFromBulkUploadTokenizer> {
		return addFromBulkUpload(fileData: fileData, bulkUploadData: nil)
	}

	public static func addFromBulkUpload(fileData: RequestFile, bulkUploadData: BulkUploadJobData?) -> RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AddFromBulkUploadTokenizer> {
		return addFromBulkUpload(fileData: fileData, bulkUploadData: bulkUploadData, bulkUploadCategoryData: nil)
	}

	public static func addFromBulkUpload(fileData: RequestFile, bulkUploadData: BulkUploadJobData?, bulkUploadCategoryData: BulkUploadCategoryData?) -> RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AddFromBulkUploadTokenizer> {
		let request: RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AddFromBulkUploadTokenizer> = RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AddFromBulkUploadTokenizer>(service: "category", action: "addFromBulkUpload")
			.setFile(key: "fileData", value: fileData)
			.setParam(key: "bulkUploadData", value: bulkUploadData)
			.setParam(key: "bulkUploadCategoryData", value: bulkUploadCategoryData)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var moveEntriesToParentCategory: BaseTokenizedObject {
			get {
				return self.append("moveEntriesToParentCategory") 
			}
		}
	}

	public static func delete(id: Int) -> NullRequestBuilder<DeleteTokenizer> {
		return delete(id: id, moveEntriesToParentCategory: true)
	}

	/**  Delete a Category  */
	public static func delete(id: Int, moveEntriesToParentCategory: Bool?) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "category", action: "delete")
			.setParam(key: "id", value: id)
			.setParam(key: "moveEntriesToParentCategory", value: moveEntriesToParentCategory)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Get Category by id  */
	public static func get(id: Int) -> RequestBuilder<Category, Category.CategoryTokenizer, GetTokenizer> {
		let request: RequestBuilder<Category, Category.CategoryTokenizer, GetTokenizer> = RequestBuilder<Category, Category.CategoryTokenizer, GetTokenizer>(service: "category", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class IndexTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var shouldUpdate: BaseTokenizedObject {
			get {
				return self.append("shouldUpdate") 
			}
		}
	}

	public static func index(id: Int) -> RequestBuilder<Int, BaseTokenizedObject, IndexTokenizer> {
		return index(id: id, shouldUpdate: true)
	}

	/**  Index Category by id  */
	public static func index(id: Int, shouldUpdate: Bool?) -> RequestBuilder<Int, BaseTokenizedObject, IndexTokenizer> {
		let request: RequestBuilder<Int, BaseTokenizedObject, IndexTokenizer> = RequestBuilder<Int, BaseTokenizedObject, IndexTokenizer>(service: "category", action: "index")
			.setParam(key: "id", value: id)
			.setParam(key: "shouldUpdate", value: shouldUpdate)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: CategoryFilter.CategoryFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<CategoryListResponse, CategoryListResponse.CategoryListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: CategoryFilter?) -> RequestBuilder<CategoryListResponse, CategoryListResponse.CategoryListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List all categories  */
	public static func list(filter: CategoryFilter?, pager: FilterPager?) -> RequestBuilder<CategoryListResponse, CategoryListResponse.CategoryListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<CategoryListResponse, CategoryListResponse.CategoryListResponseTokenizer, ListTokenizer> = RequestBuilder<CategoryListResponse, CategoryListResponse.CategoryListResponseTokenizer, ListTokenizer>(service: "category", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class MoveTokenizer: ClientTokenizer  {
		
		public var categoryIds: BaseTokenizedObject {
			get {
				return self.append("categoryIds") 
			}
		}
		
		public var targetCategoryParentId: BaseTokenizedObject {
			get {
				return self.append("targetCategoryParentId") 
			}
		}
	}

	/**  Move categories that belong to the same parent category to a target categroy -
	  enabled only for ks with disable entitlement  */
	public static func move(categoryIds: String, targetCategoryParentId: Int) -> RequestBuilder<Bool, BaseTokenizedObject, MoveTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, MoveTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, MoveTokenizer>(service: "category", action: "move")
			.setParam(key: "categoryIds", value: categoryIds)
			.setParam(key: "targetCategoryParentId", value: targetCategoryParentId)

		return request
	}

	public class UnlockCategoriesTokenizer: ClientTokenizer  {
	}

	/**  Unlock categories  */
	public static func unlockCategories() -> NullRequestBuilder<UnlockCategoriesTokenizer> {
		let request: NullRequestBuilder<UnlockCategoriesTokenizer> = NullRequestBuilder<UnlockCategoriesTokenizer>(service: "category", action: "unlockCategories")

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func category<T: Category.CategoryTokenizer>() -> T {
			return T(self.append("category"))
		}
	}

	/**  Update Category  */
	public static func update(id: Int, category: Category) -> RequestBuilder<Category, Category.CategoryTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<Category, Category.CategoryTokenizer, UpdateTokenizer> = RequestBuilder<Category, Category.CategoryTokenizer, UpdateTokenizer>(service: "category", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "category", value: category)

		return request
	}
}
