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

/**  Retrieve information and invoke actions on Thumb Asset  */
public final class ThumbAssetService{

	/**  Add thumbnail asset  */
	public static func add(entryId: String, thumbAsset: ThumbAsset) -> RequestBuilder<ThumbAsset> {
		let request: RequestBuilder<ThumbAsset> = RequestBuilder<ThumbAsset>(service: "thumbasset", action: "add")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "thumbAsset", value: thumbAsset)

		return request
	}

	public static func addFromImage(entryId: String, fileData: RequestFile) -> RequestBuilder<ThumbAsset> {
		let request: RequestBuilder<ThumbAsset> = RequestBuilder<ThumbAsset>(service: "thumbasset", action: "addFromImage")
			.setBody(key: "entryId", value: entryId)
			.setFile(key: "fileData", value: fileData)

		return request
	}

	public static func addFromUrl(entryId: String, url: String) -> RequestBuilder<ThumbAsset> {
		let request: RequestBuilder<ThumbAsset> = RequestBuilder<ThumbAsset>(service: "thumbasset", action: "addFromUrl")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "url", value: url)

		return request
	}

	public static func delete(thumbAssetId: String) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "thumbasset", action: "delete")
			.setBody(key: "thumbAssetId", value: thumbAssetId)

		return request
	}

	/**  manually export an asset  */
	public static func export(assetId: String, storageProfileId: Int) -> RequestBuilder<FlavorAsset> {
		let request: RequestBuilder<FlavorAsset> = RequestBuilder<FlavorAsset>(service: "thumbasset", action: "export")
			.setBody(key: "assetId", value: assetId)
			.setBody(key: "storageProfileId", value: storageProfileId)

		return request
	}

	public static func generate(entryId: String, thumbParams: ThumbParams) -> RequestBuilder<ThumbAsset> {
		return generate(entryId: entryId, thumbParams: thumbParams, sourceAssetId: nil)
	}

	public static func generate(entryId: String, thumbParams: ThumbParams, sourceAssetId: String?) -> RequestBuilder<ThumbAsset> {
		let request: RequestBuilder<ThumbAsset> = RequestBuilder<ThumbAsset>(service: "thumbasset", action: "generate")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "thumbParams", value: thumbParams)
			.setBody(key: "sourceAssetId", value: sourceAssetId)

		return request
	}

	public static func generateByEntryId(entryId: String, destThumbParamsId: Int) -> RequestBuilder<ThumbAsset> {
		let request: RequestBuilder<ThumbAsset> = RequestBuilder<ThumbAsset>(service: "thumbasset", action: "generateByEntryId")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "destThumbParamsId", value: destThumbParamsId)

		return request
	}

	public static func get(thumbAssetId: String) -> RequestBuilder<ThumbAsset> {
		let request: RequestBuilder<ThumbAsset> = RequestBuilder<ThumbAsset>(service: "thumbasset", action: "get")
			.setBody(key: "thumbAssetId", value: thumbAssetId)

		return request
	}

	public static func getByEntryId(entryId: String) -> RequestBuilder<Array<ThumbAsset>> {
		let request: ArrayRequestBuilder<ThumbAsset> = ArrayRequestBuilder<ThumbAsset>(service: "thumbasset", action: "getByEntryId")
			.setBody(key: "entryId", value: entryId)

		return request
	}

	/**  Get remote storage existing paths for the asset  */
	public static func getRemotePaths(id: String) -> RequestBuilder<RemotePathListResponse> {
		let request: RequestBuilder<RemotePathListResponse> = RequestBuilder<RemotePathListResponse>(service: "thumbasset", action: "getRemotePaths")
			.setBody(key: "id", value: id)

		return request
	}

	public static func getUrl(id: String) -> RequestBuilder<String> {
		return getUrl(id: id, storageId: nil)
	}

	public static func getUrl(id: String, storageId: Int?) -> RequestBuilder<String> {
		return getUrl(id: id, storageId: storageId, thumbParams: nil)
	}

	/**  Get download URL for the asset  */
	public static func getUrl(id: String, storageId: Int?, thumbParams: ThumbParams?) -> RequestBuilder<String> {
		let request: RequestBuilder<String> = RequestBuilder<String>(service: "thumbasset", action: "getUrl")
			.setBody(key: "id", value: id)
			.setBody(key: "storageId", value: storageId)
			.setBody(key: "thumbParams", value: thumbParams)

		return request
	}

	public static func list() -> RequestBuilder<ThumbAssetListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: AssetFilter?) -> RequestBuilder<ThumbAssetListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List Thumbnail Assets by filter and pager  */
	public static func list(filter: AssetFilter?, pager: FilterPager?) -> RequestBuilder<ThumbAssetListResponse> {
		let request: RequestBuilder<ThumbAssetListResponse> = RequestBuilder<ThumbAssetListResponse>(service: "thumbasset", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public static func regenerate(thumbAssetId: String) -> RequestBuilder<ThumbAsset> {
		let request: RequestBuilder<ThumbAsset> = RequestBuilder<ThumbAsset>(service: "thumbasset", action: "regenerate")
			.setBody(key: "thumbAssetId", value: thumbAssetId)

		return request
	}

	/**  Tags the thumbnail as DEFAULT_THUMB and removes that tag from all other
	  thumbnail assets of the entry.   Create a new file sync link on the entry
	  thumbnail that points to the thumbnail asset file sync.  */
	public static func setAsDefault(thumbAssetId: String) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "thumbasset", action: "setAsDefault")
			.setBody(key: "thumbAssetId", value: thumbAssetId)

		return request
	}

	/**  Update content of thumbnail asset  */
	public static func setContent(id: String, contentResource: ContentResource) -> RequestBuilder<ThumbAsset> {
		let request: RequestBuilder<ThumbAsset> = RequestBuilder<ThumbAsset>(service: "thumbasset", action: "setContent")
			.setBody(key: "id", value: id)
			.setBody(key: "contentResource", value: contentResource)

		return request
	}

	/**  Update thumbnail asset  */
	public static func update(id: String, thumbAsset: ThumbAsset) -> RequestBuilder<ThumbAsset> {
		let request: RequestBuilder<ThumbAsset> = RequestBuilder<ThumbAsset>(service: "thumbasset", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "thumbAsset", value: thumbAsset)

		return request
	}
}
