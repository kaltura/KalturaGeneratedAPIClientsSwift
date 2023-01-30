// ===================================================================================================
//                           _  __     _ _
//                          | |/ /__ _| | |_ _  _ _ _ __ _
//                          | ' </ _` | |  _| || | '_/ _` |
//                          |_|\_\__,_|_|\__|\_,_|_| \__,_|
//
// This file is part of the Kaltura Collaborative Media Suite which allows users
// to do with audio, video, and animation what Wiki platforms allow them to do with
// text.
//
// Copyright (C) 2006-2023  Kaltura Inc.
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

/**  Add &amp; Manage Flavor Params  */
public final class FlavorParamsService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func flavorParams<T: FlavorParams.FlavorParamsTokenizer>() -> T {
			return T(self.append("flavorParams"))
		}
	}

	/**  Add new Flavor Params  */
	public static func add(flavorParams: FlavorParams) -> RequestBuilder<FlavorParams, FlavorParams.FlavorParamsTokenizer, AddTokenizer> {
		let request: RequestBuilder<FlavorParams, FlavorParams.FlavorParamsTokenizer, AddTokenizer> = RequestBuilder<FlavorParams, FlavorParams.FlavorParamsTokenizer, AddTokenizer>(service: "flavorparams", action: "add")
			.setParam(key: "flavorParams", value: flavorParams)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete Flavor Params by ID  */
	public static func delete(id: Int64) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "flavorparams", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Get Flavor Params by ID  */
	public static func get(id: Int64) -> RequestBuilder<FlavorParams, FlavorParams.FlavorParamsTokenizer, GetTokenizer> {
		let request: RequestBuilder<FlavorParams, FlavorParams.FlavorParamsTokenizer, GetTokenizer> = RequestBuilder<FlavorParams, FlavorParams.FlavorParamsTokenizer, GetTokenizer>(service: "flavorparams", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class GetByConversionProfileIdTokenizer: ClientTokenizer  {
		
		public var conversionProfileId: BaseTokenizedObject {
			get {
				return self.append("conversionProfileId") 
			}
		}
	}

	/**  Get Flavor Params by Conversion Profile ID  */
	public static func getByConversionProfileId(conversionProfileId: Int) -> ArrayRequestBuilder<FlavorParams, ArrayTokenizedObject<FlavorParams.FlavorParamsTokenizer>, GetByConversionProfileIdTokenizer> {
		let request: ArrayRequestBuilder<FlavorParams, ArrayTokenizedObject<FlavorParams.FlavorParamsTokenizer>, GetByConversionProfileIdTokenizer> = ArrayRequestBuilder<FlavorParams, ArrayTokenizedObject<FlavorParams.FlavorParamsTokenizer>, GetByConversionProfileIdTokenizer>(service: "flavorparams", action: "getByConversionProfileId")
			.setParam(key: "conversionProfileId", value: conversionProfileId)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: FlavorParamsFilter.FlavorParamsFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<FlavorParamsListResponse, FlavorParamsListResponse.FlavorParamsListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: FlavorParamsFilter?) -> RequestBuilder<FlavorParamsListResponse, FlavorParamsListResponse.FlavorParamsListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List Flavor Params by filter with paging support (By default - all system
	  default params will be listed too)  */
	public static func list(filter: FlavorParamsFilter?, pager: FilterPager?) -> RequestBuilder<FlavorParamsListResponse, FlavorParamsListResponse.FlavorParamsListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<FlavorParamsListResponse, FlavorParamsListResponse.FlavorParamsListResponseTokenizer, ListTokenizer> = RequestBuilder<FlavorParamsListResponse, FlavorParamsListResponse.FlavorParamsListResponseTokenizer, ListTokenizer>(service: "flavorparams", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func flavorParams<T: FlavorParams.FlavorParamsTokenizer>() -> T {
			return T(self.append("flavorParams"))
		}
	}

	/**  Update Flavor Params by ID  */
	public static func update(id: Int64, flavorParams: FlavorParams) -> RequestBuilder<FlavorParams, FlavorParams.FlavorParamsTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<FlavorParams, FlavorParams.FlavorParamsTokenizer, UpdateTokenizer> = RequestBuilder<FlavorParams, FlavorParams.FlavorParamsTokenizer, UpdateTokenizer>(service: "flavorparams", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "flavorParams", value: flavorParams)

		return request
	}
}
