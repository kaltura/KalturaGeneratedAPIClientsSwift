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

/**  Add &amp; Manage Thumb Params  */
public final class ThumbParamsService{

	/**  Add new Thumb Params  */
	public static func add(thumbParams: ThumbParams) -> RequestBuilder<ThumbParams> {
		let request: RequestBuilder<ThumbParams> = RequestBuilder<ThumbParams>(service: "thumbparams", action: "add")
			.setBody(key: "thumbParams", value: thumbParams)

		return request
	}

	/**  Delete Thumb Params by ID  */
	public static func delete(id: Int) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "thumbparams", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Get Thumb Params by ID  */
	public static func get(id: Int) -> RequestBuilder<ThumbParams> {
		let request: RequestBuilder<ThumbParams> = RequestBuilder<ThumbParams>(service: "thumbparams", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Get Thumb Params by Conversion Profile ID  */
	public static func getByConversionProfileId(conversionProfileId: Int) -> RequestBuilder<Array<ThumbParams>> {
		let request: ArrayRequestBuilder<ThumbParams> = ArrayRequestBuilder<ThumbParams>(service: "thumbparams", action: "getByConversionProfileId")
			.setBody(key: "conversionProfileId", value: conversionProfileId)

		return request
	}

	public static func list() -> RequestBuilder<ThumbParamsListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: ThumbParamsFilter?) -> RequestBuilder<ThumbParamsListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List Thumb Params by filter with paging support (By default - all system default
	  params will be listed too)  */
	public static func list(filter: ThumbParamsFilter?, pager: FilterPager?) -> RequestBuilder<ThumbParamsListResponse> {
		let request: RequestBuilder<ThumbParamsListResponse> = RequestBuilder<ThumbParamsListResponse>(service: "thumbparams", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Update Thumb Params by ID  */
	public static func update(id: Int, thumbParams: ThumbParams) -> RequestBuilder<ThumbParams> {
		let request: RequestBuilder<ThumbParams> = RequestBuilder<ThumbParams>(service: "thumbparams", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "thumbParams", value: thumbParams)

		return request
	}
}
