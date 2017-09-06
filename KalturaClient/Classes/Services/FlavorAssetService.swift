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

/**  Retrieve information and invoke actions on Flavor Asset  */
public final class FlavorAssetService{

	public class AddTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public func flavorAsset<T: FlavorAsset.FlavorAssetTokenizer>() -> T {
			return T(self.append("flavorAsset"))
		}
	}

	/**  Add flavor asset  */
	public static func add(entryId: String, flavorAsset: FlavorAsset) -> RequestBuilder<FlavorAsset, FlavorAsset.FlavorAssetTokenizer, AddTokenizer> {
		let request: RequestBuilder<FlavorAsset, FlavorAsset.FlavorAssetTokenizer, AddTokenizer> = RequestBuilder<FlavorAsset, FlavorAsset.FlavorAssetTokenizer, AddTokenizer>(service: "flavorasset", action: "add")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "flavorAsset", value: flavorAsset)

		return request
	}

	public class ConvertTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var flavorParamsId: BaseTokenizedObject {
			get {
				return self.append("flavorParamsId") 
			}
		}
		
		public var priority: BaseTokenizedObject {
			get {
				return self.append("priority") 
			}
		}
	}

	public static func convert(entryId: String, flavorParamsId: Int) -> NullRequestBuilder<ConvertTokenizer> {
		return convert(entryId: entryId, flavorParamsId: flavorParamsId, priority: 0)
	}

	/**  Add and convert new Flavor Asset for Entry with specific Flavor Params  */
	public static func convert(entryId: String, flavorParamsId: Int, priority: Int?) -> NullRequestBuilder<ConvertTokenizer> {
		let request: NullRequestBuilder<ConvertTokenizer> = NullRequestBuilder<ConvertTokenizer>(service: "flavorasset", action: "convert")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "flavorParamsId", value: flavorParamsId)
			.setBody(key: "priority", value: priority)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete Flavor Asset by ID  */
	public static func delete(id: String) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "flavorasset", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	public class DeleteLocalContentTokenizer: ClientTokenizer  {
		
		public var assetId: BaseTokenizedObject {
			get {
				return self.append("assetId") 
			}
		}
	}

	/**  delete all local file syncs for this asset  */
	public static func deleteLocalContent(assetId: String) -> NullRequestBuilder<DeleteLocalContentTokenizer> {
		let request: NullRequestBuilder<DeleteLocalContentTokenizer> = NullRequestBuilder<DeleteLocalContentTokenizer>(service: "flavorasset", action: "deleteLocalContent")
			.setBody(key: "assetId", value: assetId)

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
		let request: RequestBuilder<FlavorAsset, FlavorAsset.FlavorAssetTokenizer, ExportTokenizer> = RequestBuilder<FlavorAsset, FlavorAsset.FlavorAssetTokenizer, ExportTokenizer>(service: "flavorasset", action: "export")
			.setBody(key: "assetId", value: assetId)
			.setBody(key: "storageProfileId", value: storageProfileId)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Get Flavor Asset by ID  */
	public static func get(id: String) -> RequestBuilder<FlavorAsset, FlavorAsset.FlavorAssetTokenizer, GetTokenizer> {
		let request: RequestBuilder<FlavorAsset, FlavorAsset.FlavorAssetTokenizer, GetTokenizer> = RequestBuilder<FlavorAsset, FlavorAsset.FlavorAssetTokenizer, GetTokenizer>(service: "flavorasset", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public class GetByEntryIdTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
	}

	/**  Get Flavor Assets for Entry  */
	public static func getByEntryId(entryId: String) -> ArrayRequestBuilder<FlavorAsset, ArrayTokenizedObject<FlavorAsset.FlavorAssetTokenizer>, GetByEntryIdTokenizer> {
		let request: ArrayRequestBuilder<FlavorAsset, ArrayTokenizedObject<FlavorAsset.FlavorAssetTokenizer>, GetByEntryIdTokenizer> = ArrayRequestBuilder<FlavorAsset, ArrayTokenizedObject<FlavorAsset.FlavorAssetTokenizer>, GetByEntryIdTokenizer>(service: "flavorasset", action: "getByEntryId")
			.setBody(key: "entryId", value: entryId)

		return request
	}

	public class GetDownloadUrlTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var useCdn: BaseTokenizedObject {
			get {
				return self.append("useCdn") 
			}
		}
	}

	public static func getDownloadUrl(id: String) -> RequestBuilder<String, BaseTokenizedObject, GetDownloadUrlTokenizer> {
		return getDownloadUrl(id: id, useCdn: false)
	}

	/**  Get download URL for the Flavor Asset  */
	public static func getDownloadUrl(id: String, useCdn: Bool?) -> RequestBuilder<String, BaseTokenizedObject, GetDownloadUrlTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, GetDownloadUrlTokenizer> = RequestBuilder<String, BaseTokenizedObject, GetDownloadUrlTokenizer>(service: "flavorasset", action: "getDownloadUrl")
			.setBody(key: "id", value: id)
			.setBody(key: "useCdn", value: useCdn)

		return request
	}

	public class GetFlavorAssetsWithParamsTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
	}

	/**  Get Flavor Asset with the relevant Flavor Params (Flavor Params can exist
	  without Flavor Asset &amp; vice versa)  */
	public static func getFlavorAssetsWithParams(entryId: String) -> ArrayRequestBuilder<FlavorAssetWithParams, ArrayTokenizedObject<FlavorAssetWithParams.FlavorAssetWithParamsTokenizer>, GetFlavorAssetsWithParamsTokenizer> {
		let request: ArrayRequestBuilder<FlavorAssetWithParams, ArrayTokenizedObject<FlavorAssetWithParams.FlavorAssetWithParamsTokenizer>, GetFlavorAssetsWithParamsTokenizer> = ArrayRequestBuilder<FlavorAssetWithParams, ArrayTokenizedObject<FlavorAssetWithParams.FlavorAssetWithParamsTokenizer>, GetFlavorAssetsWithParamsTokenizer>(service: "flavorasset", action: "getFlavorAssetsWithParams")
			.setBody(key: "entryId", value: entryId)

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
		let request: RequestBuilder<RemotePathListResponse, RemotePathListResponse.RemotePathListResponseTokenizer, GetRemotePathsTokenizer> = RequestBuilder<RemotePathListResponse, RemotePathListResponse.RemotePathListResponseTokenizer, GetRemotePathsTokenizer>(service: "flavorasset", action: "getRemotePaths")
			.setBody(key: "id", value: id)

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
		
		public var forceProxy: BaseTokenizedObject {
			get {
				return self.append("forceProxy") 
			}
		}
		
		public func options<T: FlavorAssetUrlOptions.FlavorAssetUrlOptionsTokenizer>() -> T {
			return T(self.append("options"))
		}
	}

	public static func getUrl(id: String) -> RequestBuilder<String, BaseTokenizedObject, GetUrlTokenizer> {
		return getUrl(id: id, storageId: nil)
	}

	public static func getUrl(id: String, storageId: Int?) -> RequestBuilder<String, BaseTokenizedObject, GetUrlTokenizer> {
		return getUrl(id: id, storageId: storageId, forceProxy: false)
	}

	public static func getUrl(id: String, storageId: Int?, forceProxy: Bool?) -> RequestBuilder<String, BaseTokenizedObject, GetUrlTokenizer> {
		return getUrl(id: id, storageId: storageId, forceProxy: forceProxy, options: nil)
	}

	/**  Get download URL for the asset  */
	public static func getUrl(id: String, storageId: Int?, forceProxy: Bool?, options: FlavorAssetUrlOptions?) -> RequestBuilder<String, BaseTokenizedObject, GetUrlTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, GetUrlTokenizer> = RequestBuilder<String, BaseTokenizedObject, GetUrlTokenizer>(service: "flavorasset", action: "getUrl")
			.setBody(key: "id", value: id)
			.setBody(key: "storageId", value: storageId)
			.setBody(key: "forceProxy", value: forceProxy)
			.setBody(key: "options", value: options)

		return request
	}

	public class GetWebPlayableByEntryIdTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
	}

	/**  Get web playable Flavor Assets for Entry  */
	public static func getWebPlayableByEntryId(entryId: String) -> ArrayRequestBuilder<FlavorAsset, ArrayTokenizedObject<FlavorAsset.FlavorAssetTokenizer>, GetWebPlayableByEntryIdTokenizer> {
		let request: ArrayRequestBuilder<FlavorAsset, ArrayTokenizedObject<FlavorAsset.FlavorAssetTokenizer>, GetWebPlayableByEntryIdTokenizer> = ArrayRequestBuilder<FlavorAsset, ArrayTokenizedObject<FlavorAsset.FlavorAssetTokenizer>, GetWebPlayableByEntryIdTokenizer>(service: "flavorasset", action: "getWebPlayableByEntryId")
			.setBody(key: "entryId", value: entryId)

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

	public static func list() -> RequestBuilder<FlavorAssetListResponse, FlavorAssetListResponse.FlavorAssetListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: AssetFilter?) -> RequestBuilder<FlavorAssetListResponse, FlavorAssetListResponse.FlavorAssetListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List Flavor Assets by filter and pager  */
	public static func list(filter: AssetFilter?, pager: FilterPager?) -> RequestBuilder<FlavorAssetListResponse, FlavorAssetListResponse.FlavorAssetListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<FlavorAssetListResponse, FlavorAssetListResponse.FlavorAssetListResponseTokenizer, ListTokenizer> = RequestBuilder<FlavorAssetListResponse, FlavorAssetListResponse.FlavorAssetListResponseTokenizer, ListTokenizer>(service: "flavorasset", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public class ReconvertTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Reconvert Flavor Asset by ID  */
	public static func reconvert(id: String) -> NullRequestBuilder<ReconvertTokenizer> {
		let request: NullRequestBuilder<ReconvertTokenizer> = NullRequestBuilder<ReconvertTokenizer>(service: "flavorasset", action: "reconvert")
			.setBody(key: "id", value: id)

		return request
	}

	public class ServeAdStitchCmdTokenizer: ClientTokenizer  {
		
		public var assetId: BaseTokenizedObject {
			get {
				return self.append("assetId") 
			}
		}
		
		public var ffprobeJson: BaseTokenizedObject {
			get {
				return self.append("ffprobeJson") 
			}
		}
		
		public var duration: BaseTokenizedObject {
			get {
				return self.append("duration") 
			}
		}
	}

	public static func serveAdStitchCmd(assetId: String) -> RequestBuilder<String, BaseTokenizedObject, ServeAdStitchCmdTokenizer> {
		return serveAdStitchCmd(assetId: assetId, ffprobeJson: nil)
	}

	public static func serveAdStitchCmd(assetId: String, ffprobeJson: String?) -> RequestBuilder<String, BaseTokenizedObject, ServeAdStitchCmdTokenizer> {
		return serveAdStitchCmd(assetId: assetId, ffprobeJson: ffprobeJson, duration: nil)
	}

	/**  serve cmd line to transcode the ad  */
	public static func serveAdStitchCmd(assetId: String, ffprobeJson: String?, duration: String?) -> RequestBuilder<String, BaseTokenizedObject, ServeAdStitchCmdTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, ServeAdStitchCmdTokenizer> = RequestBuilder<String, BaseTokenizedObject, ServeAdStitchCmdTokenizer>(service: "flavorasset", action: "serveAdStitchCmd")
			.setBody(key: "assetId", value: assetId)
			.setBody(key: "ffprobeJson", value: ffprobeJson)
			.setBody(key: "duration", value: duration)

		return request
	}

	public class SetAsSourceTokenizer: ClientTokenizer  {
		
		public var assetId: BaseTokenizedObject {
			get {
				return self.append("assetId") 
			}
		}
	}

	/**  Set a given flavor as the original flavor  */
	public static func setAsSource(assetId: String) -> NullRequestBuilder<SetAsSourceTokenizer> {
		let request: NullRequestBuilder<SetAsSourceTokenizer> = NullRequestBuilder<SetAsSourceTokenizer>(service: "flavorasset", action: "setAsSource")
			.setBody(key: "assetId", value: assetId)

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

	/**  Update content of flavor asset  */
	public static func setContent(id: String, contentResource: ContentResource) -> RequestBuilder<FlavorAsset, FlavorAsset.FlavorAssetTokenizer, SetContentTokenizer> {
		let request: RequestBuilder<FlavorAsset, FlavorAsset.FlavorAssetTokenizer, SetContentTokenizer> = RequestBuilder<FlavorAsset, FlavorAsset.FlavorAssetTokenizer, SetContentTokenizer>(service: "flavorasset", action: "setContent")
			.setBody(key: "id", value: id)
			.setBody(key: "contentResource", value: contentResource)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func flavorAsset<T: FlavorAsset.FlavorAssetTokenizer>() -> T {
			return T(self.append("flavorAsset"))
		}
	}

	/**  Update flavor asset  */
	public static func update(id: String, flavorAsset: FlavorAsset) -> RequestBuilder<FlavorAsset, FlavorAsset.FlavorAssetTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<FlavorAsset, FlavorAsset.FlavorAssetTokenizer, UpdateTokenizer> = RequestBuilder<FlavorAsset, FlavorAsset.FlavorAssetTokenizer, UpdateTokenizer>(service: "flavorasset", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "flavorAsset", value: flavorAsset)

		return request
	}
}
