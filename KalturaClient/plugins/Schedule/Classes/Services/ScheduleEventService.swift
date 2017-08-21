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

/**  The ScheduleEvent service enables you to create and manage (update, delete,
  retrieve, etc.) scheduled recording events.  */
public final class ScheduleEventService{

	/**  Allows you to add a new KalturaScheduleEvent object  */
	public static func add(scheduleEvent: ScheduleEvent) -> RequestBuilder<ScheduleEvent> {
		let request: RequestBuilder<ScheduleEvent> = RequestBuilder<ScheduleEvent>(service: "schedule_scheduleevent", action: "add")
			.setBody(key: "scheduleEvent", value: scheduleEvent)

		return request
	}

	/**  Mark the KalturaScheduleEvent object as cancelled  */
	public static func cancel(scheduleEventId: Int) -> RequestBuilder<ScheduleEvent> {
		let request: RequestBuilder<ScheduleEvent> = RequestBuilder<ScheduleEvent>(service: "schedule_scheduleevent", action: "cancel")
			.setBody(key: "scheduleEventId", value: scheduleEventId)

		return request
	}

	/**  Mark the KalturaScheduleEvent object as deleted  */
	public static func delete(scheduleEventId: Int) -> RequestBuilder<ScheduleEvent> {
		let request: RequestBuilder<ScheduleEvent> = RequestBuilder<ScheduleEvent>(service: "schedule_scheduleevent", action: "delete")
			.setBody(key: "scheduleEventId", value: scheduleEventId)

		return request
	}

	/**  Retrieve a KalturaScheduleEvent object by ID  */
	public static func get(scheduleEventId: Int) -> RequestBuilder<ScheduleEvent> {
		let request: RequestBuilder<ScheduleEvent> = RequestBuilder<ScheduleEvent>(service: "schedule_scheduleevent", action: "get")
			.setBody(key: "scheduleEventId", value: scheduleEventId)

		return request
	}

	public static func getConflicts(resourceIds: String, scheduleEvent: ScheduleEvent) -> RequestBuilder<ScheduleEventListResponse> {
		return getConflicts(resourceIds: resourceIds, scheduleEvent: scheduleEvent, scheduleEventIdToIgnore: nil)
	}

	/**  List conflicting events for resourcesIds by event's dates  */
	public static func getConflicts(resourceIds: String, scheduleEvent: ScheduleEvent, scheduleEventIdToIgnore: String?) -> RequestBuilder<ScheduleEventListResponse> {
		let request: RequestBuilder<ScheduleEventListResponse> = RequestBuilder<ScheduleEventListResponse>(service: "schedule_scheduleevent", action: "getConflicts")
			.setBody(key: "resourceIds", value: resourceIds)
			.setBody(key: "scheduleEvent", value: scheduleEvent)
			.setBody(key: "scheduleEventIdToIgnore", value: scheduleEventIdToIgnore)

		return request
	}

	public static func list() -> RequestBuilder<ScheduleEventListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: ScheduleEventFilter?) -> RequestBuilder<ScheduleEventListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List KalturaScheduleEvent objects  */
	public static func list(filter: ScheduleEventFilter?, pager: FilterPager?) -> RequestBuilder<ScheduleEventListResponse> {
		let request: RequestBuilder<ScheduleEventListResponse> = RequestBuilder<ScheduleEventListResponse>(service: "schedule_scheduleevent", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Update an existing KalturaScheduleEvent object  */
	public static func update(scheduleEventId: Int, scheduleEvent: ScheduleEvent) -> RequestBuilder<ScheduleEvent> {
		let request: RequestBuilder<ScheduleEvent> = RequestBuilder<ScheduleEvent>(service: "schedule_scheduleevent", action: "update")
			.setBody(key: "scheduleEventId", value: scheduleEventId)
			.setBody(key: "scheduleEvent", value: scheduleEvent)

		return request
	}
}
