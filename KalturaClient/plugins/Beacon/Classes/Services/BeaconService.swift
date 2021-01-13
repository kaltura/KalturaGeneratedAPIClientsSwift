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
// Copyright (C) 2006-2021  Kaltura Inc.
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

/**  Sending beacons on objects  */
public final class BeaconService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func beacon<T: Beacon.BeaconTokenizer>() -> T {
			return T(self.append("beacon"))
		}
		
		public var shouldLog: BaseTokenizedObject {
			get {
				return self.append("shouldLog") 
			}
		}
	}

	public static func add(beacon: Beacon) -> RequestBuilder<Bool, BaseTokenizedObject, AddTokenizer> {
		return add(beacon: beacon, shouldLog: false)
	}

	public static func add(beacon: Beacon, shouldLog: Bool?) -> RequestBuilder<Bool, BaseTokenizedObject, AddTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, AddTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, AddTokenizer>(service: "beacon_beacon", action: "add")
			.setParam(key: "beacon", value: beacon)
			.setParam(key: "shouldLog", value: shouldLog)

		return request
	}

	public class EnhanceSearchTokenizer: ClientTokenizer  {
		
		public func filter<T: BeaconEnhanceFilter.BeaconEnhanceFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func enhanceSearch() -> RequestBuilder<BeaconListResponse, BeaconListResponse.BeaconListResponseTokenizer, EnhanceSearchTokenizer> {
		return enhanceSearch(filter: nil)
	}

	public static func enhanceSearch(filter: BeaconEnhanceFilter?) -> RequestBuilder<BeaconListResponse, BeaconListResponse.BeaconListResponseTokenizer, EnhanceSearchTokenizer> {
		return enhanceSearch(filter: filter, pager: nil)
	}

	public static func enhanceSearch(filter: BeaconEnhanceFilter?, pager: FilterPager?) -> RequestBuilder<BeaconListResponse, BeaconListResponse.BeaconListResponseTokenizer, EnhanceSearchTokenizer> {
		let request: RequestBuilder<BeaconListResponse, BeaconListResponse.BeaconListResponseTokenizer, EnhanceSearchTokenizer> = RequestBuilder<BeaconListResponse, BeaconListResponse.BeaconListResponseTokenizer, EnhanceSearchTokenizer>(service: "beacon_beacon", action: "enhanceSearch")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: BeaconFilter.BeaconFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<BeaconListResponse, BeaconListResponse.BeaconListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: BeaconFilter?) -> RequestBuilder<BeaconListResponse, BeaconListResponse.BeaconListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	public static func list(filter: BeaconFilter?, pager: FilterPager?) -> RequestBuilder<BeaconListResponse, BeaconListResponse.BeaconListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<BeaconListResponse, BeaconListResponse.BeaconListResponseTokenizer, ListTokenizer> = RequestBuilder<BeaconListResponse, BeaconListResponse.BeaconListResponseTokenizer, ListTokenizer>(service: "beacon_beacon", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class SearchScheduledResourceTokenizer: ClientTokenizer  {
		
		public func searchParams<T: BeaconSearchParams.BeaconSearchParamsTokenizer>() -> T {
			return T(self.append("searchParams"))
		}
		
		public func pager<T: Pager.PagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func searchScheduledResource(searchParams: BeaconSearchParams) -> RequestBuilder<BeaconListResponse, BeaconListResponse.BeaconListResponseTokenizer, SearchScheduledResourceTokenizer> {
		return searchScheduledResource(searchParams: searchParams, pager: nil)
	}

	public static func searchScheduledResource(searchParams: BeaconSearchParams, pager: Pager?) -> RequestBuilder<BeaconListResponse, BeaconListResponse.BeaconListResponseTokenizer, SearchScheduledResourceTokenizer> {
		let request: RequestBuilder<BeaconListResponse, BeaconListResponse.BeaconListResponseTokenizer, SearchScheduledResourceTokenizer> = RequestBuilder<BeaconListResponse, BeaconListResponse.BeaconListResponseTokenizer, SearchScheduledResourceTokenizer>(service: "beacon_beacon", action: "searchScheduledResource")
			.setParam(key: "searchParams", value: searchParams)
			.setParam(key: "pager", value: pager)

		return request
	}
}
