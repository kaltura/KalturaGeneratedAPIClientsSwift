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

	/**  activate CategoryUser  */
	public static func activate(categoryId: Int, userId: String) -> RequestBuilder<CategoryUser> {
		let request: RequestBuilder<CategoryUser> = RequestBuilder<CategoryUser>(service: "categoryuser", action: "activate")
			.setBody(key: "categoryId", value: categoryId)
			.setBody(key: "userId", value: userId)

		return request
	}

	/**  Add new CategoryUser  */
	public static func add(categoryUser: CategoryUser) -> RequestBuilder<CategoryUser> {
		let request: RequestBuilder<CategoryUser> = RequestBuilder<CategoryUser>(service: "categoryuser", action: "add")
			.setBody(key: "categoryUser", value: categoryUser)

		return request
	}

	public static func addFromBulkUpload(fileData: RequestFile) -> RequestBuilder<BulkUpload> {
		return addFromBulkUpload(fileData: fileData, bulkUploadData: nil)
	}

	public static func addFromBulkUpload(fileData: RequestFile, bulkUploadData: BulkUploadJobData?) -> RequestBuilder<BulkUpload> {
		return addFromBulkUpload(fileData: fileData, bulkUploadData: bulkUploadData, bulkUploadCategoryUserData: nil)
	}

	public static func addFromBulkUpload(fileData: RequestFile, bulkUploadData: BulkUploadJobData?, bulkUploadCategoryUserData: BulkUploadCategoryUserData?) -> RequestBuilder<BulkUpload> {
		let request: RequestBuilder<BulkUpload> = RequestBuilder<BulkUpload>(service: "categoryuser", action: "addFromBulkUpload")
			.setFile(key: "fileData", value: fileData)
			.setBody(key: "bulkUploadData", value: bulkUploadData)
			.setBody(key: "bulkUploadCategoryUserData", value: bulkUploadCategoryUserData)

		return request
	}

	/**  Copy all memeber from parent category  */
	public static func copyFromCategory(categoryId: Int) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "categoryuser", action: "copyFromCategory")
			.setBody(key: "categoryId", value: categoryId)

		return request
	}

	/**  reject CategoryUser  */
	public static func deactivate(categoryId: Int, userId: String) -> RequestBuilder<CategoryUser> {
		let request: RequestBuilder<CategoryUser> = RequestBuilder<CategoryUser>(service: "categoryuser", action: "deactivate")
			.setBody(key: "categoryId", value: categoryId)
			.setBody(key: "userId", value: userId)

		return request
	}

	/**  Delete a CategoryUser  */
	public static func delete(categoryId: Int, userId: String) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "categoryuser", action: "delete")
			.setBody(key: "categoryId", value: categoryId)
			.setBody(key: "userId", value: userId)

		return request
	}

	/**  Get CategoryUser by id  */
	public static func get(categoryId: Int, userId: String) -> RequestBuilder<CategoryUser> {
		let request: RequestBuilder<CategoryUser> = RequestBuilder<CategoryUser>(service: "categoryuser", action: "get")
			.setBody(key: "categoryId", value: categoryId)
			.setBody(key: "userId", value: userId)

		return request
	}

	public static func index(userId: String, categoryId: Int) -> RequestBuilder<Int> {
		return index(userId: userId, categoryId: categoryId, shouldUpdate: true)
	}

	/**  Index CategoryUser by userid and category id  */
	public static func index(userId: String, categoryId: Int, shouldUpdate: Bool?) -> RequestBuilder<Int> {
		let request: RequestBuilder<Int> = RequestBuilder<Int>(service: "categoryuser", action: "index")
			.setBody(key: "userId", value: userId)
			.setBody(key: "categoryId", value: categoryId)
			.setBody(key: "shouldUpdate", value: shouldUpdate)

		return request
	}

	public static func list() -> RequestBuilder<CategoryUserListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: CategoryUserFilter?) -> RequestBuilder<CategoryUserListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List all categories  */
	public static func list(filter: CategoryUserFilter?, pager: FilterPager?) -> RequestBuilder<CategoryUserListResponse> {
		let request: RequestBuilder<CategoryUserListResponse> = RequestBuilder<CategoryUserListResponse>(service: "categoryuser", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public static func update(categoryId: Int, userId: String, categoryUser: CategoryUser) -> RequestBuilder<CategoryUser> {
		return update(categoryId: categoryId, userId: userId, categoryUser: categoryUser, override: false)
	}

	/**  Update CategoryUser by id  */
	public static func update(categoryId: Int, userId: String, categoryUser: CategoryUser, override: Bool?) -> RequestBuilder<CategoryUser> {
		let request: RequestBuilder<CategoryUser> = RequestBuilder<CategoryUser>(service: "categoryuser", action: "update")
			.setBody(key: "categoryId", value: categoryId)
			.setBody(key: "userId", value: userId)
			.setBody(key: "categoryUser", value: categoryUser)
			.setBody(key: "override", value: override)

		return request
	}
}
