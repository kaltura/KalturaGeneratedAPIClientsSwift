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

/**  DropFolderFile service lets you create and manage drop folder files  */
public final class DropFolderFileService{

	/**  Allows you to add a new KalturaDropFolderFile object  */
	public static func add(dropFolderFile: DropFolderFile) -> RequestBuilder<DropFolderFile> {
		let request: RequestBuilder<DropFolderFile> = RequestBuilder<DropFolderFile>(service: "dropfolder_dropfolderfile", action: "add")
			.setBody(key: "dropFolderFile", value: dropFolderFile)

		return request
	}

	/**  Mark the KalturaDropFolderFile object as deleted  */
	public static func delete(dropFolderFileId: Int) -> RequestBuilder<DropFolderFile> {
		let request: RequestBuilder<DropFolderFile> = RequestBuilder<DropFolderFile>(service: "dropfolder_dropfolderfile", action: "delete")
			.setBody(key: "dropFolderFileId", value: dropFolderFileId)

		return request
	}

	/**  Retrieve a KalturaDropFolderFile object by ID  */
	public static func get(dropFolderFileId: Int) -> RequestBuilder<DropFolderFile> {
		let request: RequestBuilder<DropFolderFile> = RequestBuilder<DropFolderFile>(service: "dropfolder_dropfolderfile", action: "get")
			.setBody(key: "dropFolderFileId", value: dropFolderFileId)

		return request
	}

	/**  Set the KalturaDropFolderFile status to ignore
	  (KalturaDropFolderFileStatus::IGNORE)  */
	public static func ignore(dropFolderFileId: Int) -> RequestBuilder<DropFolderFile> {
		let request: RequestBuilder<DropFolderFile> = RequestBuilder<DropFolderFile>(service: "dropfolder_dropfolderfile", action: "ignore")
			.setBody(key: "dropFolderFileId", value: dropFolderFileId)

		return request
	}

	public static func list() -> RequestBuilder<DropFolderFileListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: DropFolderFileFilter?) -> RequestBuilder<DropFolderFileListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List KalturaDropFolderFile objects  */
	public static func list(filter: DropFolderFileFilter?, pager: FilterPager?) -> RequestBuilder<DropFolderFileListResponse> {
		let request: RequestBuilder<DropFolderFileListResponse> = RequestBuilder<DropFolderFileListResponse>(service: "dropfolder_dropfolderfile", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Update an existing KalturaDropFolderFile object  */
	public static func update(dropFolderFileId: Int, dropFolderFile: DropFolderFile) -> RequestBuilder<DropFolderFile> {
		let request: RequestBuilder<DropFolderFile> = RequestBuilder<DropFolderFile>(service: "dropfolder_dropfolderfile", action: "update")
			.setBody(key: "dropFolderFileId", value: dropFolderFileId)
			.setBody(key: "dropFolderFile", value: dropFolderFile)

		return request
	}

	/**  Update status of KalturaDropFolderFile  */
	public static func updateStatus(dropFolderFileId: Int, status: DropFolderFileStatus) -> RequestBuilder<DropFolderFile> {
		let request: RequestBuilder<DropFolderFile> = RequestBuilder<DropFolderFile>(service: "dropfolder_dropfolderfile", action: "updateStatus")
			.setBody(key: "dropFolderFileId", value: dropFolderFileId)
			.setBody(key: "status", value: status.rawValue)

		return request
	}
}
