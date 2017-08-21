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

/**  Thumbnail Params Output service  */
public final class ThumbParamsOutputService{

	/**  Get thumb params output object by ID  */
	public static func get(id: Int) -> RequestBuilder<ThumbParamsOutput> {
		let request: RequestBuilder<ThumbParamsOutput> = RequestBuilder<ThumbParamsOutput>(service: "thumbparamsoutput", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public static func list() -> RequestBuilder<ThumbParamsOutputListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: ThumbParamsOutputFilter?) -> RequestBuilder<ThumbParamsOutputListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List thumb params output objects by filter and pager  */
	public static func list(filter: ThumbParamsOutputFilter?, pager: FilterPager?) -> RequestBuilder<ThumbParamsOutputListResponse> {
		let request: RequestBuilder<ThumbParamsOutputListResponse> = RequestBuilder<ThumbParamsOutputListResponse>(service: "thumbparamsoutput", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}
}
