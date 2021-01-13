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

/**  The ScheduleEventResource service enables you create and manage (update, delete,
  retrieve, etc.) the connections between recording events and the resources
  required for these events (cameras, capture devices, etc.).  */
public final class ScheduleEventResourceService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func scheduleEventResource<T: ScheduleEventResource.ScheduleEventResourceTokenizer>() -> T {
			return T(self.append("scheduleEventResource"))
		}
	}

	/**  Allows you to add a new KalturaScheduleEventResource object  */
	public static func add(scheduleEventResource: ScheduleEventResource) -> RequestBuilder<ScheduleEventResource, ScheduleEventResource.ScheduleEventResourceTokenizer, AddTokenizer> {
		let request: RequestBuilder<ScheduleEventResource, ScheduleEventResource.ScheduleEventResourceTokenizer, AddTokenizer> = RequestBuilder<ScheduleEventResource, ScheduleEventResource.ScheduleEventResourceTokenizer, AddTokenizer>(service: "schedule_scheduleeventresource", action: "add")
			.setParam(key: "scheduleEventResource", value: scheduleEventResource)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var scheduleEventId: BaseTokenizedObject {
			get {
				return self.append("scheduleEventId") 
			}
		}
		
		public var scheduleResourceId: BaseTokenizedObject {
			get {
				return self.append("scheduleResourceId") 
			}
		}
	}

	/**  Mark the KalturaScheduleEventResource object as deleted  */
	public static func delete(scheduleEventId: Int, scheduleResourceId: Int) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "schedule_scheduleeventresource", action: "delete")
			.setParam(key: "scheduleEventId", value: scheduleEventId)
			.setParam(key: "scheduleResourceId", value: scheduleResourceId)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var scheduleEventId: BaseTokenizedObject {
			get {
				return self.append("scheduleEventId") 
			}
		}
		
		public var scheduleResourceId: BaseTokenizedObject {
			get {
				return self.append("scheduleResourceId") 
			}
		}
	}

	/**  Retrieve a KalturaScheduleEventResource object by ID  */
	public static func get(scheduleEventId: Int, scheduleResourceId: Int) -> RequestBuilder<ScheduleEventResource, ScheduleEventResource.ScheduleEventResourceTokenizer, GetTokenizer> {
		let request: RequestBuilder<ScheduleEventResource, ScheduleEventResource.ScheduleEventResourceTokenizer, GetTokenizer> = RequestBuilder<ScheduleEventResource, ScheduleEventResource.ScheduleEventResourceTokenizer, GetTokenizer>(service: "schedule_scheduleeventresource", action: "get")
			.setParam(key: "scheduleEventId", value: scheduleEventId)
			.setParam(key: "scheduleResourceId", value: scheduleResourceId)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: ScheduleEventResourceFilter.ScheduleEventResourceFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
		
		public var filterBlackoutConflicts: BaseTokenizedObject {
			get {
				return self.append("filterBlackoutConflicts") 
			}
		}
	}

	public static func list() -> RequestBuilder<ScheduleEventResourceListResponse, ScheduleEventResourceListResponse.ScheduleEventResourceListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: ScheduleEventResourceFilter?) -> RequestBuilder<ScheduleEventResourceListResponse, ScheduleEventResourceListResponse.ScheduleEventResourceListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	public static func list(filter: ScheduleEventResourceFilter?, pager: FilterPager?) -> RequestBuilder<ScheduleEventResourceListResponse, ScheduleEventResourceListResponse.ScheduleEventResourceListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: pager, filterBlackoutConflicts: true)
	}

	/**  List KalturaScheduleEventResource objects  */
	public static func list(filter: ScheduleEventResourceFilter?, pager: FilterPager?, filterBlackoutConflicts: Bool?) -> RequestBuilder<ScheduleEventResourceListResponse, ScheduleEventResourceListResponse.ScheduleEventResourceListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<ScheduleEventResourceListResponse, ScheduleEventResourceListResponse.ScheduleEventResourceListResponseTokenizer, ListTokenizer> = RequestBuilder<ScheduleEventResourceListResponse, ScheduleEventResourceListResponse.ScheduleEventResourceListResponseTokenizer, ListTokenizer>(service: "schedule_scheduleeventresource", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)
			.setParam(key: "filterBlackoutConflicts", value: filterBlackoutConflicts)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var scheduleEventId: BaseTokenizedObject {
			get {
				return self.append("scheduleEventId") 
			}
		}
		
		public var scheduleResourceId: BaseTokenizedObject {
			get {
				return self.append("scheduleResourceId") 
			}
		}
		
		public func scheduleEventResource<T: ScheduleEventResource.ScheduleEventResourceTokenizer>() -> T {
			return T(self.append("scheduleEventResource"))
		}
	}

	/**  Update an existing KalturaScheduleEventResource object  */
	public static func update(scheduleEventId: Int, scheduleResourceId: Int, scheduleEventResource: ScheduleEventResource) -> RequestBuilder<ScheduleEventResource, ScheduleEventResource.ScheduleEventResourceTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<ScheduleEventResource, ScheduleEventResource.ScheduleEventResourceTokenizer, UpdateTokenizer> = RequestBuilder<ScheduleEventResource, ScheduleEventResource.ScheduleEventResourceTokenizer, UpdateTokenizer>(service: "schedule_scheduleeventresource", action: "update")
			.setParam(key: "scheduleEventId", value: scheduleEventId)
			.setParam(key: "scheduleResourceId", value: scheduleResourceId)
			.setParam(key: "scheduleEventResource", value: scheduleEventResource)

		return request
	}
}
