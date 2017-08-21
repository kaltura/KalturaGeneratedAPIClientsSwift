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

/**  The ScheduleEventResource service enables you create and manage (update, delete,
  retrieve, etc.) the connections between recording events and the resources
  required for these events (cameras, capture devices, etc.).  */
public final class ScheduleEventResourceService{

	/**  Allows you to add a new KalturaScheduleEventResource object  */
	public static func add(scheduleEventResource: ScheduleEventResource) -> RequestBuilder<ScheduleEventResource> {
		let request: RequestBuilder<ScheduleEventResource> = RequestBuilder<ScheduleEventResource>(service: "schedule_scheduleeventresource", action: "add")
			.setBody(key: "scheduleEventResource", value: scheduleEventResource)

		return request
	}

	/**  Mark the KalturaScheduleEventResource object as deleted  */
	public static func delete(scheduleEventId: Int, scheduleResourceId: Int) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "schedule_scheduleeventresource", action: "delete")
			.setBody(key: "scheduleEventId", value: scheduleEventId)
			.setBody(key: "scheduleResourceId", value: scheduleResourceId)

		return request
	}

	/**  Retrieve a KalturaScheduleEventResource object by ID  */
	public static func get(scheduleEventId: Int, scheduleResourceId: Int) -> RequestBuilder<ScheduleEventResource> {
		let request: RequestBuilder<ScheduleEventResource> = RequestBuilder<ScheduleEventResource>(service: "schedule_scheduleeventresource", action: "get")
			.setBody(key: "scheduleEventId", value: scheduleEventId)
			.setBody(key: "scheduleResourceId", value: scheduleResourceId)

		return request
	}

	public static func list() -> RequestBuilder<ScheduleEventResourceListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: ScheduleEventResourceFilter?) -> RequestBuilder<ScheduleEventResourceListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List KalturaScheduleEventResource objects  */
	public static func list(filter: ScheduleEventResourceFilter?, pager: FilterPager?) -> RequestBuilder<ScheduleEventResourceListResponse> {
		let request: RequestBuilder<ScheduleEventResourceListResponse> = RequestBuilder<ScheduleEventResourceListResponse>(service: "schedule_scheduleeventresource", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Update an existing KalturaScheduleEventResource object  */
	public static func update(scheduleEventId: Int, scheduleResourceId: Int, scheduleEventResource: ScheduleEventResource) -> RequestBuilder<ScheduleEventResource> {
		let request: RequestBuilder<ScheduleEventResource> = RequestBuilder<ScheduleEventResource>(service: "schedule_scheduleeventresource", action: "update")
			.setBody(key: "scheduleEventId", value: scheduleEventId)
			.setBody(key: "scheduleResourceId", value: scheduleResourceId)
			.setBody(key: "scheduleEventResource", value: scheduleEventResource)

		return request
	}
}
