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
// Copyright (C) 2006-2019  Kaltura Inc.
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

/**  DropFolder service lets you create and manage drop folders  */
public final class DropFolderService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func dropFolder<T: DropFolder.DropFolderTokenizer>() -> T {
			return T(self.append("dropFolder"))
		}
	}

	/**  Allows you to add a new KalturaDropFolder object  */
	public static func add(dropFolder: DropFolder) -> RequestBuilder<DropFolder, DropFolder.DropFolderTokenizer, AddTokenizer> {
		let request: RequestBuilder<DropFolder, DropFolder.DropFolderTokenizer, AddTokenizer> = RequestBuilder<DropFolder, DropFolder.DropFolderTokenizer, AddTokenizer>(service: "dropfolder_dropfolder", action: "add")
			.setParam(key: "dropFolder", value: dropFolder)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var dropFolderId: BaseTokenizedObject {
			get {
				return self.append("dropFolderId") 
			}
		}
	}

	/**  Mark the KalturaDropFolder object as deleted  */
	public static func delete(dropFolderId: Int) -> RequestBuilder<DropFolder, DropFolder.DropFolderTokenizer, DeleteTokenizer> {
		let request: RequestBuilder<DropFolder, DropFolder.DropFolderTokenizer, DeleteTokenizer> = RequestBuilder<DropFolder, DropFolder.DropFolderTokenizer, DeleteTokenizer>(service: "dropfolder_dropfolder", action: "delete")
			.setParam(key: "dropFolderId", value: dropFolderId)

		return request
	}

	public class FreeExclusiveDropFolderTokenizer: ClientTokenizer  {
		
		public var dropFolderId: BaseTokenizedObject {
			get {
				return self.append("dropFolderId") 
			}
		}
		
		public var errorCode: BaseTokenizedObject {
			get {
				return self.append("errorCode") 
			}
		}
		
		public var errorDescription: BaseTokenizedObject {
			get {
				return self.append("errorDescription") 
			}
		}
	}

	public static func freeExclusiveDropFolder(dropFolderId: Int) -> RequestBuilder<DropFolder, DropFolder.DropFolderTokenizer, FreeExclusiveDropFolderTokenizer> {
		return freeExclusiveDropFolder(dropFolderId: dropFolderId, errorCode: nil)
	}

	public static func freeExclusiveDropFolder(dropFolderId: Int, errorCode: String?) -> RequestBuilder<DropFolder, DropFolder.DropFolderTokenizer, FreeExclusiveDropFolderTokenizer> {
		return freeExclusiveDropFolder(dropFolderId: dropFolderId, errorCode: errorCode, errorDescription: nil)
	}

	/**  freeExclusive KalturaDropFolder object  */
	public static func freeExclusiveDropFolder(dropFolderId: Int, errorCode: String?, errorDescription: String?) -> RequestBuilder<DropFolder, DropFolder.DropFolderTokenizer, FreeExclusiveDropFolderTokenizer> {
		let request: RequestBuilder<DropFolder, DropFolder.DropFolderTokenizer, FreeExclusiveDropFolderTokenizer> = RequestBuilder<DropFolder, DropFolder.DropFolderTokenizer, FreeExclusiveDropFolderTokenizer>(service: "dropfolder_dropfolder", action: "freeExclusiveDropFolder")
			.setParam(key: "dropFolderId", value: dropFolderId)
			.setParam(key: "errorCode", value: errorCode)
			.setParam(key: "errorDescription", value: errorDescription)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var dropFolderId: BaseTokenizedObject {
			get {
				return self.append("dropFolderId") 
			}
		}
	}

	/**  Retrieve a KalturaDropFolder object by ID  */
	public static func get(dropFolderId: Int) -> RequestBuilder<DropFolder, DropFolder.DropFolderTokenizer, GetTokenizer> {
		let request: RequestBuilder<DropFolder, DropFolder.DropFolderTokenizer, GetTokenizer> = RequestBuilder<DropFolder, DropFolder.DropFolderTokenizer, GetTokenizer>(service: "dropfolder_dropfolder", action: "get")
			.setParam(key: "dropFolderId", value: dropFolderId)

		return request
	}

	public class GetExclusiveDropFolderTokenizer: ClientTokenizer  {
		
		public var tag: BaseTokenizedObject {
			get {
				return self.append("tag") 
			}
		}
		
		public var maxTime: BaseTokenizedObject {
			get {
				return self.append("maxTime") 
			}
		}
	}

	/**  getExclusive KalturaDropFolder object  */
	public static func getExclusiveDropFolder(tag: String, maxTime: Int) -> RequestBuilder<DropFolder, DropFolder.DropFolderTokenizer, GetExclusiveDropFolderTokenizer> {
		let request: RequestBuilder<DropFolder, DropFolder.DropFolderTokenizer, GetExclusiveDropFolderTokenizer> = RequestBuilder<DropFolder, DropFolder.DropFolderTokenizer, GetExclusiveDropFolderTokenizer>(service: "dropfolder_dropfolder", action: "getExclusiveDropFolder")
			.setParam(key: "tag", value: tag)
			.setParam(key: "maxTime", value: maxTime)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: DropFolderFilter.DropFolderFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<DropFolderListResponse, DropFolderListResponse.DropFolderListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: DropFolderFilter?) -> RequestBuilder<DropFolderListResponse, DropFolderListResponse.DropFolderListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List KalturaDropFolder objects  */
	public static func list(filter: DropFolderFilter?, pager: FilterPager?) -> RequestBuilder<DropFolderListResponse, DropFolderListResponse.DropFolderListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<DropFolderListResponse, DropFolderListResponse.DropFolderListResponseTokenizer, ListTokenizer> = RequestBuilder<DropFolderListResponse, DropFolderListResponse.DropFolderListResponseTokenizer, ListTokenizer>(service: "dropfolder_dropfolder", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var dropFolderId: BaseTokenizedObject {
			get {
				return self.append("dropFolderId") 
			}
		}
		
		public func dropFolder<T: DropFolder.DropFolderTokenizer>() -> T {
			return T(self.append("dropFolder"))
		}
	}

	/**  Update an existing KalturaDropFolder object  */
	public static func update(dropFolderId: Int, dropFolder: DropFolder) -> RequestBuilder<DropFolder, DropFolder.DropFolderTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<DropFolder, DropFolder.DropFolderTokenizer, UpdateTokenizer> = RequestBuilder<DropFolder, DropFolder.DropFolderTokenizer, UpdateTokenizer>(service: "dropfolder_dropfolder", action: "update")
			.setParam(key: "dropFolderId", value: dropFolderId)
			.setParam(key: "dropFolder", value: dropFolder)

		return request
	}
}
