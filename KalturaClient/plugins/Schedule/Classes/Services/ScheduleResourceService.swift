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

/**  The ScheduleResource service enables you to create and manage (update, delete,
  retrieve, etc.) the resources required for scheduled events (cameras, capture
  devices, etc.).  */
public final class ScheduleResourceService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func scheduleResource<T: ScheduleResource.ScheduleResourceTokenizer>() -> T {
			return T(self.append("scheduleResource"))
		}
	}

	/**  Allows you to add a new KalturaScheduleResource object  */
	public static func add(scheduleResource: ScheduleResource) -> RequestBuilder<ScheduleResource, ScheduleResource.ScheduleResourceTokenizer, AddTokenizer> {
		let request: RequestBuilder<ScheduleResource, ScheduleResource.ScheduleResourceTokenizer, AddTokenizer> = RequestBuilder<ScheduleResource, ScheduleResource.ScheduleResourceTokenizer, AddTokenizer>(service: "schedule_scheduleresource", action: "add")
			.setParam(key: "scheduleResource", value: scheduleResource)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var scheduleResourceId: BaseTokenizedObject {
			get {
				return self.append("scheduleResourceId") 
			}
		}
	}

	/**  Mark the KalturaScheduleResource object as deleted  */
	public static func delete(scheduleResourceId: Int) -> RequestBuilder<ScheduleResource, ScheduleResource.ScheduleResourceTokenizer, DeleteTokenizer> {
		let request: RequestBuilder<ScheduleResource, ScheduleResource.ScheduleResourceTokenizer, DeleteTokenizer> = RequestBuilder<ScheduleResource, ScheduleResource.ScheduleResourceTokenizer, DeleteTokenizer>(service: "schedule_scheduleresource", action: "delete")
			.setParam(key: "scheduleResourceId", value: scheduleResourceId)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var scheduleResourceId: BaseTokenizedObject {
			get {
				return self.append("scheduleResourceId") 
			}
		}
	}

	/**  Retrieve a KalturaScheduleResource object by ID  */
	public static func get(scheduleResourceId: Int) -> RequestBuilder<ScheduleResource, ScheduleResource.ScheduleResourceTokenizer, GetTokenizer> {
		let request: RequestBuilder<ScheduleResource, ScheduleResource.ScheduleResourceTokenizer, GetTokenizer> = RequestBuilder<ScheduleResource, ScheduleResource.ScheduleResourceTokenizer, GetTokenizer>(service: "schedule_scheduleresource", action: "get")
			.setParam(key: "scheduleResourceId", value: scheduleResourceId)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: ScheduleResourceFilter.ScheduleResourceFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<ScheduleResourceListResponse, ScheduleResourceListResponse.ScheduleResourceListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: ScheduleResourceFilter?) -> RequestBuilder<ScheduleResourceListResponse, ScheduleResourceListResponse.ScheduleResourceListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List KalturaScheduleResource objects  */
	public static func list(filter: ScheduleResourceFilter?, pager: FilterPager?) -> RequestBuilder<ScheduleResourceListResponse, ScheduleResourceListResponse.ScheduleResourceListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<ScheduleResourceListResponse, ScheduleResourceListResponse.ScheduleResourceListResponseTokenizer, ListTokenizer> = RequestBuilder<ScheduleResourceListResponse, ScheduleResourceListResponse.ScheduleResourceListResponseTokenizer, ListTokenizer>(service: "schedule_scheduleresource", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var scheduleResourceId: BaseTokenizedObject {
			get {
				return self.append("scheduleResourceId") 
			}
		}
		
		public func scheduleResource<T: ScheduleResource.ScheduleResourceTokenizer>() -> T {
			return T(self.append("scheduleResource"))
		}
	}

	/**  Update an existing KalturaScheduleResource object  */
	public static func update(scheduleResourceId: Int, scheduleResource: ScheduleResource) -> RequestBuilder<ScheduleResource, ScheduleResource.ScheduleResourceTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<ScheduleResource, ScheduleResource.ScheduleResourceTokenizer, UpdateTokenizer> = RequestBuilder<ScheduleResource, ScheduleResource.ScheduleResourceTokenizer, UpdateTokenizer>(service: "schedule_scheduleresource", action: "update")
			.setParam(key: "scheduleResourceId", value: scheduleResourceId)
			.setParam(key: "scheduleResource", value: scheduleResource)

		return request
	}
}
