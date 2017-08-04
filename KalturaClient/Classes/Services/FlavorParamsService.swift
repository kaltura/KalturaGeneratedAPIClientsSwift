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

/**  Add &amp; Manage Flavor Params  */
public final class FlavorParamsService{

	/**  Add new Flavor Params  */
	public static func add(flavorParams: FlavorParams) -> RequestBuilder<FlavorParams> {
		let request: RequestBuilder<FlavorParams> = RequestBuilder<FlavorParams>(service: "flavorparams", action: "add")
			.setBody(key: "flavorParams", value: flavorParams)

		return request
	}

	/**  Delete Flavor Params by ID  */
	public static func delete(id: Int) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "flavorparams", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Get Flavor Params by ID  */
	public static func get(id: Int) -> RequestBuilder<FlavorParams> {
		let request: RequestBuilder<FlavorParams> = RequestBuilder<FlavorParams>(service: "flavorparams", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Get Flavor Params by Conversion Profile ID  */
	public static func getByConversionProfileId(conversionProfileId: Int) -> RequestBuilder<Array<FlavorParams>> {
		let request: ArrayRequestBuilder<FlavorParams> = ArrayRequestBuilder<FlavorParams>(service: "flavorparams", action: "getByConversionProfileId")
			.setBody(key: "conversionProfileId", value: conversionProfileId)

		return request
	}

	public static func list() -> RequestBuilder<FlavorParamsListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: FlavorParamsFilter?) -> RequestBuilder<FlavorParamsListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List Flavor Params by filter with paging support (By default - all system
	  default params will be listed too)  */
	public static func list(filter: FlavorParamsFilter?, pager: FilterPager?) -> RequestBuilder<FlavorParamsListResponse> {
		let request: RequestBuilder<FlavorParamsListResponse> = RequestBuilder<FlavorParamsListResponse>(service: "flavorparams", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Update Flavor Params by ID  */
	public static func update(id: Int, flavorParams: FlavorParams) -> RequestBuilder<FlavorParams> {
		let request: RequestBuilder<FlavorParams> = RequestBuilder<FlavorParams>(service: "flavorparams", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "flavorParams", value: flavorParams)

		return request
	}
}
