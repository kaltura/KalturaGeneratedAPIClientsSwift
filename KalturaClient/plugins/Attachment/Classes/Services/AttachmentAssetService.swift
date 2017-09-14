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

/**  Retrieve information and invoke actions on attachment Asset  */
public final class AttachmentAssetService{

	public class AddTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public func attachmentAsset<T: AttachmentAsset.AttachmentAssetTokenizer>() -> T {
			return T(self.append("attachmentAsset"))
		}
	}

	/**  Add attachment asset  */
	public static func add(entryId: String, attachmentAsset: AttachmentAsset) -> RequestBuilder<AttachmentAsset, AttachmentAsset.AttachmentAssetTokenizer, AddTokenizer> {
		let request: RequestBuilder<AttachmentAsset, AttachmentAsset.AttachmentAssetTokenizer, AddTokenizer> = RequestBuilder<AttachmentAsset, AttachmentAsset.AttachmentAssetTokenizer, AddTokenizer>(service: "attachment_attachmentasset", action: "add")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "attachmentAsset", value: attachmentAsset)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var attachmentAssetId: BaseTokenizedObject {
			get {
				return self.append("attachmentAssetId") 
			}
		}
	}

	public static func delete(attachmentAssetId: String) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "attachment_attachmentasset", action: "delete")
			.setParam(key: "attachmentAssetId", value: attachmentAssetId)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var attachmentAssetId: BaseTokenizedObject {
			get {
				return self.append("attachmentAssetId") 
			}
		}
	}

	public static func get(attachmentAssetId: String) -> RequestBuilder<AttachmentAsset, AttachmentAsset.AttachmentAssetTokenizer, GetTokenizer> {
		let request: RequestBuilder<AttachmentAsset, AttachmentAsset.AttachmentAssetTokenizer, GetTokenizer> = RequestBuilder<AttachmentAsset, AttachmentAsset.AttachmentAssetTokenizer, GetTokenizer>(service: "attachment_attachmentasset", action: "get")
			.setParam(key: "attachmentAssetId", value: attachmentAssetId)

		return request
	}

	public class GetRemotePathsTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Get remote storage existing paths for the asset  */
	public static func getRemotePaths(id: String) -> RequestBuilder<RemotePathListResponse, RemotePathListResponse.RemotePathListResponseTokenizer, GetRemotePathsTokenizer> {
		let request: RequestBuilder<RemotePathListResponse, RemotePathListResponse.RemotePathListResponseTokenizer, GetRemotePathsTokenizer> = RequestBuilder<RemotePathListResponse, RemotePathListResponse.RemotePathListResponseTokenizer, GetRemotePathsTokenizer>(service: "attachment_attachmentasset", action: "getRemotePaths")
			.setParam(key: "id", value: id)

		return request
	}

	public class GetUrlTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var storageId: BaseTokenizedObject {
			get {
				return self.append("storageId") 
			}
		}
	}

	public static func getUrl(id: String) -> RequestBuilder<String, BaseTokenizedObject, GetUrlTokenizer> {
		return getUrl(id: id, storageId: nil)
	}

	/**  Get download URL for the asset  */
	public static func getUrl(id: String, storageId: Int?) -> RequestBuilder<String, BaseTokenizedObject, GetUrlTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, GetUrlTokenizer> = RequestBuilder<String, BaseTokenizedObject, GetUrlTokenizer>(service: "attachment_attachmentasset", action: "getUrl")
			.setParam(key: "id", value: id)
			.setParam(key: "storageId", value: storageId)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: AssetFilter.AssetFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<AttachmentAssetListResponse, AttachmentAssetListResponse.AttachmentAssetListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: AssetFilter?) -> RequestBuilder<AttachmentAssetListResponse, AttachmentAssetListResponse.AttachmentAssetListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List attachment Assets by filter and pager  */
	public static func list(filter: AssetFilter?, pager: FilterPager?) -> RequestBuilder<AttachmentAssetListResponse, AttachmentAssetListResponse.AttachmentAssetListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<AttachmentAssetListResponse, AttachmentAssetListResponse.AttachmentAssetListResponseTokenizer, ListTokenizer> = RequestBuilder<AttachmentAssetListResponse, AttachmentAssetListResponse.AttachmentAssetListResponseTokenizer, ListTokenizer>(service: "attachment_attachmentasset", action: "list")
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

	/**  Update content of attachment asset  */
	public static func setContent(id: String, contentResource: ContentResource) -> RequestBuilder<AttachmentAsset, AttachmentAsset.AttachmentAssetTokenizer, SetContentTokenizer> {
		let request: RequestBuilder<AttachmentAsset, AttachmentAsset.AttachmentAssetTokenizer, SetContentTokenizer> = RequestBuilder<AttachmentAsset, AttachmentAsset.AttachmentAssetTokenizer, SetContentTokenizer>(service: "attachment_attachmentasset", action: "setContent")
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
		
		public func attachmentAsset<T: AttachmentAsset.AttachmentAssetTokenizer>() -> T {
			return T(self.append("attachmentAsset"))
		}
	}

	/**  Update attachment asset  */
	public static func update(id: String, attachmentAsset: AttachmentAsset) -> RequestBuilder<AttachmentAsset, AttachmentAsset.AttachmentAssetTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<AttachmentAsset, AttachmentAsset.AttachmentAssetTokenizer, UpdateTokenizer> = RequestBuilder<AttachmentAsset, AttachmentAsset.AttachmentAssetTokenizer, UpdateTokenizer>(service: "attachment_attachmentasset", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "attachmentAsset", value: attachmentAsset)

		return request
	}
}
