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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

/**  Schedule task service lets you create and manage scheduled task profiles  */
public final class ScheduledTaskProfileService{

	/**  Add a new scheduled task profile  */
	public static func add(scheduledTaskProfile: ScheduledTaskProfile) -> RequestBuilder<ScheduledTaskProfile> {
		let request: RequestBuilder<ScheduledTaskProfile> = RequestBuilder<ScheduledTaskProfile>(service: "scheduledtask_scheduledtaskprofile", action: "add")
			.setBody(key: "scheduledTaskProfile", value: scheduledTaskProfile)

		return request
	}

	/**  Delete a scheduled task profile  */
	public static func delete(id: Int) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "scheduledtask_scheduledtaskprofile", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Retrieve a scheduled task profile by id  */
	public static func get(id: Int) -> RequestBuilder<ScheduledTaskProfile> {
		let request: RequestBuilder<ScheduledTaskProfile> = RequestBuilder<ScheduledTaskProfile>(service: "scheduledtask_scheduledtaskprofile", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public static func getDryRunResults(requestId: Int) -> RequestBuilder<ObjectListResponse> {
		let request: RequestBuilder<ObjectListResponse> = RequestBuilder<ObjectListResponse>(service: "scheduledtask_scheduledtaskprofile", action: "getDryRunResults")
			.setBody(key: "requestId", value: requestId)

		return request
	}

	public static func list() -> RequestBuilder<ScheduledTaskProfileListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: ScheduledTaskProfileFilter?) -> RequestBuilder<ScheduledTaskProfileListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List scheduled task profiles  */
	public static func list(filter: ScheduledTaskProfileFilter?, pager: FilterPager?) -> RequestBuilder<ScheduledTaskProfileListResponse> {
		let request: RequestBuilder<ScheduledTaskProfileListResponse> = RequestBuilder<ScheduledTaskProfileListResponse>(service: "scheduledtask_scheduledtaskprofile", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public static func requestDryRun(scheduledTaskProfileId: Int) -> RequestBuilder<Int> {
		return requestDryRun(scheduledTaskProfileId: scheduledTaskProfileId, maxResults: 500)
	}

	public static func requestDryRun(scheduledTaskProfileId: Int, maxResults: Int?) -> RequestBuilder<Int> {
		let request: RequestBuilder<Int> = RequestBuilder<Int>(service: "scheduledtask_scheduledtaskprofile", action: "requestDryRun")
			.setBody(key: "scheduledTaskProfileId", value: scheduledTaskProfileId)
			.setBody(key: "maxResults", value: maxResults)

		return request
	}

	/**  Update an existing scheduled task profile  */
	public static func update(id: Int, scheduledTaskProfile: ScheduledTaskProfile) -> RequestBuilder<ScheduledTaskProfile> {
		let request: RequestBuilder<ScheduledTaskProfile> = RequestBuilder<ScheduledTaskProfile>(service: "scheduledtask_scheduledtaskprofile", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "scheduledTaskProfile", value: scheduledTaskProfile)

		return request
	}
}
