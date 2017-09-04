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

/**  Add &amp; Manage CategoryUser - membership of a user in a category  */
extension CategoryUserService{

	public class ActivateTokenizer: ClientTokenizer  {
		
		public var categoryId: BaseTokenizedObject {
			get {
				return self.append("categoryId") 
			}
		}
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
	}

	/**  activate CategoryUser  */
	public static func activate(categoryId: Int, userId: String) -> RequestBuilder<CategoryUser, CategoryUser.CategoryUserTokenizer, ActivateTokenizer> {
		let request: RequestBuilder<CategoryUser, CategoryUser.CategoryUserTokenizer, ActivateTokenizer> = RequestBuilder<CategoryUser, CategoryUser.CategoryUserTokenizer, ActivateTokenizer>(service: "categoryuser", action: "activate")
			.setBody(key: "categoryId", value: categoryId)
			.setBody(key: "userId", value: userId)

		return request
	}

	public class AddTokenizer: ClientTokenizer  {
		
		public func categoryUser<T: CategoryUser.CategoryUserTokenizer>() -> T {
			return T(self.append("categoryUser"))
		}
	}

	/**  Add new CategoryUser  */
	public static func add(categoryUser: CategoryUser) -> RequestBuilder<CategoryUser, CategoryUser.CategoryUserTokenizer, AddTokenizer> {
		let request: RequestBuilder<CategoryUser, CategoryUser.CategoryUserTokenizer, AddTokenizer> = RequestBuilder<CategoryUser, CategoryUser.CategoryUserTokenizer, AddTokenizer>(service: "categoryuser", action: "add")
			.setBody(key: "categoryUser", value: categoryUser)

		return request
	}

	public class AddFromBulkUploadTokenizer: ClientTokenizer  {
		
		public func bulkUploadData<T: BulkUploadJobData.BulkUploadJobDataTokenizer>() -> T {
			return T(self.append("bulkUploadData"))
		}
		
		public func bulkUploadCategoryUserData<T: BulkUploadCategoryUserData.BulkUploadCategoryUserDataTokenizer>() -> T {
			return T(self.append("bulkUploadCategoryUserData"))
		}
	}

	public static func addFromBulkUpload(fileData: RequestFile) -> RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AddFromBulkUploadTokenizer> {
		return addFromBulkUpload(fileData: fileData, bulkUploadData: nil)
	}

	public static func addFromBulkUpload(fileData: RequestFile, bulkUploadData: BulkUploadJobData?) -> RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AddFromBulkUploadTokenizer> {
		return addFromBulkUpload(fileData: fileData, bulkUploadData: bulkUploadData, bulkUploadCategoryUserData: nil)
	}

	public static func addFromBulkUpload(fileData: RequestFile, bulkUploadData: BulkUploadJobData?, bulkUploadCategoryUserData: BulkUploadCategoryUserData?) -> RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AddFromBulkUploadTokenizer> {
		let request: RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AddFromBulkUploadTokenizer> = RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AddFromBulkUploadTokenizer>(service: "categoryuser", action: "addFromBulkUpload")
			.setFile(key: "fileData", value: fileData)
			.setBody(key: "bulkUploadData", value: bulkUploadData)
			.setBody(key: "bulkUploadCategoryUserData", value: bulkUploadCategoryUserData)

		return request
	}

	public class CopyFromCategoryTokenizer: ClientTokenizer  {
		
		public var categoryId: BaseTokenizedObject {
			get {
				return self.append("categoryId") 
			}
		}
	}

	/**  Copy all memeber from parent category  */
	public static func copyFromCategory(categoryId: Int) -> NullRequestBuilder {
		let request: NullRequestBuilder = NullRequestBuilder(service: "categoryuser", action: "copyFromCategory")
			.setBody(key: "categoryId", value: categoryId)

		return request
	}

	public class DeactivateTokenizer: ClientTokenizer  {
		
		public var categoryId: BaseTokenizedObject {
			get {
				return self.append("categoryId") 
			}
		}
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
	}

	/**  reject CategoryUser  */
	public static func deactivate(categoryId: Int, userId: String) -> RequestBuilder<CategoryUser, CategoryUser.CategoryUserTokenizer, DeactivateTokenizer> {
		let request: RequestBuilder<CategoryUser, CategoryUser.CategoryUserTokenizer, DeactivateTokenizer> = RequestBuilder<CategoryUser, CategoryUser.CategoryUserTokenizer, DeactivateTokenizer>(service: "categoryuser", action: "deactivate")
			.setBody(key: "categoryId", value: categoryId)
			.setBody(key: "userId", value: userId)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var categoryId: BaseTokenizedObject {
			get {
				return self.append("categoryId") 
			}
		}
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
	}

	/**  Delete a CategoryUser  */
	public static func delete(categoryId: Int, userId: String) -> NullRequestBuilder {
		let request: NullRequestBuilder = NullRequestBuilder(service: "categoryuser", action: "delete")
			.setBody(key: "categoryId", value: categoryId)
			.setBody(key: "userId", value: userId)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var categoryId: BaseTokenizedObject {
			get {
				return self.append("categoryId") 
			}
		}
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
	}

	/**  Get CategoryUser by id  */
	public static func get(categoryId: Int, userId: String) -> RequestBuilder<CategoryUser, CategoryUser.CategoryUserTokenizer, GetTokenizer> {
		let request: RequestBuilder<CategoryUser, CategoryUser.CategoryUserTokenizer, GetTokenizer> = RequestBuilder<CategoryUser, CategoryUser.CategoryUserTokenizer, GetTokenizer>(service: "categoryuser", action: "get")
			.setBody(key: "categoryId", value: categoryId)
			.setBody(key: "userId", value: userId)

		return request
	}

	public class IndexTokenizer: ClientTokenizer  {
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
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

	public static func index(userId: String, categoryId: Int) -> RequestBuilder<Int, BaseTokenizedObject, IndexTokenizer> {
		return index(userId: userId, categoryId: categoryId, shouldUpdate: true)
	}

	/**  Index CategoryUser by userid and category id  */
	public static func index(userId: String, categoryId: Int, shouldUpdate: Bool?) -> RequestBuilder<Int, BaseTokenizedObject, IndexTokenizer> {
		let request: RequestBuilder<Int, BaseTokenizedObject, IndexTokenizer> = RequestBuilder<Int, BaseTokenizedObject, IndexTokenizer>(service: "categoryuser", action: "index")
			.setBody(key: "userId", value: userId)
			.setBody(key: "categoryId", value: categoryId)
			.setBody(key: "shouldUpdate", value: shouldUpdate)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: CategoryUserFilter.CategoryUserFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<CategoryUserListResponse, CategoryUserListResponse.CategoryUserListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: CategoryUserFilter?) -> RequestBuilder<CategoryUserListResponse, CategoryUserListResponse.CategoryUserListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List all categories  */
	public static func list(filter: CategoryUserFilter?, pager: FilterPager?) -> RequestBuilder<CategoryUserListResponse, CategoryUserListResponse.CategoryUserListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<CategoryUserListResponse, CategoryUserListResponse.CategoryUserListResponseTokenizer, ListTokenizer> = RequestBuilder<CategoryUserListResponse, CategoryUserListResponse.CategoryUserListResponseTokenizer, ListTokenizer>(service: "categoryuser", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var categoryId: BaseTokenizedObject {
			get {
				return self.append("categoryId") 
			}
		}
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public func categoryUser<T: CategoryUser.CategoryUserTokenizer>() -> T {
			return T(self.append("categoryUser"))
		}
		
		public var override: BaseTokenizedObject {
			get {
				return self.append("override") 
			}
		}
	}

	public static func update(categoryId: Int, userId: String, categoryUser: CategoryUser) -> RequestBuilder<CategoryUser, CategoryUser.CategoryUserTokenizer, UpdateTokenizer> {
		return update(categoryId: categoryId, userId: userId, categoryUser: categoryUser, override: false)
	}

	/**  Update CategoryUser by id  */
	public static func update(categoryId: Int, userId: String, categoryUser: CategoryUser, override: Bool?) -> RequestBuilder<CategoryUser, CategoryUser.CategoryUserTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<CategoryUser, CategoryUser.CategoryUserTokenizer, UpdateTokenizer> = RequestBuilder<CategoryUser, CategoryUser.CategoryUserTokenizer, UpdateTokenizer>(service: "categoryuser", action: "update")
			.setBody(key: "categoryId", value: categoryId)
			.setBody(key: "userId", value: userId)
			.setBody(key: "categoryUser", value: categoryUser)
			.setBody(key: "override", value: override)

		return request
	}
}
