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

/**  The ScheduleResource service enables you to create and manage (update, delete,
  retrieve, etc.) the resources required for scheduled events (cameras, capture
  devices, etc.).  */
extension ScheduleResourceService{

	/**  Allows you to add a new KalturaScheduleResource object  */
	public static func add(scheduleResource: ScheduleResource) -> RequestBuilder<ScheduleResource> {
		let request: RequestBuilder<ScheduleResource> = RequestBuilder<ScheduleResource>(service: "schedule_scheduleresource", action: "add")
			.setBody(key: "scheduleResource", value: scheduleResource)

		return request
	}

	public static func addFromBulkUpload(fileData: RequestFile) -> RequestBuilder<BulkUpload> {
		return addFromBulkUpload(fileData: fileData, bulkUploadData: nil)
	}

	/**  Add new bulk upload batch job  */
	public static func addFromBulkUpload(fileData: RequestFile, bulkUploadData: BulkUploadCsvJobData?) -> RequestBuilder<BulkUpload> {
		let request: RequestBuilder<BulkUpload> = RequestBuilder<BulkUpload>(service: "schedule_scheduleresource", action: "addFromBulkUpload")
			.setFile(key: "fileData", value: fileData)
			.setBody(key: "bulkUploadData", value: bulkUploadData)

		return request
	}

	/**  Mark the KalturaScheduleResource object as deleted  */
	public static func delete(scheduleResourceId: Int) -> RequestBuilder<ScheduleResource> {
		let request: RequestBuilder<ScheduleResource> = RequestBuilder<ScheduleResource>(service: "schedule_scheduleresource", action: "delete")
			.setBody(key: "scheduleResourceId", value: scheduleResourceId)

		return request
	}

	/**  Retrieve a KalturaScheduleResource object by ID  */
	public static func get(scheduleResourceId: Int) -> RequestBuilder<ScheduleResource> {
		let request: RequestBuilder<ScheduleResource> = RequestBuilder<ScheduleResource>(service: "schedule_scheduleresource", action: "get")
			.setBody(key: "scheduleResourceId", value: scheduleResourceId)

		return request
	}

	public static func list() -> RequestBuilder<ScheduleResourceListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: ScheduleResourceFilter?) -> RequestBuilder<ScheduleResourceListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List KalturaScheduleResource objects  */
	public static func list(filter: ScheduleResourceFilter?, pager: FilterPager?) -> RequestBuilder<ScheduleResourceListResponse> {
		let request: RequestBuilder<ScheduleResourceListResponse> = RequestBuilder<ScheduleResourceListResponse>(service: "schedule_scheduleresource", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Update an existing KalturaScheduleResource object  */
	public static func update(scheduleResourceId: Int, scheduleResource: ScheduleResource) -> RequestBuilder<ScheduleResource> {
		let request: RequestBuilder<ScheduleResource> = RequestBuilder<ScheduleResource>(service: "schedule_scheduleresource", action: "update")
			.setBody(key: "scheduleResourceId", value: scheduleResourceId)
			.setBody(key: "scheduleResource", value: scheduleResource)

		return request
	}
}
