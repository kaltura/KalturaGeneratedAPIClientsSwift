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

/**  Schedule task service lets you create and manage scheduled task profiles  */
public final class ScheduledTaskProfileService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func scheduledTaskProfile<T: ScheduledTaskProfile.ScheduledTaskProfileTokenizer>() -> T {
			return T(self.append("scheduledTaskProfile"))
		}
	}

	/**  Add a new scheduled task profile  */
	public static func add(scheduledTaskProfile: ScheduledTaskProfile) -> RequestBuilder<ScheduledTaskProfile, ScheduledTaskProfile.ScheduledTaskProfileTokenizer, AddTokenizer> {
		let request: RequestBuilder<ScheduledTaskProfile, ScheduledTaskProfile.ScheduledTaskProfileTokenizer, AddTokenizer> = RequestBuilder<ScheduledTaskProfile, ScheduledTaskProfile.ScheduledTaskProfileTokenizer, AddTokenizer>(service: "scheduledtask_scheduledtaskprofile", action: "add")
			.setBody(key: "scheduledTaskProfile", value: scheduledTaskProfile)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete a scheduled task profile  */
	public static func delete(id: Int) -> NullRequestBuilder {
		let request: NullRequestBuilder = NullRequestBuilder(service: "scheduledtask_scheduledtaskprofile", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Retrieve a scheduled task profile by id  */
	public static func get(id: Int) -> RequestBuilder<ScheduledTaskProfile, ScheduledTaskProfile.ScheduledTaskProfileTokenizer, GetTokenizer> {
		let request: RequestBuilder<ScheduledTaskProfile, ScheduledTaskProfile.ScheduledTaskProfileTokenizer, GetTokenizer> = RequestBuilder<ScheduledTaskProfile, ScheduledTaskProfile.ScheduledTaskProfileTokenizer, GetTokenizer>(service: "scheduledtask_scheduledtaskprofile", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public class GetDryRunResultsTokenizer: ClientTokenizer  {
		
		public var requestId: BaseTokenizedObject {
			get {
				return self.append("requestId") 
			}
		}
	}

	public static func getDryRunResults(requestId: Int) -> RequestBuilder<ObjectListResponse, ObjectListResponse.ObjectListResponseTokenizer, GetDryRunResultsTokenizer> {
		let request: RequestBuilder<ObjectListResponse, ObjectListResponse.ObjectListResponseTokenizer, GetDryRunResultsTokenizer> = RequestBuilder<ObjectListResponse, ObjectListResponse.ObjectListResponseTokenizer, GetDryRunResultsTokenizer>(service: "scheduledtask_scheduledtaskprofile", action: "getDryRunResults")
			.setBody(key: "requestId", value: requestId)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: ScheduledTaskProfileFilter.ScheduledTaskProfileFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<ScheduledTaskProfileListResponse, ScheduledTaskProfileListResponse.ScheduledTaskProfileListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: ScheduledTaskProfileFilter?) -> RequestBuilder<ScheduledTaskProfileListResponse, ScheduledTaskProfileListResponse.ScheduledTaskProfileListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List scheduled task profiles  */
	public static func list(filter: ScheduledTaskProfileFilter?, pager: FilterPager?) -> RequestBuilder<ScheduledTaskProfileListResponse, ScheduledTaskProfileListResponse.ScheduledTaskProfileListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<ScheduledTaskProfileListResponse, ScheduledTaskProfileListResponse.ScheduledTaskProfileListResponseTokenizer, ListTokenizer> = RequestBuilder<ScheduledTaskProfileListResponse, ScheduledTaskProfileListResponse.ScheduledTaskProfileListResponseTokenizer, ListTokenizer>(service: "scheduledtask_scheduledtaskprofile", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public class RequestDryRunTokenizer: ClientTokenizer  {
		
		public var scheduledTaskProfileId: BaseTokenizedObject {
			get {
				return self.append("scheduledTaskProfileId") 
			}
		}
		
		public var maxResults: BaseTokenizedObject {
			get {
				return self.append("maxResults") 
			}
		}
	}

	public static func requestDryRun(scheduledTaskProfileId: Int) -> RequestBuilder<Int, BaseTokenizedObject, RequestDryRunTokenizer> {
		return requestDryRun(scheduledTaskProfileId: scheduledTaskProfileId, maxResults: 500)
	}

	public static func requestDryRun(scheduledTaskProfileId: Int, maxResults: Int?) -> RequestBuilder<Int, BaseTokenizedObject, RequestDryRunTokenizer> {
		let request: RequestBuilder<Int, BaseTokenizedObject, RequestDryRunTokenizer> = RequestBuilder<Int, BaseTokenizedObject, RequestDryRunTokenizer>(service: "scheduledtask_scheduledtaskprofile", action: "requestDryRun")
			.setBody(key: "scheduledTaskProfileId", value: scheduledTaskProfileId)
			.setBody(key: "maxResults", value: maxResults)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func scheduledTaskProfile<T: ScheduledTaskProfile.ScheduledTaskProfileTokenizer>() -> T {
			return T(self.append("scheduledTaskProfile"))
		}
	}

	/**  Update an existing scheduled task profile  */
	public static func update(id: Int, scheduledTaskProfile: ScheduledTaskProfile) -> RequestBuilder<ScheduledTaskProfile, ScheduledTaskProfile.ScheduledTaskProfileTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<ScheduledTaskProfile, ScheduledTaskProfile.ScheduledTaskProfileTokenizer, UpdateTokenizer> = RequestBuilder<ScheduledTaskProfile, ScheduledTaskProfile.ScheduledTaskProfileTokenizer, UpdateTokenizer>(service: "scheduledtask_scheduledtaskprofile", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "scheduledTaskProfile", value: scheduledTaskProfile)

		return request
	}
}
