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
// Copyright (C) 2006-2023  Kaltura Inc.
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

/**  Retrieve information and invoke actions on Thumb Asset  */
public final class ThumbAssetService{

	public class AddTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public func thumbAsset<T: ThumbAsset.ThumbAssetTokenizer>() -> T {
			return T(self.append("thumbAsset"))
		}
	}

	/**  Add thumbnail asset  */
	public static func add(entryId: String, thumbAsset: ThumbAsset) -> RequestBuilder<ThumbAsset, ThumbAsset.ThumbAssetTokenizer, AddTokenizer> {
		let request: RequestBuilder<ThumbAsset, ThumbAsset.ThumbAssetTokenizer, AddTokenizer> = RequestBuilder<ThumbAsset, ThumbAsset.ThumbAssetTokenizer, AddTokenizer>(service: "thumbasset", action: "add")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "thumbAsset", value: thumbAsset)

		return request
	}

	public class AddFromImageTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
	}

	public static func addFromImage(entryId: String, fileData: RequestFile) -> RequestBuilder<ThumbAsset, ThumbAsset.ThumbAssetTokenizer, AddFromImageTokenizer> {
		let request: RequestBuilder<ThumbAsset, ThumbAsset.ThumbAssetTokenizer, AddFromImageTokenizer> = RequestBuilder<ThumbAsset, ThumbAsset.ThumbAssetTokenizer, AddFromImageTokenizer>(service: "thumbasset", action: "addFromImage")
			.setParam(key: "entryId", value: entryId)
			.setFile(key: "fileData", value: fileData)

		return request
	}

	public class AddFromUrlTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var url: BaseTokenizedObject {
			get {
				return self.append("url") 
			}
		}
	}

	public static func addFromUrl(entryId: String, url: String) -> RequestBuilder<ThumbAsset, ThumbAsset.ThumbAssetTokenizer, AddFromUrlTokenizer> {
		let request: RequestBuilder<ThumbAsset, ThumbAsset.ThumbAssetTokenizer, AddFromUrlTokenizer> = RequestBuilder<ThumbAsset, ThumbAsset.ThumbAssetTokenizer, AddFromUrlTokenizer>(service: "thumbasset", action: "addFromUrl")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "url", value: url)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var thumbAssetId: BaseTokenizedObject {
			get {
				return self.append("thumbAssetId") 
			}
		}
	}

	public static func delete(thumbAssetId: String) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "thumbasset", action: "delete")
			.setParam(key: "thumbAssetId", value: thumbAssetId)

		return request
	}

	public class ExportTokenizer: ClientTokenizer  {
		
		public var assetId: BaseTokenizedObject {
			get {
				return self.append("assetId") 
			}
		}
		
		public var storageProfileId: BaseTokenizedObject {
			get {
				return self.append("storageProfileId") 
			}
		}
	}

	/**  manually export an asset  */
	public static func export(assetId: String, storageProfileId: Int) -> RequestBuilder<FlavorAsset, FlavorAsset.FlavorAssetTokenizer, ExportTokenizer> {
		let request: RequestBuilder<FlavorAsset, FlavorAsset.FlavorAssetTokenizer, ExportTokenizer> = RequestBuilder<FlavorAsset, FlavorAsset.FlavorAssetTokenizer, ExportTokenizer>(service: "thumbasset", action: "export")
			.setParam(key: "assetId", value: assetId)
			.setParam(key: "storageProfileId", value: storageProfileId)

		return request
	}

	public class GenerateTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public func thumbParams<T: ThumbParams.ThumbParamsTokenizer>() -> T {
			return T(self.append("thumbParams"))
		}
		
		public var sourceAssetId: BaseTokenizedObject {
			get {
				return self.append("sourceAssetId") 
			}
		}
	}

	public static func generate(entryId: String, thumbParams: ThumbParams) -> RequestBuilder<ThumbAsset, ThumbAsset.ThumbAssetTokenizer, GenerateTokenizer> {
		return generate(entryId: entryId, thumbParams: thumbParams, sourceAssetId: nil)
	}

	public static func generate(entryId: String, thumbParams: ThumbParams, sourceAssetId: String?) -> RequestBuilder<ThumbAsset, ThumbAsset.ThumbAssetTokenizer, GenerateTokenizer> {
		let request: RequestBuilder<ThumbAsset, ThumbAsset.ThumbAssetTokenizer, GenerateTokenizer> = RequestBuilder<ThumbAsset, ThumbAsset.ThumbAssetTokenizer, GenerateTokenizer>(service: "thumbasset", action: "generate")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "thumbParams", value: thumbParams)
			.setParam(key: "sourceAssetId", value: sourceAssetId)

		return request
	}

	public class GenerateByEntryIdTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var destThumbParamsId: BaseTokenizedObject {
			get {
				return self.append("destThumbParamsId") 
			}
		}
	}

	public static func generateByEntryId(entryId: String, destThumbParamsId: Int) -> RequestBuilder<ThumbAsset, ThumbAsset.ThumbAssetTokenizer, GenerateByEntryIdTokenizer> {
		let request: RequestBuilder<ThumbAsset, ThumbAsset.ThumbAssetTokenizer, GenerateByEntryIdTokenizer> = RequestBuilder<ThumbAsset, ThumbAsset.ThumbAssetTokenizer, GenerateByEntryIdTokenizer>(service: "thumbasset", action: "generateByEntryId")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "destThumbParamsId", value: destThumbParamsId)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var thumbAssetId: BaseTokenizedObject {
			get {
				return self.append("thumbAssetId") 
			}
		}
	}

	public static func get(thumbAssetId: String) -> RequestBuilder<ThumbAsset, ThumbAsset.ThumbAssetTokenizer, GetTokenizer> {
		let request: RequestBuilder<ThumbAsset, ThumbAsset.ThumbAssetTokenizer, GetTokenizer> = RequestBuilder<ThumbAsset, ThumbAsset.ThumbAssetTokenizer, GetTokenizer>(service: "thumbasset", action: "get")
			.setParam(key: "thumbAssetId", value: thumbAssetId)

		return request
	}

	public class GetByEntryIdTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
	}

	public static func getByEntryId(entryId: String) -> ArrayRequestBuilder<ThumbAsset, ArrayTokenizedObject<ThumbAsset.ThumbAssetTokenizer>, GetByEntryIdTokenizer> {
		let request: ArrayRequestBuilder<ThumbAsset, ArrayTokenizedObject<ThumbAsset.ThumbAssetTokenizer>, GetByEntryIdTokenizer> = ArrayRequestBuilder<ThumbAsset, ArrayTokenizedObject<ThumbAsset.ThumbAssetTokenizer>, GetByEntryIdTokenizer>(service: "thumbasset", action: "getByEntryId")
			.setParam(key: "entryId", value: entryId)

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
		let request: RequestBuilder<RemotePathListResponse, RemotePathListResponse.RemotePathListResponseTokenizer, GetRemotePathsTokenizer> = RequestBuilder<RemotePathListResponse, RemotePathListResponse.RemotePathListResponseTokenizer, GetRemotePathsTokenizer>(service: "thumbasset", action: "getRemotePaths")
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
		
		public func thumbParams<T: ThumbParams.ThumbParamsTokenizer>() -> T {
			return T(self.append("thumbParams"))
		}
	}

	public static func getUrl(id: String) -> RequestBuilder<String, BaseTokenizedObject, GetUrlTokenizer> {
		return getUrl(id: id, storageId: nil)
	}

	public static func getUrl(id: String, storageId: Int?) -> RequestBuilder<String, BaseTokenizedObject, GetUrlTokenizer> {
		return getUrl(id: id, storageId: storageId, thumbParams: nil)
	}

	/**  Get download URL for the asset  */
	public static func getUrl(id: String, storageId: Int?, thumbParams: ThumbParams?) -> RequestBuilder<String, BaseTokenizedObject, GetUrlTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, GetUrlTokenizer> = RequestBuilder<String, BaseTokenizedObject, GetUrlTokenizer>(service: "thumbasset", action: "getUrl")
			.setParam(key: "id", value: id)
			.setParam(key: "storageId", value: storageId)
			.setParam(key: "thumbParams", value: thumbParams)

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

	public static func list() -> RequestBuilder<ThumbAssetListResponse, ThumbAssetListResponse.ThumbAssetListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: AssetFilter?) -> RequestBuilder<ThumbAssetListResponse, ThumbAssetListResponse.ThumbAssetListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List Thumbnail Assets by filter and pager  */
	public static func list(filter: AssetFilter?, pager: FilterPager?) -> RequestBuilder<ThumbAssetListResponse, ThumbAssetListResponse.ThumbAssetListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<ThumbAssetListResponse, ThumbAssetListResponse.ThumbAssetListResponseTokenizer, ListTokenizer> = RequestBuilder<ThumbAssetListResponse, ThumbAssetListResponse.ThumbAssetListResponseTokenizer, ListTokenizer>(service: "thumbasset", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class RegenerateTokenizer: ClientTokenizer  {
		
		public var thumbAssetId: BaseTokenizedObject {
			get {
				return self.append("thumbAssetId") 
			}
		}
	}

	public static func regenerate(thumbAssetId: String) -> RequestBuilder<ThumbAsset, ThumbAsset.ThumbAssetTokenizer, RegenerateTokenizer> {
		let request: RequestBuilder<ThumbAsset, ThumbAsset.ThumbAssetTokenizer, RegenerateTokenizer> = RequestBuilder<ThumbAsset, ThumbAsset.ThumbAssetTokenizer, RegenerateTokenizer>(service: "thumbasset", action: "regenerate")
			.setParam(key: "thumbAssetId", value: thumbAssetId)

		return request
	}

	public class SetAsDefaultTokenizer: ClientTokenizer  {
		
		public var thumbAssetId: BaseTokenizedObject {
			get {
				return self.append("thumbAssetId") 
			}
		}
	}

	/**  Tags the thumbnail as DEFAULT_THUMB and removes that tag from all other
	  thumbnail assets of the entry.   Create a new file sync link on the entry
	  thumbnail that points to the thumbnail asset file sync.  */
	public static func setAsDefault(thumbAssetId: String) -> NullRequestBuilder<SetAsDefaultTokenizer> {
		let request: NullRequestBuilder<SetAsDefaultTokenizer> = NullRequestBuilder<SetAsDefaultTokenizer>(service: "thumbasset", action: "setAsDefault")
			.setParam(key: "thumbAssetId", value: thumbAssetId)

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

	/**  Update content of thumbnail asset  */
	public static func setContent(id: String, contentResource: ContentResource) -> RequestBuilder<ThumbAsset, ThumbAsset.ThumbAssetTokenizer, SetContentTokenizer> {
		let request: RequestBuilder<ThumbAsset, ThumbAsset.ThumbAssetTokenizer, SetContentTokenizer> = RequestBuilder<ThumbAsset, ThumbAsset.ThumbAssetTokenizer, SetContentTokenizer>(service: "thumbasset", action: "setContent")
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
		
		public func thumbAsset<T: ThumbAsset.ThumbAssetTokenizer>() -> T {
			return T(self.append("thumbAsset"))
		}
	}

	/**  Update thumbnail asset  */
	public static func update(id: String, thumbAsset: ThumbAsset) -> RequestBuilder<ThumbAsset, ThumbAsset.ThumbAssetTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<ThumbAsset, ThumbAsset.ThumbAssetTokenizer, UpdateTokenizer> = RequestBuilder<ThumbAsset, ThumbAsset.ThumbAssetTokenizer, UpdateTokenizer>(service: "thumbasset", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "thumbAsset", value: thumbAsset)

		return request
	}
}
