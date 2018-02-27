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

/**  Add &amp; Manage Caption Params  */
public final class CaptionParamsService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func captionParams<T: CaptionParams.CaptionParamsTokenizer>() -> T {
			return T(self.append("captionParams"))
		}
	}

	/**  Add new Caption Params  */
	public static func add(captionParams: CaptionParams) -> RequestBuilder<CaptionParams, CaptionParams.CaptionParamsTokenizer, AddTokenizer> {
		let request: RequestBuilder<CaptionParams, CaptionParams.CaptionParamsTokenizer, AddTokenizer> = RequestBuilder<CaptionParams, CaptionParams.CaptionParamsTokenizer, AddTokenizer>(service: "caption_captionparams", action: "add")
			.setParam(key: "captionParams", value: captionParams)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete Caption Params by ID  */
	public static func delete(id: Int) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "caption_captionparams", action: "delete")
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

	/**  Get Caption Params by ID  */
	public static func get(id: Int) -> RequestBuilder<CaptionParams, CaptionParams.CaptionParamsTokenizer, GetTokenizer> {
		let request: RequestBuilder<CaptionParams, CaptionParams.CaptionParamsTokenizer, GetTokenizer> = RequestBuilder<CaptionParams, CaptionParams.CaptionParamsTokenizer, GetTokenizer>(service: "caption_captionparams", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: CaptionParamsFilter.CaptionParamsFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<CaptionParamsListResponse, CaptionParamsListResponse.CaptionParamsListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: CaptionParamsFilter?) -> RequestBuilder<CaptionParamsListResponse, CaptionParamsListResponse.CaptionParamsListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List Caption Params by filter with paging support (By default - all system
	  default params will be listed too)  */
	public static func list(filter: CaptionParamsFilter?, pager: FilterPager?) -> RequestBuilder<CaptionParamsListResponse, CaptionParamsListResponse.CaptionParamsListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<CaptionParamsListResponse, CaptionParamsListResponse.CaptionParamsListResponseTokenizer, ListTokenizer> = RequestBuilder<CaptionParamsListResponse, CaptionParamsListResponse.CaptionParamsListResponseTokenizer, ListTokenizer>(service: "caption_captionparams", action: "list")
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
		
		public func captionParams<T: CaptionParams.CaptionParamsTokenizer>() -> T {
			return T(self.append("captionParams"))
		}
	}

	/**  Update Caption Params by ID  */
	public static func update(id: Int, captionParams: CaptionParams) -> RequestBuilder<CaptionParams, CaptionParams.CaptionParamsTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<CaptionParams, CaptionParams.CaptionParamsTokenizer, UpdateTokenizer> = RequestBuilder<CaptionParams, CaptionParams.CaptionParamsTokenizer, UpdateTokenizer>(service: "caption_captionparams", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "captionParams", value: captionParams)

		return request
	}
}
