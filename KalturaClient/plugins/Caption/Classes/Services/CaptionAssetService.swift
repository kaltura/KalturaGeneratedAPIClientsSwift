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
// Copyright (C) 2006-2018  Kaltura Inc.
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

/**  Retrieve information and invoke actions on caption Asset  */
public final class CaptionAssetService{

	public class AddTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public func captionAsset<T: CaptionAsset.CaptionAssetTokenizer>() -> T {
			return T(self.append("captionAsset"))
		}
	}

	/**  Add caption asset  */
	public static func add(entryId: String, captionAsset: CaptionAsset) -> RequestBuilder<CaptionAsset, CaptionAsset.CaptionAssetTokenizer, AddTokenizer> {
		let request: RequestBuilder<CaptionAsset, CaptionAsset.CaptionAssetTokenizer, AddTokenizer> = RequestBuilder<CaptionAsset, CaptionAsset.CaptionAssetTokenizer, AddTokenizer>(service: "caption_captionasset", action: "add")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "captionAsset", value: captionAsset)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var captionAssetId: BaseTokenizedObject {
			get {
				return self.append("captionAssetId") 
			}
		}
	}

	public static func delete(captionAssetId: String) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "caption_captionasset", action: "delete")
			.setParam(key: "captionAssetId", value: captionAssetId)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var captionAssetId: BaseTokenizedObject {
			get {
				return self.append("captionAssetId") 
			}
		}
	}

	public static func get(captionAssetId: String) -> RequestBuilder<CaptionAsset, CaptionAsset.CaptionAssetTokenizer, GetTokenizer> {
		let request: RequestBuilder<CaptionAsset, CaptionAsset.CaptionAssetTokenizer, GetTokenizer> = RequestBuilder<CaptionAsset, CaptionAsset.CaptionAssetTokenizer, GetTokenizer>(service: "caption_captionasset", action: "get")
			.setParam(key: "captionAssetId", value: captionAssetId)

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
		let request: RequestBuilder<RemotePathListResponse, RemotePathListResponse.RemotePathListResponseTokenizer, GetRemotePathsTokenizer> = RequestBuilder<RemotePathListResponse, RemotePathListResponse.RemotePathListResponseTokenizer, GetRemotePathsTokenizer>(service: "caption_captionasset", action: "getRemotePaths")
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
		let request: RequestBuilder<String, BaseTokenizedObject, GetUrlTokenizer> = RequestBuilder<String, BaseTokenizedObject, GetUrlTokenizer>(service: "caption_captionasset", action: "getUrl")
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

	public static func list() -> RequestBuilder<CaptionAssetListResponse, CaptionAssetListResponse.CaptionAssetListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: AssetFilter?) -> RequestBuilder<CaptionAssetListResponse, CaptionAssetListResponse.CaptionAssetListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List caption Assets by filter and pager  */
	public static func list(filter: AssetFilter?, pager: FilterPager?) -> RequestBuilder<CaptionAssetListResponse, CaptionAssetListResponse.CaptionAssetListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<CaptionAssetListResponse, CaptionAssetListResponse.CaptionAssetListResponseTokenizer, ListTokenizer> = RequestBuilder<CaptionAssetListResponse, CaptionAssetListResponse.CaptionAssetListResponseTokenizer, ListTokenizer>(service: "caption_captionasset", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class SetAsDefaultTokenizer: ClientTokenizer  {
		
		public var captionAssetId: BaseTokenizedObject {
			get {
				return self.append("captionAssetId") 
			}
		}
	}

	/**  Markss the caption as default and removes that mark from all other caption
	  assets of the entry.  */
	public static func setAsDefault(captionAssetId: String) -> NullRequestBuilder<SetAsDefaultTokenizer> {
		let request: NullRequestBuilder<SetAsDefaultTokenizer> = NullRequestBuilder<SetAsDefaultTokenizer>(service: "caption_captionasset", action: "setAsDefault")
			.setParam(key: "captionAssetId", value: captionAssetId)

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

	/**  Update content of caption asset  */
	public static func setContent(id: String, contentResource: ContentResource) -> RequestBuilder<CaptionAsset, CaptionAsset.CaptionAssetTokenizer, SetContentTokenizer> {
		let request: RequestBuilder<CaptionAsset, CaptionAsset.CaptionAssetTokenizer, SetContentTokenizer> = RequestBuilder<CaptionAsset, CaptionAsset.CaptionAssetTokenizer, SetContentTokenizer>(service: "caption_captionasset", action: "setContent")
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
		
		public func captionAsset<T: CaptionAsset.CaptionAssetTokenizer>() -> T {
			return T(self.append("captionAsset"))
		}
	}

	/**  Update caption asset  */
	public static func update(id: String, captionAsset: CaptionAsset) -> RequestBuilder<CaptionAsset, CaptionAsset.CaptionAssetTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<CaptionAsset, CaptionAsset.CaptionAssetTokenizer, UpdateTokenizer> = RequestBuilder<CaptionAsset, CaptionAsset.CaptionAssetTokenizer, UpdateTokenizer>(service: "caption_captionasset", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "captionAsset", value: captionAsset)

		return request
	}
}
