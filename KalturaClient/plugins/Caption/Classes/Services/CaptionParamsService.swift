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

/**  Add &amp; Manage Caption Params  */
public final class CaptionParamsService{

	/**  Add new Caption Params  */
	public static func add(captionParams: CaptionParams) -> RequestBuilder<CaptionParams> {
		let request: RequestBuilder<CaptionParams> = RequestBuilder<CaptionParams>(service: "caption_captionparams", action: "add")
			.setBody(key: "captionParams", value: captionParams)

		return request
	}

	/**  Delete Caption Params by ID  */
	public static func delete(id: Int) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "caption_captionparams", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Get Caption Params by ID  */
	public static func get(id: Int) -> RequestBuilder<CaptionParams> {
		let request: RequestBuilder<CaptionParams> = RequestBuilder<CaptionParams>(service: "caption_captionparams", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public static func list() -> RequestBuilder<CaptionParamsListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: CaptionParamsFilter?) -> RequestBuilder<CaptionParamsListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List Caption Params by filter with paging support (By default - all system
	  default params will be listed too)  */
	public static func list(filter: CaptionParamsFilter?, pager: FilterPager?) -> RequestBuilder<CaptionParamsListResponse> {
		let request: RequestBuilder<CaptionParamsListResponse> = RequestBuilder<CaptionParamsListResponse>(service: "caption_captionparams", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Update Caption Params by ID  */
	public static func update(id: Int, captionParams: CaptionParams) -> RequestBuilder<CaptionParams> {
		let request: RequestBuilder<CaptionParams> = RequestBuilder<CaptionParams>(service: "caption_captionparams", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "captionParams", value: captionParams)

		return request
	}
}
