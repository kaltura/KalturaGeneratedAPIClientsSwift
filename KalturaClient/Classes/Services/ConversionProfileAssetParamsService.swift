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
// Copyright (C) 2006-2019  Kaltura Inc.
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

/**  Manage the connection between Conversion Profiles and Asset Params  */
public final class ConversionProfileAssetParamsService{

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: ConversionProfileAssetParamsFilter.ConversionProfileAssetParamsFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<ConversionProfileAssetParamsListResponse, ConversionProfileAssetParamsListResponse.ConversionProfileAssetParamsListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: ConversionProfileAssetParamsFilter?) -> RequestBuilder<ConversionProfileAssetParamsListResponse, ConversionProfileAssetParamsListResponse.ConversionProfileAssetParamsListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  Lists asset parmas of conversion profile by ID  */
	public static func list(filter: ConversionProfileAssetParamsFilter?, pager: FilterPager?) -> RequestBuilder<ConversionProfileAssetParamsListResponse, ConversionProfileAssetParamsListResponse.ConversionProfileAssetParamsListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<ConversionProfileAssetParamsListResponse, ConversionProfileAssetParamsListResponse.ConversionProfileAssetParamsListResponseTokenizer, ListTokenizer> = RequestBuilder<ConversionProfileAssetParamsListResponse, ConversionProfileAssetParamsListResponse.ConversionProfileAssetParamsListResponseTokenizer, ListTokenizer>(service: "conversionprofileassetparams", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var conversionProfileId: BaseTokenizedObject {
			get {
				return self.append("conversionProfileId") 
			}
		}
		
		public var assetParamsId: BaseTokenizedObject {
			get {
				return self.append("assetParamsId") 
			}
		}
		
		public func conversionProfileAssetParams<T: ConversionProfileAssetParams.ConversionProfileAssetParamsTokenizer>() -> T {
			return T(self.append("conversionProfileAssetParams"))
		}
	}

	/**  Update asset parmas of conversion profile by ID  */
	public static func update(conversionProfileId: Int, assetParamsId: Int, conversionProfileAssetParams: ConversionProfileAssetParams) -> RequestBuilder<ConversionProfileAssetParams, ConversionProfileAssetParams.ConversionProfileAssetParamsTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<ConversionProfileAssetParams, ConversionProfileAssetParams.ConversionProfileAssetParamsTokenizer, UpdateTokenizer> = RequestBuilder<ConversionProfileAssetParams, ConversionProfileAssetParams.ConversionProfileAssetParamsTokenizer, UpdateTokenizer>(service: "conversionprofileassetparams", action: "update")
			.setParam(key: "conversionProfileId", value: conversionProfileId)
			.setParam(key: "assetParamsId", value: assetParamsId)
			.setParam(key: "conversionProfileAssetParams", value: conversionProfileAssetParams)

		return request
	}
}
