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

	/**  Add attachment asset  */
	public static func add(entryId: String, attachmentAsset: AttachmentAsset) -> RequestBuilder<AttachmentAsset> {
		let request: RequestBuilder<AttachmentAsset> = RequestBuilder<AttachmentAsset>(service: "attachment_attachmentasset", action: "add")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "attachmentAsset", value: attachmentAsset)

		return request
	}

	public static func delete(attachmentAssetId: String) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "attachment_attachmentasset", action: "delete")
			.setBody(key: "attachmentAssetId", value: attachmentAssetId)

		return request
	}

	public static func get(attachmentAssetId: String) -> RequestBuilder<AttachmentAsset> {
		let request: RequestBuilder<AttachmentAsset> = RequestBuilder<AttachmentAsset>(service: "attachment_attachmentasset", action: "get")
			.setBody(key: "attachmentAssetId", value: attachmentAssetId)

		return request
	}

	/**  Get remote storage existing paths for the asset  */
	public static func getRemotePaths(id: String) -> RequestBuilder<RemotePathListResponse> {
		let request: RequestBuilder<RemotePathListResponse> = RequestBuilder<RemotePathListResponse>(service: "attachment_attachmentasset", action: "getRemotePaths")
			.setBody(key: "id", value: id)

		return request
	}

	public static func getUrl(id: String) -> RequestBuilder<String> {
		return getUrl(id: id, storageId: nil)
	}

	/**  Get download URL for the asset  */
	public static func getUrl(id: String, storageId: Int?) -> RequestBuilder<String> {
		let request: RequestBuilder<String> = RequestBuilder<String>(service: "attachment_attachmentasset", action: "getUrl")
			.setBody(key: "id", value: id)
			.setBody(key: "storageId", value: storageId)

		return request
	}

	public static func list() -> RequestBuilder<AttachmentAssetListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: AssetFilter?) -> RequestBuilder<AttachmentAssetListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List attachment Assets by filter and pager  */
	public static func list(filter: AssetFilter?, pager: FilterPager?) -> RequestBuilder<AttachmentAssetListResponse> {
		let request: RequestBuilder<AttachmentAssetListResponse> = RequestBuilder<AttachmentAssetListResponse>(service: "attachment_attachmentasset", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Update content of attachment asset  */
	public static func setContent(id: String, contentResource: ContentResource) -> RequestBuilder<AttachmentAsset> {
		let request: RequestBuilder<AttachmentAsset> = RequestBuilder<AttachmentAsset>(service: "attachment_attachmentasset", action: "setContent")
			.setBody(key: "id", value: id)
			.setBody(key: "contentResource", value: contentResource)

		return request
	}

	/**  Update attachment asset  */
	public static func update(id: String, attachmentAsset: AttachmentAsset) -> RequestBuilder<AttachmentAsset> {
		let request: RequestBuilder<AttachmentAsset> = RequestBuilder<AttachmentAsset>(service: "attachment_attachmentasset", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "attachmentAsset", value: attachmentAsset)

		return request
	}
}
