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

/**  Manage file assets  */
public final class FileAssetService{

	/**  Add new file asset  */
	public static func add(fileAsset: FileAsset) -> RequestBuilder<FileAsset> {
		let request: RequestBuilder<FileAsset> = RequestBuilder<FileAsset>(service: "fileasset", action: "add")
			.setBody(key: "fileAsset", value: fileAsset)

		return request
	}

	/**  Delete file asset by id  */
	public static func delete(id: Int) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "fileasset", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Get file asset by id  */
	public static func get(id: Int) -> RequestBuilder<FileAsset> {
		let request: RequestBuilder<FileAsset> = RequestBuilder<FileAsset>(service: "fileasset", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public static func list(filter: FileAssetFilter) -> RequestBuilder<FileAssetListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List file assets by filter and pager  */
	public static func list(filter: FileAssetFilter, pager: FilterPager?) -> RequestBuilder<FileAssetListResponse> {
		let request: RequestBuilder<FileAssetListResponse> = RequestBuilder<FileAssetListResponse>(service: "fileasset", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Set content of file asset  */
	public static func setContent(id: String, contentResource: ContentResource) -> RequestBuilder<FileAsset> {
		let request: RequestBuilder<FileAsset> = RequestBuilder<FileAsset>(service: "fileasset", action: "setContent")
			.setBody(key: "id", value: id)
			.setBody(key: "contentResource", value: contentResource)

		return request
	}

	/**  Update file asset by id  */
	public static func update(id: Int, fileAsset: FileAsset) -> RequestBuilder<FileAsset> {
		let request: RequestBuilder<FileAsset> = RequestBuilder<FileAsset>(service: "fileasset", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "fileAsset", value: fileAsset)

		return request
	}
}
