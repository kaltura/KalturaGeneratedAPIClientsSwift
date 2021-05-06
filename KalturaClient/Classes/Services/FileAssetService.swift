// ===================================================================================================
//                           _  __     _ _
//                          | |/ /__ _| | |_ _  _ _ _ __ _
//                          | ' </ _` | |  _| || | '_/ _` |
//                          |_|\_\__,_|_|\__|\_,_|_| \__,_|
//
// This file is part of the Kaltura Collaborative Media Suite which allows users
// to do with audio, video, and animation what Wiki platforms allow them to do with
// text.
//
// Copyright (C) 2006-2021  Kaltura Inc.
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

	public class AddTokenizer: ClientTokenizer  {
		
		public func fileAsset<T: FileAsset.FileAssetTokenizer>() -> T {
			return T(self.append("fileAsset"))
		}
	}

	/**  Add new file asset  */
	public static func add(fileAsset: FileAsset) -> RequestBuilder<FileAsset, FileAsset.FileAssetTokenizer, AddTokenizer> {
		let request: RequestBuilder<FileAsset, FileAsset.FileAssetTokenizer, AddTokenizer> = RequestBuilder<FileAsset, FileAsset.FileAssetTokenizer, AddTokenizer>(service: "fileasset", action: "add")
			.setParam(key: "fileAsset", value: fileAsset)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete file asset by id  */
	public static func delete(id: Int64) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "fileasset", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Get file asset by id  */
	public static func get(id: Int64) -> RequestBuilder<FileAsset, FileAsset.FileAssetTokenizer, GetTokenizer> {
		let request: RequestBuilder<FileAsset, FileAsset.FileAssetTokenizer, GetTokenizer> = RequestBuilder<FileAsset, FileAsset.FileAssetTokenizer, GetTokenizer>(service: "fileasset", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: FileAssetFilter.FileAssetFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list(filter: FileAssetFilter) -> RequestBuilder<FileAssetListResponse, FileAssetListResponse.FileAssetListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List file assets by filter and pager  */
	public static func list(filter: FileAssetFilter, pager: FilterPager?) -> RequestBuilder<FileAssetListResponse, FileAssetListResponse.FileAssetListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<FileAssetListResponse, FileAssetListResponse.FileAssetListResponseTokenizer, ListTokenizer> = RequestBuilder<FileAssetListResponse, FileAssetListResponse.FileAssetListResponseTokenizer, ListTokenizer>(service: "fileasset", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class SetContentTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func contentResource<T: ContentResource.ContentResourceTokenizer>() -> T {
			return T(self.append("contentResource"))
		}
	}

	/**  Set content of file asset  */
	public static func setContent(id: Int64, contentResource: ContentResource) -> RequestBuilder<FileAsset, FileAsset.FileAssetTokenizer, SetContentTokenizer> {
		let request: RequestBuilder<FileAsset, FileAsset.FileAssetTokenizer, SetContentTokenizer> = RequestBuilder<FileAsset, FileAsset.FileAssetTokenizer, SetContentTokenizer>(service: "fileasset", action: "setContent")
			.setParam(key: "id", value: id)
			.setParam(key: "contentResource", value: contentResource)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func fileAsset<T: FileAsset.FileAssetTokenizer>() -> T {
			return T(self.append("fileAsset"))
		}
	}

	/**  Update file asset by id  */
	public static func update(id: Int64, fileAsset: FileAsset) -> RequestBuilder<FileAsset, FileAsset.FileAssetTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<FileAsset, FileAsset.FileAssetTokenizer, UpdateTokenizer> = RequestBuilder<FileAsset, FileAsset.FileAssetTokenizer, UpdateTokenizer>(service: "fileasset", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "fileAsset", value: fileAsset)

		return request
	}
}
