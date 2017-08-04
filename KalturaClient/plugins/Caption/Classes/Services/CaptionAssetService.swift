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

/**  Retrieve information and invoke actions on caption Asset  */
public final class CaptionAssetService{

	/**  Add caption asset  */
	public static func add(entryId: String, captionAsset: CaptionAsset) -> RequestBuilder<CaptionAsset> {
		let request: RequestBuilder<CaptionAsset> = RequestBuilder<CaptionAsset>(service: "caption_captionasset", action: "add")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "captionAsset", value: captionAsset)

		return request
	}

	public static func delete(captionAssetId: String) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "caption_captionasset", action: "delete")
			.setBody(key: "captionAssetId", value: captionAssetId)

		return request
	}

	public static func get(captionAssetId: String) -> RequestBuilder<CaptionAsset> {
		let request: RequestBuilder<CaptionAsset> = RequestBuilder<CaptionAsset>(service: "caption_captionasset", action: "get")
			.setBody(key: "captionAssetId", value: captionAssetId)

		return request
	}

	/**  Get remote storage existing paths for the asset  */
	public static func getRemotePaths(id: String) -> RequestBuilder<RemotePathListResponse> {
		let request: RequestBuilder<RemotePathListResponse> = RequestBuilder<RemotePathListResponse>(service: "caption_captionasset", action: "getRemotePaths")
			.setBody(key: "id", value: id)

		return request
	}

	public static func getUrl(id: String) -> RequestBuilder<String> {
		return getUrl(id: id, storageId: nil)
	}

	/**  Get download URL for the asset  */
	public static func getUrl(id: String, storageId: Int?) -> RequestBuilder<String> {
		let request: RequestBuilder<String> = RequestBuilder<String>(service: "caption_captionasset", action: "getUrl")
			.setBody(key: "id", value: id)
			.setBody(key: "storageId", value: storageId)

		return request
	}

	public static func list() -> RequestBuilder<CaptionAssetListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: AssetFilter?) -> RequestBuilder<CaptionAssetListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List caption Assets by filter and pager  */
	public static func list(filter: AssetFilter?, pager: FilterPager?) -> RequestBuilder<CaptionAssetListResponse> {
		let request: RequestBuilder<CaptionAssetListResponse> = RequestBuilder<CaptionAssetListResponse>(service: "caption_captionasset", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Markss the caption as default and removes that mark from all other caption
	  assets of the entry.  */
	public static func setAsDefault(captionAssetId: String) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "caption_captionasset", action: "setAsDefault")
			.setBody(key: "captionAssetId", value: captionAssetId)

		return request
	}

	/**  Update content of caption asset  */
	public static func setContent(id: String, contentResource: ContentResource) -> RequestBuilder<CaptionAsset> {
		let request: RequestBuilder<CaptionAsset> = RequestBuilder<CaptionAsset>(service: "caption_captionasset", action: "setContent")
			.setBody(key: "id", value: id)
			.setBody(key: "contentResource", value: contentResource)

		return request
	}

	/**  Update caption asset  */
	public static func update(id: String, captionAsset: CaptionAsset) -> RequestBuilder<CaptionAsset> {
		let request: RequestBuilder<CaptionAsset> = RequestBuilder<CaptionAsset>(service: "caption_captionasset", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "captionAsset", value: captionAsset)

		return request
	}
}
