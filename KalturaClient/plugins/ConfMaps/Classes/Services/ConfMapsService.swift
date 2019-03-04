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

public final class ConfMapsService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func map<T: ConfMaps.ConfMapsTokenizer>() -> T {
			return T(self.append("map"))
		}
	}

	/**  Add configuration map  */
	public static func add(map: ConfMaps) -> RequestBuilder<ConfMaps, ConfMaps.ConfMapsTokenizer, AddTokenizer> {
		let request: RequestBuilder<ConfMaps, ConfMaps.ConfMapsTokenizer, AddTokenizer> = RequestBuilder<ConfMaps, ConfMaps.ConfMapsTokenizer, AddTokenizer>(service: "confmaps_confmaps", action: "add")
			.setParam(key: "map", value: map)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public func filter<T: ConfMapsFilter.ConfMapsFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	/**  Get configuration map  */
	public static func get(filter: ConfMapsFilter) -> RequestBuilder<ConfMaps, ConfMaps.ConfMapsTokenizer, GetTokenizer> {
		let request: RequestBuilder<ConfMaps, ConfMaps.ConfMapsTokenizer, GetTokenizer> = RequestBuilder<ConfMaps, ConfMaps.ConfMapsTokenizer, GetTokenizer>(service: "confmaps_confmaps", action: "get")
			.setParam(key: "filter", value: filter)

		return request
	}

	public class GetMapNamesTokenizer: ClientTokenizer  {
	}

	/**  List configuration maps names  */
	public static func getMapNames() -> ArrayRequestBuilder<StringHolder, ArrayTokenizedObject<StringHolder.StringHolderTokenizer>, GetMapNamesTokenizer> {
		let request: ArrayRequestBuilder<StringHolder, ArrayTokenizedObject<StringHolder.StringHolderTokenizer>, GetMapNamesTokenizer> = ArrayRequestBuilder<StringHolder, ArrayTokenizedObject<StringHolder.StringHolderTokenizer>, GetMapNamesTokenizer>(service: "confmaps_confmaps", action: "getMapNames")

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: ConfMapsFilter.ConfMapsFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	/**  List configuration maps  */
	public static func list(filter: ConfMapsFilter) -> RequestBuilder<ConfMapsListResponse, ConfMapsListResponse.ConfMapsListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<ConfMapsListResponse, ConfMapsListResponse.ConfMapsListResponseTokenizer, ListTokenizer> = RequestBuilder<ConfMapsListResponse, ConfMapsListResponse.ConfMapsListResponseTokenizer, ListTokenizer>(service: "confmaps_confmaps", action: "list")
			.setParam(key: "filter", value: filter)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public func map<T: ConfMaps.ConfMapsTokenizer>() -> T {
			return T(self.append("map"))
		}
	}

	/**  Update configuration map  */
	public static func update(map: ConfMaps) -> RequestBuilder<ConfMaps, ConfMaps.ConfMapsTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<ConfMaps, ConfMaps.ConfMapsTokenizer, UpdateTokenizer> = RequestBuilder<ConfMaps, ConfMaps.ConfMapsTokenizer, UpdateTokenizer>(service: "confmaps_confmaps", action: "update")
			.setParam(key: "map", value: map)

		return request
	}
}
