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
// Copyright (C) 2006-2018  Kaltura Inc.
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

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Get thumb params output object by ID  */
	public static func get(id: Int) -> RequestBuilder<ThumbParamsOutput, ThumbParamsOutput.ThumbParamsOutputTokenizer, GetTokenizer> {
		let request: RequestBuilder<ThumbParamsOutput, ThumbParamsOutput.ThumbParamsOutputTokenizer, GetTokenizer> = RequestBuilder<ThumbParamsOutput, ThumbParamsOutput.ThumbParamsOutputTokenizer, GetTokenizer>(service: "thumbparamsoutput", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: ThumbParamsOutputFilter.ThumbParamsOutputFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<ThumbParamsOutputListResponse, ThumbParamsOutputListResponse.ThumbParamsOutputListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: ThumbParamsOutputFilter?) -> RequestBuilder<ThumbParamsOutputListResponse, ThumbParamsOutputListResponse.ThumbParamsOutputListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List thumb params output objects by filter and pager  */
	public static func list(filter: ThumbParamsOutputFilter?, pager: FilterPager?) -> RequestBuilder<ThumbParamsOutputListResponse, ThumbParamsOutputListResponse.ThumbParamsOutputListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<ThumbParamsOutputListResponse, ThumbParamsOutputListResponse.ThumbParamsOutputListResponseTokenizer, ListTokenizer> = RequestBuilder<ThumbParamsOutputListResponse, ThumbParamsOutputListResponse.ThumbParamsOutputListResponseTokenizer, ListTokenizer>(service: "thumbparamsoutput", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}
}
