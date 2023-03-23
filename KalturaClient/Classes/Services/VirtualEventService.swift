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

public final class VirtualEventService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func virtualEvent<T: VirtualEvent.VirtualEventTokenizer>() -> T {
			return T(self.append("virtualEvent"))
		}
	}

	/**  Add a new virtual event  */
	public static func add(virtualEvent: VirtualEvent) -> RequestBuilder<VirtualEvent, VirtualEvent.VirtualEventTokenizer, AddTokenizer> {
		let request: RequestBuilder<VirtualEvent, VirtualEvent.VirtualEventTokenizer, AddTokenizer> = RequestBuilder<VirtualEvent, VirtualEvent.VirtualEventTokenizer, AddTokenizer>(service: "virtualevent_virtualevent", action: "add")
			.setParam(key: "virtualEvent", value: virtualEvent)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete a virtual event  */
	public static func delete(id: Int) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "virtualevent_virtualevent", action: "delete")
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

	/**  Retrieve a virtual event by id  */
	public static func get(id: Int) -> RequestBuilder<VirtualEvent, VirtualEvent.VirtualEventTokenizer, GetTokenizer> {
		let request: RequestBuilder<VirtualEvent, VirtualEvent.VirtualEventTokenizer, GetTokenizer> = RequestBuilder<VirtualEvent, VirtualEvent.VirtualEventTokenizer, GetTokenizer>(service: "virtualevent_virtualevent", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: VirtualEventFilter.VirtualEventFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<VirtualEventListResponse, VirtualEventListResponse.VirtualEventListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: VirtualEventFilter?) -> RequestBuilder<VirtualEventListResponse, VirtualEventListResponse.VirtualEventListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List virtual events  */
	public static func list(filter: VirtualEventFilter?, pager: FilterPager?) -> RequestBuilder<VirtualEventListResponse, VirtualEventListResponse.VirtualEventListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<VirtualEventListResponse, VirtualEventListResponse.VirtualEventListResponseTokenizer, ListTokenizer> = RequestBuilder<VirtualEventListResponse, VirtualEventListResponse.VirtualEventListResponseTokenizer, ListTokenizer>(service: "virtualevent_virtualevent", action: "list")
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
		
		public func virtualEvent<T: VirtualEvent.VirtualEventTokenizer>() -> T {
			return T(self.append("virtualEvent"))
		}
	}

	/**  Update an existing virtual event  */
	public static func update(id: Int, virtualEvent: VirtualEvent) -> RequestBuilder<VirtualEvent, VirtualEvent.VirtualEventTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<VirtualEvent, VirtualEvent.VirtualEventTokenizer, UpdateTokenizer> = RequestBuilder<VirtualEvent, VirtualEvent.VirtualEventTokenizer, UpdateTokenizer>(service: "virtualevent_virtualevent", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "virtualEvent", value: virtualEvent)

		return request
	}
}
