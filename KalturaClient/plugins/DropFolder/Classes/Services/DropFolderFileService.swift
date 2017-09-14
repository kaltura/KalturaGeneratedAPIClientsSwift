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

	public class AddTokenizer: ClientTokenizer  {
		
		public func dropFolderFile<T: DropFolderFile.DropFolderFileTokenizer>() -> T {
			return T(self.append("dropFolderFile"))
		}
	}

	/**  Allows you to add a new KalturaDropFolderFile object  */
	public static func add(dropFolderFile: DropFolderFile) -> RequestBuilder<DropFolderFile, DropFolderFile.DropFolderFileTokenizer, AddTokenizer> {
		let request: RequestBuilder<DropFolderFile, DropFolderFile.DropFolderFileTokenizer, AddTokenizer> = RequestBuilder<DropFolderFile, DropFolderFile.DropFolderFileTokenizer, AddTokenizer>(service: "dropfolder_dropfolderfile", action: "add")
			.setParam(key: "dropFolderFile", value: dropFolderFile)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var dropFolderFileId: BaseTokenizedObject {
			get {
				return self.append("dropFolderFileId") 
			}
		}
	}

	/**  Mark the KalturaDropFolderFile object as deleted  */
	public static func delete(dropFolderFileId: Int) -> RequestBuilder<DropFolderFile, DropFolderFile.DropFolderFileTokenizer, DeleteTokenizer> {
		let request: RequestBuilder<DropFolderFile, DropFolderFile.DropFolderFileTokenizer, DeleteTokenizer> = RequestBuilder<DropFolderFile, DropFolderFile.DropFolderFileTokenizer, DeleteTokenizer>(service: "dropfolder_dropfolderfile", action: "delete")
			.setParam(key: "dropFolderFileId", value: dropFolderFileId)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var dropFolderFileId: BaseTokenizedObject {
			get {
				return self.append("dropFolderFileId") 
			}
		}
	}

	/**  Retrieve a KalturaDropFolderFile object by ID  */
	public static func get(dropFolderFileId: Int) -> RequestBuilder<DropFolderFile, DropFolderFile.DropFolderFileTokenizer, GetTokenizer> {
		let request: RequestBuilder<DropFolderFile, DropFolderFile.DropFolderFileTokenizer, GetTokenizer> = RequestBuilder<DropFolderFile, DropFolderFile.DropFolderFileTokenizer, GetTokenizer>(service: "dropfolder_dropfolderfile", action: "get")
			.setParam(key: "dropFolderFileId", value: dropFolderFileId)

		return request
	}

	public class IgnoreTokenizer: ClientTokenizer  {
		
		public var dropFolderFileId: BaseTokenizedObject {
			get {
				return self.append("dropFolderFileId") 
			}
		}
	}

	/**  Set the KalturaDropFolderFile status to ignore
	  (KalturaDropFolderFileStatus::IGNORE)  */
	public static func ignore(dropFolderFileId: Int) -> RequestBuilder<DropFolderFile, DropFolderFile.DropFolderFileTokenizer, IgnoreTokenizer> {
		let request: RequestBuilder<DropFolderFile, DropFolderFile.DropFolderFileTokenizer, IgnoreTokenizer> = RequestBuilder<DropFolderFile, DropFolderFile.DropFolderFileTokenizer, IgnoreTokenizer>(service: "dropfolder_dropfolderfile", action: "ignore")
			.setParam(key: "dropFolderFileId", value: dropFolderFileId)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: DropFolderFileFilter.DropFolderFileFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<DropFolderFileListResponse, DropFolderFileListResponse.DropFolderFileListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: DropFolderFileFilter?) -> RequestBuilder<DropFolderFileListResponse, DropFolderFileListResponse.DropFolderFileListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List KalturaDropFolderFile objects  */
	public static func list(filter: DropFolderFileFilter?, pager: FilterPager?) -> RequestBuilder<DropFolderFileListResponse, DropFolderFileListResponse.DropFolderFileListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<DropFolderFileListResponse, DropFolderFileListResponse.DropFolderFileListResponseTokenizer, ListTokenizer> = RequestBuilder<DropFolderFileListResponse, DropFolderFileListResponse.DropFolderFileListResponseTokenizer, ListTokenizer>(service: "dropfolder_dropfolderfile", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var dropFolderFileId: BaseTokenizedObject {
			get {
				return self.append("dropFolderFileId") 
			}
		}
		
		public func dropFolderFile<T: DropFolderFile.DropFolderFileTokenizer>() -> T {
			return T(self.append("dropFolderFile"))
		}
	}

	/**  Update an existing KalturaDropFolderFile object  */
	public static func update(dropFolderFileId: Int, dropFolderFile: DropFolderFile) -> RequestBuilder<DropFolderFile, DropFolderFile.DropFolderFileTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<DropFolderFile, DropFolderFile.DropFolderFileTokenizer, UpdateTokenizer> = RequestBuilder<DropFolderFile, DropFolderFile.DropFolderFileTokenizer, UpdateTokenizer>(service: "dropfolder_dropfolderfile", action: "update")
			.setParam(key: "dropFolderFileId", value: dropFolderFileId)
			.setParam(key: "dropFolderFile", value: dropFolderFile)

		return request
	}

	public class UpdateStatusTokenizer: ClientTokenizer  {
		
		public var dropFolderFileId: BaseTokenizedObject {
			get {
				return self.append("dropFolderFileId") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
	}

	/**  Update status of KalturaDropFolderFile  */
	public static func updateStatus(dropFolderFileId: Int, status: DropFolderFileStatus) -> RequestBuilder<DropFolderFile, DropFolderFile.DropFolderFileTokenizer, UpdateStatusTokenizer> {
		let request: RequestBuilder<DropFolderFile, DropFolderFile.DropFolderFileTokenizer, UpdateStatusTokenizer> = RequestBuilder<DropFolderFile, DropFolderFile.DropFolderFileTokenizer, UpdateStatusTokenizer>(service: "dropfolder_dropfolderfile", action: "updateStatus")
			.setParam(key: "dropFolderFileId", value: dropFolderFileId)
			.setParam(key: "status", value: status.rawValue)

		return request
	}
}
