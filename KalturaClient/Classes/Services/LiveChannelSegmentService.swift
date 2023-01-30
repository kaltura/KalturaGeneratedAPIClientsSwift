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

/**  Manage live channel segments  */
public final class LiveChannelSegmentService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func liveChannelSegment<T: LiveChannelSegment.LiveChannelSegmentTokenizer>() -> T {
			return T(self.append("liveChannelSegment"))
		}
	}

	/**  Add new live channel segment  */
	public static func add(liveChannelSegment: LiveChannelSegment) -> RequestBuilder<LiveChannelSegment, LiveChannelSegment.LiveChannelSegmentTokenizer, AddTokenizer> {
		let request: RequestBuilder<LiveChannelSegment, LiveChannelSegment.LiveChannelSegmentTokenizer, AddTokenizer> = RequestBuilder<LiveChannelSegment, LiveChannelSegment.LiveChannelSegmentTokenizer, AddTokenizer>(service: "livechannelsegment", action: "add")
			.setParam(key: "liveChannelSegment", value: liveChannelSegment)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete live channel segment by id  */
	public static func delete(id: Int64) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "livechannelsegment", action: "delete")
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

	/**  Get live channel segment by id  */
	public static func get(id: Int64) -> RequestBuilder<LiveChannelSegment, LiveChannelSegment.LiveChannelSegmentTokenizer, GetTokenizer> {
		let request: RequestBuilder<LiveChannelSegment, LiveChannelSegment.LiveChannelSegmentTokenizer, GetTokenizer> = RequestBuilder<LiveChannelSegment, LiveChannelSegment.LiveChannelSegmentTokenizer, GetTokenizer>(service: "livechannelsegment", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: LiveChannelSegmentFilter.LiveChannelSegmentFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<LiveChannelSegmentListResponse, LiveChannelSegmentListResponse.LiveChannelSegmentListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: LiveChannelSegmentFilter?) -> RequestBuilder<LiveChannelSegmentListResponse, LiveChannelSegmentListResponse.LiveChannelSegmentListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List live channel segments by filter and pager  */
	public static func list(filter: LiveChannelSegmentFilter?, pager: FilterPager?) -> RequestBuilder<LiveChannelSegmentListResponse, LiveChannelSegmentListResponse.LiveChannelSegmentListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<LiveChannelSegmentListResponse, LiveChannelSegmentListResponse.LiveChannelSegmentListResponseTokenizer, ListTokenizer> = RequestBuilder<LiveChannelSegmentListResponse, LiveChannelSegmentListResponse.LiveChannelSegmentListResponseTokenizer, ListTokenizer>(service: "livechannelsegment", action: "list")
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
		
		public func liveChannelSegment<T: LiveChannelSegment.LiveChannelSegmentTokenizer>() -> T {
			return T(self.append("liveChannelSegment"))
		}
	}

	/**  Update live channel segment by id  */
	public static func update(id: Int64, liveChannelSegment: LiveChannelSegment) -> RequestBuilder<LiveChannelSegment, LiveChannelSegment.LiveChannelSegmentTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<LiveChannelSegment, LiveChannelSegment.LiveChannelSegmentTokenizer, UpdateTokenizer> = RequestBuilder<LiveChannelSegment, LiveChannelSegment.LiveChannelSegmentTokenizer, UpdateTokenizer>(service: "livechannelsegment", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "liveChannelSegment", value: liveChannelSegment)

		return request
	}
}
