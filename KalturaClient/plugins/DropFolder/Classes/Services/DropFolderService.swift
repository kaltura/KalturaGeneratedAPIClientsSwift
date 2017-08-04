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

/**  DropFolder service lets you create and manage drop folders  */
public final class DropFolderService{

	/**  Allows you to add a new KalturaDropFolder object  */
	public static func add(dropFolder: DropFolder) -> RequestBuilder<DropFolder> {
		let request: RequestBuilder<DropFolder> = RequestBuilder<DropFolder>(service: "dropfolder_dropfolder", action: "add")
			.setBody(key: "dropFolder", value: dropFolder)

		return request
	}

	/**  Mark the KalturaDropFolder object as deleted  */
	public static func delete(dropFolderId: Int) -> RequestBuilder<DropFolder> {
		let request: RequestBuilder<DropFolder> = RequestBuilder<DropFolder>(service: "dropfolder_dropfolder", action: "delete")
			.setBody(key: "dropFolderId", value: dropFolderId)

		return request
	}

	public static func freeExclusiveDropFolder(dropFolderId: Int, status: Int) -> RequestBuilder<DropFolder> {
		return freeExclusiveDropFolder(dropFolderId: dropFolderId, status: status, errorCode: nil)
	}

	public static func freeExclusiveDropFolder(dropFolderId: Int, status: Int, errorCode: String?) -> RequestBuilder<DropFolder> {
		return freeExclusiveDropFolder(dropFolderId: dropFolderId, status: status, errorCode: errorCode, errorDescription: nil)
	}

	/**  freeExclusive KalturaDropFolder object  */
	public static func freeExclusiveDropFolder(dropFolderId: Int, status: Int, errorCode: String?, errorDescription: String?) -> RequestBuilder<DropFolder> {
		let request: RequestBuilder<DropFolder> = RequestBuilder<DropFolder>(service: "dropfolder_dropfolder", action: "freeExclusiveDropFolder")
			.setBody(key: "dropFolderId", value: dropFolderId)
			.setBody(key: "status", value: status)
			.setBody(key: "errorCode", value: errorCode)
			.setBody(key: "errorDescription", value: errorDescription)

		return request
	}

	/**  Retrieve a KalturaDropFolder object by ID  */
	public static func get(dropFolderId: Int) -> RequestBuilder<DropFolder> {
		let request: RequestBuilder<DropFolder> = RequestBuilder<DropFolder>(service: "dropfolder_dropfolder", action: "get")
			.setBody(key: "dropFolderId", value: dropFolderId)

		return request
	}

	/**  getExclusive KalturaDropFolder object  */
	public static func getExclusiveDropFolder(tag: String, maxTime: Int) -> RequestBuilder<DropFolder> {
		let request: RequestBuilder<DropFolder> = RequestBuilder<DropFolder>(service: "dropfolder_dropfolder", action: "getExclusiveDropFolder")
			.setBody(key: "tag", value: tag)
			.setBody(key: "maxTime", value: maxTime)

		return request
	}

	public static func list() -> RequestBuilder<DropFolderListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: DropFolderFilter?) -> RequestBuilder<DropFolderListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List KalturaDropFolder objects  */
	public static func list(filter: DropFolderFilter?, pager: FilterPager?) -> RequestBuilder<DropFolderListResponse> {
		let request: RequestBuilder<DropFolderListResponse> = RequestBuilder<DropFolderListResponse>(service: "dropfolder_dropfolder", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Update an existing KalturaDropFolder object  */
	public static func update(dropFolderId: Int, dropFolder: DropFolder) -> RequestBuilder<DropFolder> {
		let request: RequestBuilder<DropFolder> = RequestBuilder<DropFolder>(service: "dropfolder_dropfolder", action: "update")
			.setBody(key: "dropFolderId", value: dropFolderId)
			.setBody(key: "dropFolder", value: dropFolder)

		return request
	}
}
