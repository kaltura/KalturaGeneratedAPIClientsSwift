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
// Copyright (C) 2006-2020  Kaltura Inc.
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

/**  Entry Vendor Task Service  */
public final class EntryVendorTaskService{

	public class AbortTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var abortReason: BaseTokenizedObject {
			get {
				return self.append("abortReason") 
			}
		}
	}

	public static func abort(id: Int) -> RequestBuilder<EntryVendorTask, EntryVendorTask.EntryVendorTaskTokenizer, AbortTokenizer> {
		return abort(id: id, abortReason: nil)
	}

	/**  Cancel entry task. will only occur for task in PENDING or PENDING_MODERATION
	  status  */
	public static func abort(id: Int, abortReason: String?) -> RequestBuilder<EntryVendorTask, EntryVendorTask.EntryVendorTaskTokenizer, AbortTokenizer> {
		let request: RequestBuilder<EntryVendorTask, EntryVendorTask.EntryVendorTaskTokenizer, AbortTokenizer> = RequestBuilder<EntryVendorTask, EntryVendorTask.EntryVendorTaskTokenizer, AbortTokenizer>(service: "reach_entryvendortask", action: "abort")
			.setParam(key: "id", value: id)
			.setParam(key: "abortReason", value: abortReason)

		return request
	}

	public class AddTokenizer: ClientTokenizer  {
		
		public func entryVendorTask<T: EntryVendorTask.EntryVendorTaskTokenizer>() -> T {
			return T(self.append("entryVendorTask"))
		}
	}

	/**  Allows you to add a entry vendor task  */
	public static func add(entryVendorTask: EntryVendorTask) -> RequestBuilder<EntryVendorTask, EntryVendorTask.EntryVendorTaskTokenizer, AddTokenizer> {
		let request: RequestBuilder<EntryVendorTask, EntryVendorTask.EntryVendorTaskTokenizer, AddTokenizer> = RequestBuilder<EntryVendorTask, EntryVendorTask.EntryVendorTaskTokenizer, AddTokenizer>(service: "reach_entryvendortask", action: "add")
			.setParam(key: "entryVendorTask", value: entryVendorTask)

		return request
	}

	public class ApproveTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Approve entry vendor task for execution.  */
	public static func approve(id: Int) -> RequestBuilder<EntryVendorTask, EntryVendorTask.EntryVendorTaskTokenizer, ApproveTokenizer> {
		let request: RequestBuilder<EntryVendorTask, EntryVendorTask.EntryVendorTaskTokenizer, ApproveTokenizer> = RequestBuilder<EntryVendorTask, EntryVendorTask.EntryVendorTaskTokenizer, ApproveTokenizer>(service: "reach_entryvendortask", action: "approve")
			.setParam(key: "id", value: id)

		return request
	}

	public class ExportToCsvTokenizer: ClientTokenizer  {
		
		public func filter<T: EntryVendorTaskFilter.EntryVendorTaskFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	/**  add batch job that sends an email with a link to download an updated CSV that
	  contains list of users  */
	public static func exportToCsv(filter: EntryVendorTaskFilter) -> RequestBuilder<String, BaseTokenizedObject, ExportToCsvTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, ExportToCsvTokenizer> = RequestBuilder<String, BaseTokenizedObject, ExportToCsvTokenizer>(service: "reach_entryvendortask", action: "exportToCsv")
			.setParam(key: "filter", value: filter)

		return request
	}

	public class ExtendAccessKeyTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Extend access key in case the existing one has expired.  */
	public static func extendAccessKey(id: Int) -> RequestBuilder<EntryVendorTask, EntryVendorTask.EntryVendorTaskTokenizer, ExtendAccessKeyTokenizer> {
		let request: RequestBuilder<EntryVendorTask, EntryVendorTask.EntryVendorTaskTokenizer, ExtendAccessKeyTokenizer> = RequestBuilder<EntryVendorTask, EntryVendorTask.EntryVendorTaskTokenizer, ExtendAccessKeyTokenizer>(service: "reach_entryvendortask", action: "extendAccessKey")
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

	/**  Retrieve specific entry vendor task by id  */
	public static func get(id: Int) -> RequestBuilder<EntryVendorTask, EntryVendorTask.EntryVendorTaskTokenizer, GetTokenizer> {
		let request: RequestBuilder<EntryVendorTask, EntryVendorTask.EntryVendorTaskTokenizer, GetTokenizer> = RequestBuilder<EntryVendorTask, EntryVendorTask.EntryVendorTaskTokenizer, GetTokenizer>(service: "reach_entryvendortask", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class GetJobsTokenizer: ClientTokenizer  {
		
		public func filter<T: EntryVendorTaskFilter.EntryVendorTaskFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func getJobs() -> RequestBuilder<EntryVendorTaskListResponse, EntryVendorTaskListResponse.EntryVendorTaskListResponseTokenizer, GetJobsTokenizer> {
		return getJobs(filter: nil)
	}

	public static func getJobs(filter: EntryVendorTaskFilter?) -> RequestBuilder<EntryVendorTaskListResponse, EntryVendorTaskListResponse.EntryVendorTaskListResponseTokenizer, GetJobsTokenizer> {
		return getJobs(filter: filter, pager: nil)
	}

	/**  get KalturaEntryVendorTask objects for specific vendor partner  */
	public static func getJobs(filter: EntryVendorTaskFilter?, pager: FilterPager?) -> RequestBuilder<EntryVendorTaskListResponse, EntryVendorTaskListResponse.EntryVendorTaskListResponseTokenizer, GetJobsTokenizer> {
		let request: RequestBuilder<EntryVendorTaskListResponse, EntryVendorTaskListResponse.EntryVendorTaskListResponseTokenizer, GetJobsTokenizer> = RequestBuilder<EntryVendorTaskListResponse, EntryVendorTaskListResponse.EntryVendorTaskListResponseTokenizer, GetJobsTokenizer>(service: "reach_entryvendortask", action: "getJobs")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: EntryVendorTaskFilter.EntryVendorTaskFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<EntryVendorTaskListResponse, EntryVendorTaskListResponse.EntryVendorTaskListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: EntryVendorTaskFilter?) -> RequestBuilder<EntryVendorTaskListResponse, EntryVendorTaskListResponse.EntryVendorTaskListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List KalturaEntryVendorTask objects  */
	public static func list(filter: EntryVendorTaskFilter?, pager: FilterPager?) -> RequestBuilder<EntryVendorTaskListResponse, EntryVendorTaskListResponse.EntryVendorTaskListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<EntryVendorTaskListResponse, EntryVendorTaskListResponse.EntryVendorTaskListResponseTokenizer, ListTokenizer> = RequestBuilder<EntryVendorTaskListResponse, EntryVendorTaskListResponse.EntryVendorTaskListResponseTokenizer, ListTokenizer>(service: "reach_entryvendortask", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class RejectTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var rejectReason: BaseTokenizedObject {
			get {
				return self.append("rejectReason") 
			}
		}
	}

	public static func reject(id: Int) -> RequestBuilder<EntryVendorTask, EntryVendorTask.EntryVendorTaskTokenizer, RejectTokenizer> {
		return reject(id: id, rejectReason: nil)
	}

	/**  Reject entry vendor task for execution.  */
	public static func reject(id: Int, rejectReason: String?) -> RequestBuilder<EntryVendorTask, EntryVendorTask.EntryVendorTaskTokenizer, RejectTokenizer> {
		let request: RequestBuilder<EntryVendorTask, EntryVendorTask.EntryVendorTaskTokenizer, RejectTokenizer> = RequestBuilder<EntryVendorTask, EntryVendorTask.EntryVendorTaskTokenizer, RejectTokenizer>(service: "reach_entryvendortask", action: "reject")
			.setParam(key: "id", value: id)
			.setParam(key: "rejectReason", value: rejectReason)

		return request
	}

	public class ServeCsvTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Will serve a requested csv  */
	public static func serveCsv(id: String) -> RequestBuilder<String, BaseTokenizedObject, ServeCsvTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, ServeCsvTokenizer> = RequestBuilder<String, BaseTokenizedObject, ServeCsvTokenizer>(service: "reach_entryvendortask", action: "serveCsv")
			.setParam(key: "id", value: id)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func entryVendorTask<T: EntryVendorTask.EntryVendorTaskTokenizer>() -> T {
			return T(self.append("entryVendorTask"))
		}
	}

	/**  Update entry vendor task. Only the properties that were set will be updated.  */
	public static func update(id: Int, entryVendorTask: EntryVendorTask) -> RequestBuilder<EntryVendorTask, EntryVendorTask.EntryVendorTaskTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<EntryVendorTask, EntryVendorTask.EntryVendorTaskTokenizer, UpdateTokenizer> = RequestBuilder<EntryVendorTask, EntryVendorTask.EntryVendorTaskTokenizer, UpdateTokenizer>(service: "reach_entryvendortask", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "entryVendorTask", value: entryVendorTask)

		return request
	}

	public class UpdateJobTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func entryVendorTask<T: EntryVendorTask.EntryVendorTaskTokenizer>() -> T {
			return T(self.append("entryVendorTask"))
		}
	}

	/**  Update entry vendor task. Only the properties that were set will be updated.  */
	public static func updateJob(id: Int, entryVendorTask: EntryVendorTask) -> RequestBuilder<EntryVendorTask, EntryVendorTask.EntryVendorTaskTokenizer, UpdateJobTokenizer> {
		let request: RequestBuilder<EntryVendorTask, EntryVendorTask.EntryVendorTaskTokenizer, UpdateJobTokenizer> = RequestBuilder<EntryVendorTask, EntryVendorTask.EntryVendorTaskTokenizer, UpdateJobTokenizer>(service: "reach_entryvendortask", action: "updateJob")
			.setParam(key: "id", value: id)
			.setParam(key: "entryVendorTask", value: entryVendorTask)

		return request
	}
}
