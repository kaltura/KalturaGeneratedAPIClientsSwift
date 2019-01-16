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

/**  The ScheduleEvent service enables you to create and manage (update, delete,
  retrieve, etc.) scheduled recording events.  */
public final class ScheduleEventService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func scheduleEvent<T: ScheduleEvent.ScheduleEventTokenizer>() -> T {
			return T(self.append("scheduleEvent"))
		}
	}

	/**  Allows you to add a new KalturaScheduleEvent object  */
	public static func add(scheduleEvent: ScheduleEvent) -> RequestBuilder<ScheduleEvent, ScheduleEvent.ScheduleEventTokenizer, AddTokenizer> {
		let request: RequestBuilder<ScheduleEvent, ScheduleEvent.ScheduleEventTokenizer, AddTokenizer> = RequestBuilder<ScheduleEvent, ScheduleEvent.ScheduleEventTokenizer, AddTokenizer>(service: "schedule_scheduleevent", action: "add")
			.setParam(key: "scheduleEvent", value: scheduleEvent)

		return request
	}

	public class CancelTokenizer: ClientTokenizer  {
		
		public var scheduleEventId: BaseTokenizedObject {
			get {
				return self.append("scheduleEventId") 
			}
		}
	}

	/**  Mark the KalturaScheduleEvent object as cancelled  */
	public static func cancel(scheduleEventId: Int) -> RequestBuilder<ScheduleEvent, ScheduleEvent.ScheduleEventTokenizer, CancelTokenizer> {
		let request: RequestBuilder<ScheduleEvent, ScheduleEvent.ScheduleEventTokenizer, CancelTokenizer> = RequestBuilder<ScheduleEvent, ScheduleEvent.ScheduleEventTokenizer, CancelTokenizer>(service: "schedule_scheduleevent", action: "cancel")
			.setParam(key: "scheduleEventId", value: scheduleEventId)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var scheduleEventId: BaseTokenizedObject {
			get {
				return self.append("scheduleEventId") 
			}
		}
	}

	/**  Mark the KalturaScheduleEvent object as deleted  */
	public static func delete(scheduleEventId: Int) -> RequestBuilder<ScheduleEvent, ScheduleEvent.ScheduleEventTokenizer, DeleteTokenizer> {
		let request: RequestBuilder<ScheduleEvent, ScheduleEvent.ScheduleEventTokenizer, DeleteTokenizer> = RequestBuilder<ScheduleEvent, ScheduleEvent.ScheduleEventTokenizer, DeleteTokenizer>(service: "schedule_scheduleevent", action: "delete")
			.setParam(key: "scheduleEventId", value: scheduleEventId)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var scheduleEventId: BaseTokenizedObject {
			get {
				return self.append("scheduleEventId") 
			}
		}
	}

	/**  Retrieve a KalturaScheduleEvent object by ID  */
	public static func get(scheduleEventId: Int) -> RequestBuilder<ScheduleEvent, ScheduleEvent.ScheduleEventTokenizer, GetTokenizer> {
		let request: RequestBuilder<ScheduleEvent, ScheduleEvent.ScheduleEventTokenizer, GetTokenizer> = RequestBuilder<ScheduleEvent, ScheduleEvent.ScheduleEventTokenizer, GetTokenizer>(service: "schedule_scheduleevent", action: "get")
			.setParam(key: "scheduleEventId", value: scheduleEventId)

		return request
	}

	public class GetConflictsTokenizer: ClientTokenizer  {
		
		public var resourceIds: BaseTokenizedObject {
			get {
				return self.append("resourceIds") 
			}
		}
		
		public func scheduleEvent<T: ScheduleEvent.ScheduleEventTokenizer>() -> T {
			return T(self.append("scheduleEvent"))
		}
		
		public var scheduleEventIdToIgnore: BaseTokenizedObject {
			get {
				return self.append("scheduleEventIdToIgnore") 
			}
		}
		
		public var scheduleEventConflictType: BaseTokenizedObject {
			get {
				return self.append("scheduleEventConflictType") 
			}
		}
	}

	public static func getConflicts(resourceIds: String, scheduleEvent: ScheduleEvent) -> RequestBuilder<ScheduleEventListResponse, ScheduleEventListResponse.ScheduleEventListResponseTokenizer, GetConflictsTokenizer> {
		return getConflicts(resourceIds: resourceIds, scheduleEvent: scheduleEvent, scheduleEventIdToIgnore: nil)
	}

	public static func getConflicts(resourceIds: String, scheduleEvent: ScheduleEvent, scheduleEventIdToIgnore: String?) -> RequestBuilder<ScheduleEventListResponse, ScheduleEventListResponse.ScheduleEventListResponseTokenizer, GetConflictsTokenizer> {
		return getConflicts(resourceIds: resourceIds, scheduleEvent: scheduleEvent, scheduleEventIdToIgnore: scheduleEventIdToIgnore, scheduleEventConflictType: ScheduleEventConflictType(rawValue: 1))
	}

	/**  List conflicting events for resourcesIds by event's dates  */
	public static func getConflicts(resourceIds: String, scheduleEvent: ScheduleEvent, scheduleEventIdToIgnore: String?, scheduleEventConflictType: ScheduleEventConflictType?) -> RequestBuilder<ScheduleEventListResponse, ScheduleEventListResponse.ScheduleEventListResponseTokenizer, GetConflictsTokenizer> {
		let request: RequestBuilder<ScheduleEventListResponse, ScheduleEventListResponse.ScheduleEventListResponseTokenizer, GetConflictsTokenizer> = RequestBuilder<ScheduleEventListResponse, ScheduleEventListResponse.ScheduleEventListResponseTokenizer, GetConflictsTokenizer>(service: "schedule_scheduleevent", action: "getConflicts")
			.setParam(key: "resourceIds", value: resourceIds)
			.setParam(key: "scheduleEvent", value: scheduleEvent)
			.setParam(key: "scheduleEventIdToIgnore", value: scheduleEventIdToIgnore)
			.setParam(key: "scheduleEventConflictType", value: scheduleEventConflictType?.rawValue)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: ScheduleEventFilter.ScheduleEventFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<ScheduleEventListResponse, ScheduleEventListResponse.ScheduleEventListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: ScheduleEventFilter?) -> RequestBuilder<ScheduleEventListResponse, ScheduleEventListResponse.ScheduleEventListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List KalturaScheduleEvent objects  */
	public static func list(filter: ScheduleEventFilter?, pager: FilterPager?) -> RequestBuilder<ScheduleEventListResponse, ScheduleEventListResponse.ScheduleEventListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<ScheduleEventListResponse, ScheduleEventListResponse.ScheduleEventListResponseTokenizer, ListTokenizer> = RequestBuilder<ScheduleEventListResponse, ScheduleEventListResponse.ScheduleEventListResponseTokenizer, ListTokenizer>(service: "schedule_scheduleevent", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var scheduleEventId: BaseTokenizedObject {
			get {
				return self.append("scheduleEventId") 
			}
		}
		
		public func scheduleEvent<T: ScheduleEvent.ScheduleEventTokenizer>() -> T {
			return T(self.append("scheduleEvent"))
		}
	}

	/**  Update an existing KalturaScheduleEvent object  */
	public static func update(scheduleEventId: Int, scheduleEvent: ScheduleEvent) -> RequestBuilder<ScheduleEvent, ScheduleEvent.ScheduleEventTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<ScheduleEvent, ScheduleEvent.ScheduleEventTokenizer, UpdateTokenizer> = RequestBuilder<ScheduleEvent, ScheduleEvent.ScheduleEventTokenizer, UpdateTokenizer>(service: "schedule_scheduleevent", action: "update")
			.setParam(key: "scheduleEventId", value: scheduleEventId)
			.setParam(key: "scheduleEvent", value: scheduleEvent)

		return request
	}
}
