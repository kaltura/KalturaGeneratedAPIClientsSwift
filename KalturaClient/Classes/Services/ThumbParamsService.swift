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

	public class AddTokenizer: ClientTokenizer  {
		
		public var thumbParams: ThumbParams.ThumbParamsTokenizer {
			get {
				return ThumbParams.ThumbParamsTokenizer(self.append("thumbParams")) 
			}
		}
	}

	/**  Add new Thumb Params  */
	public static func add(thumbParams: ThumbParams) -> RequestBuilder<ThumbParams, ThumbParams.ThumbParamsTokenizer, AddTokenizer> {
		let request: RequestBuilder<ThumbParams, ThumbParams.ThumbParamsTokenizer, AddTokenizer> = RequestBuilder<ThumbParams, ThumbParams.ThumbParamsTokenizer, AddTokenizer>(service: "thumbparams", action: "add")
			.setBody(key: "thumbParams", value: thumbParams)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete Thumb Params by ID  */
	public static func delete(id: Int) -> NullRequestBuilder {
		let request: NullRequestBuilder = NullRequestBuilder(service: "thumbparams", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Get Thumb Params by ID  */
	public static func get(id: Int) -> RequestBuilder<ThumbParams, ThumbParams.ThumbParamsTokenizer, GetTokenizer> {
		let request: RequestBuilder<ThumbParams, ThumbParams.ThumbParamsTokenizer, GetTokenizer> = RequestBuilder<ThumbParams, ThumbParams.ThumbParamsTokenizer, GetTokenizer>(service: "thumbparams", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public class GetByConversionProfileIdTokenizer: ClientTokenizer  {
		
		public var conversionProfileId: BaseTokenizedObject {
			get {
				return self.append("conversionProfileId") 
			}
		}
	}

	/**  Get Thumb Params by Conversion Profile ID  */
	public static func getByConversionProfileId(conversionProfileId: Int) -> ArrayRequestBuilder<ThumbParams, ArrayTokenizedObject<ThumbParams.ThumbParamsTokenizer>, GetByConversionProfileIdTokenizer> {
		let request: ArrayRequestBuilder<ThumbParams, ArrayTokenizedObject<ThumbParams.ThumbParamsTokenizer>, GetByConversionProfileIdTokenizer> = ArrayRequestBuilder<ThumbParams, ArrayTokenizedObject<ThumbParams.ThumbParamsTokenizer>, GetByConversionProfileIdTokenizer>(service: "thumbparams", action: "getByConversionProfileId")
			.setBody(key: "conversionProfileId", value: conversionProfileId)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public var filter: ThumbParamsFilter.ThumbParamsFilterTokenizer {
			get {
				return ThumbParamsFilter.ThumbParamsFilterTokenizer(self.append("filter")) 
			}
		}
		
		public var pager: FilterPager.FilterPagerTokenizer {
			get {
				return FilterPager.FilterPagerTokenizer(self.append("pager")) 
			}
		}
	}

	public static func list() -> RequestBuilder<ThumbParamsListResponse, ThumbParamsListResponse.ThumbParamsListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: ThumbParamsFilter?) -> RequestBuilder<ThumbParamsListResponse, ThumbParamsListResponse.ThumbParamsListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List Thumb Params by filter with paging support (By default - all system default
	  params will be listed too)  */
	public static func list(filter: ThumbParamsFilter?, pager: FilterPager?) -> RequestBuilder<ThumbParamsListResponse, ThumbParamsListResponse.ThumbParamsListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<ThumbParamsListResponse, ThumbParamsListResponse.ThumbParamsListResponseTokenizer, ListTokenizer> = RequestBuilder<ThumbParamsListResponse, ThumbParamsListResponse.ThumbParamsListResponseTokenizer, ListTokenizer>(service: "thumbparams", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var thumbParams: ThumbParams.ThumbParamsTokenizer {
			get {
				return ThumbParams.ThumbParamsTokenizer(self.append("thumbParams")) 
			}
		}
	}

	/**  Update Thumb Params by ID  */
	public static func update(id: Int, thumbParams: ThumbParams) -> RequestBuilder<ThumbParams, ThumbParams.ThumbParamsTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<ThumbParams, ThumbParams.ThumbParamsTokenizer, UpdateTokenizer> = RequestBuilder<ThumbParams, ThumbParams.ThumbParamsTokenizer, UpdateTokenizer>(service: "thumbparams", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "thumbParams", value: thumbParams)

		return request
	}
}
