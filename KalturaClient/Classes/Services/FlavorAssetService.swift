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

/**  Retrieve information and invoke actions on Flavor Asset  */
public final class FlavorAssetService{

	/**  Add flavor asset  */
	public static func add(entryId: String, flavorAsset: FlavorAsset) -> RequestBuilder<FlavorAsset> {
		let request: RequestBuilder<FlavorAsset> = RequestBuilder<FlavorAsset>(service: "flavorasset", action: "add")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "flavorAsset", value: flavorAsset)

		return request
	}

	public static func convert(entryId: String, flavorParamsId: Int) -> RequestBuilder<Void> {
		return convert(entryId: entryId, flavorParamsId: flavorParamsId, priority: 0)
	}

	/**  Add and convert new Flavor Asset for Entry with specific Flavor Params  */
	public static func convert(entryId: String, flavorParamsId: Int, priority: Int?) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "flavorasset", action: "convert")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "flavorParamsId", value: flavorParamsId)
			.setBody(key: "priority", value: priority)

		return request
	}

	/**  Delete Flavor Asset by ID  */
	public static func delete(id: String) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "flavorasset", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	/**  delete all local file syncs for this asset  */
	public static func deleteLocalContent(assetId: String) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "flavorasset", action: "deleteLocalContent")
			.setBody(key: "assetId", value: assetId)

		return request
	}

	/**  manually export an asset  */
	public static func export(assetId: String, storageProfileId: Int) -> RequestBuilder<FlavorAsset> {
		let request: RequestBuilder<FlavorAsset> = RequestBuilder<FlavorAsset>(service: "flavorasset", action: "export")
			.setBody(key: "assetId", value: assetId)
			.setBody(key: "storageProfileId", value: storageProfileId)

		return request
	}

	/**  Get Flavor Asset by ID  */
	public static func get(id: String) -> RequestBuilder<FlavorAsset> {
		let request: RequestBuilder<FlavorAsset> = RequestBuilder<FlavorAsset>(service: "flavorasset", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Get Flavor Assets for Entry  */
	public static func getByEntryId(entryId: String) -> RequestBuilder<Array<FlavorAsset>> {
		let request: ArrayRequestBuilder<FlavorAsset> = ArrayRequestBuilder<FlavorAsset>(service: "flavorasset", action: "getByEntryId")
			.setBody(key: "entryId", value: entryId)

		return request
	}

	public static func getDownloadUrl(id: String) -> RequestBuilder<String> {
		return getDownloadUrl(id: id, useCdn: false)
	}

	/**  Get download URL for the Flavor Asset  */
	public static func getDownloadUrl(id: String, useCdn: Bool?) -> RequestBuilder<String> {
		let request: RequestBuilder<String> = RequestBuilder<String>(service: "flavorasset", action: "getDownloadUrl")
			.setBody(key: "id", value: id)
			.setBody(key: "useCdn", value: useCdn)

		return request
	}

	/**  Get Flavor Asset with the relevant Flavor Params (Flavor Params can exist
	  without Flavor Asset &amp; vice versa)  */
	public static func getFlavorAssetsWithParams(entryId: String) -> RequestBuilder<Array<FlavorAssetWithParams>> {
		let request: ArrayRequestBuilder<FlavorAssetWithParams> = ArrayRequestBuilder<FlavorAssetWithParams>(service: "flavorasset", action: "getFlavorAssetsWithParams")
			.setBody(key: "entryId", value: entryId)

		return request
	}

	/**  Get remote storage existing paths for the asset  */
	public static func getRemotePaths(id: String) -> RequestBuilder<RemotePathListResponse> {
		let request: RequestBuilder<RemotePathListResponse> = RequestBuilder<RemotePathListResponse>(service: "flavorasset", action: "getRemotePaths")
			.setBody(key: "id", value: id)

		return request
	}

	public static func getUrl(id: String) -> RequestBuilder<String> {
		return getUrl(id: id, storageId: nil)
	}

	public static func getUrl(id: String, storageId: Int?) -> RequestBuilder<String> {
		return getUrl(id: id, storageId: storageId, forceProxy: false)
	}

	public static func getUrl(id: String, storageId: Int?, forceProxy: Bool?) -> RequestBuilder<String> {
		return getUrl(id: id, storageId: storageId, forceProxy: forceProxy, options: nil)
	}

	/**  Get download URL for the asset  */
	public static func getUrl(id: String, storageId: Int?, forceProxy: Bool?, options: FlavorAssetUrlOptions?) -> RequestBuilder<String> {
		let request: RequestBuilder<String> = RequestBuilder<String>(service: "flavorasset", action: "getUrl")
			.setBody(key: "id", value: id)
			.setBody(key: "storageId", value: storageId)
			.setBody(key: "forceProxy", value: forceProxy)
			.setBody(key: "options", value: options)

		return request
	}

	/**  Get web playable Flavor Assets for Entry  */
	public static func getWebPlayableByEntryId(entryId: String) -> RequestBuilder<Array<FlavorAsset>> {
		let request: ArrayRequestBuilder<FlavorAsset> = ArrayRequestBuilder<FlavorAsset>(service: "flavorasset", action: "getWebPlayableByEntryId")
			.setBody(key: "entryId", value: entryId)

		return request
	}

	public static func list() -> RequestBuilder<FlavorAssetListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: AssetFilter?) -> RequestBuilder<FlavorAssetListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List Flavor Assets by filter and pager  */
	public static func list(filter: AssetFilter?, pager: FilterPager?) -> RequestBuilder<FlavorAssetListResponse> {
		let request: RequestBuilder<FlavorAssetListResponse> = RequestBuilder<FlavorAssetListResponse>(service: "flavorasset", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Reconvert Flavor Asset by ID  */
	public static func reconvert(id: String) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "flavorasset", action: "reconvert")
			.setBody(key: "id", value: id)

		return request
	}

	public static func serveAdStitchCmd(assetId: String) -> RequestBuilder<String> {
		return serveAdStitchCmd(assetId: assetId, ffprobeJson: nil)
	}

	public static func serveAdStitchCmd(assetId: String, ffprobeJson: String?) -> RequestBuilder<String> {
		return serveAdStitchCmd(assetId: assetId, ffprobeJson: ffprobeJson, duration: nil)
	}

	/**  serve cmd line to transcode the ad  */
	public static func serveAdStitchCmd(assetId: String, ffprobeJson: String?, duration: String?) -> RequestBuilder<String> {
		let request: RequestBuilder<String> = RequestBuilder<String>(service: "flavorasset", action: "serveAdStitchCmd")
			.setBody(key: "assetId", value: assetId)
			.setBody(key: "ffprobeJson", value: ffprobeJson)
			.setBody(key: "duration", value: duration)

		return request
	}

	/**  Set a given flavor as the original flavor  */
	public static func setAsSource(assetId: String) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "flavorasset", action: "setAsSource")
			.setBody(key: "assetId", value: assetId)

		return request
	}

	/**  Update content of flavor asset  */
	public static func setContent(id: String, contentResource: ContentResource) -> RequestBuilder<FlavorAsset> {
		let request: RequestBuilder<FlavorAsset> = RequestBuilder<FlavorAsset>(service: "flavorasset", action: "setContent")
			.setBody(key: "id", value: id)
			.setBody(key: "contentResource", value: contentResource)

		return request
	}

	/**  Update flavor asset  */
	public static func update(id: String, flavorAsset: FlavorAsset) -> RequestBuilder<FlavorAsset> {
		let request: RequestBuilder<FlavorAsset> = RequestBuilder<FlavorAsset>(service: "flavorasset", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "flavorAsset", value: flavorAsset)

		return request
	}
}
