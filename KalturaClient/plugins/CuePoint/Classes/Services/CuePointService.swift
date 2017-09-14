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

/**  Cue Point service  */
public final class CuePointService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func cuePoint<T: CuePoint.CuePointTokenizer>() -> T {
			return T(self.append("cuePoint"))
		}
	}

	/**  Allows you to add an cue point object associated with an entry  */
	public static func add(cuePoint: CuePoint) -> RequestBuilder<CuePoint, CuePoint.CuePointTokenizer, AddTokenizer> {
		let request: RequestBuilder<CuePoint, CuePoint.CuePointTokenizer, AddTokenizer> = RequestBuilder<CuePoint, CuePoint.CuePointTokenizer, AddTokenizer>(service: "cuepoint_cuepoint", action: "add")
			.setParam(key: "cuePoint", value: cuePoint)

		return request
	}

	public class AddFromBulkTokenizer: ClientTokenizer  {
	}

	/**  Allows you to add multiple cue points objects by uploading XML that contains
	  multiple cue point definitions  */
	public static func addFromBulk(fileData: RequestFile) -> RequestBuilder<CuePointListResponse, CuePointListResponse.CuePointListResponseTokenizer, AddFromBulkTokenizer> {
		let request: RequestBuilder<CuePointListResponse, CuePointListResponse.CuePointListResponseTokenizer, AddFromBulkTokenizer> = RequestBuilder<CuePointListResponse, CuePointListResponse.CuePointListResponseTokenizer, AddFromBulkTokenizer>(service: "cuepoint_cuepoint", action: "addFromBulk")
			.setFile(key: "fileData", value: fileData)

		return request
	}

	public class CloneTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
	}

	/**  Clone cuePoint with id to given entry  */
	public static func clone(id: String, entryId: String) -> RequestBuilder<CuePoint, CuePoint.CuePointTokenizer, CloneTokenizer> {
		let request: RequestBuilder<CuePoint, CuePoint.CuePointTokenizer, CloneTokenizer> = RequestBuilder<CuePoint, CuePoint.CuePointTokenizer, CloneTokenizer>(service: "cuepoint_cuepoint", action: "clone")
			.setParam(key: "id", value: id)
			.setParam(key: "entryId", value: entryId)

		return request
	}

	public class CountTokenizer: ClientTokenizer  {
		
		public func filter<T: CuePointFilter.CuePointFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	public static func count() -> RequestBuilder<Int, BaseTokenizedObject, CountTokenizer> {
		return count(filter: nil)
	}

	/**  count cue point objects by filter  */
	public static func count(filter: CuePointFilter?) -> RequestBuilder<Int, BaseTokenizedObject, CountTokenizer> {
		let request: RequestBuilder<Int, BaseTokenizedObject, CountTokenizer> = RequestBuilder<Int, BaseTokenizedObject, CountTokenizer>(service: "cuepoint_cuepoint", action: "count")
			.setParam(key: "filter", value: filter)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  delete cue point by id, and delete all children cue points  */
	public static func delete(id: String) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "cuepoint_cuepoint", action: "delete")
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

	/**  Retrieve an CuePoint object by id  */
	public static func get(id: String) -> RequestBuilder<CuePoint, CuePoint.CuePointTokenizer, GetTokenizer> {
		let request: RequestBuilder<CuePoint, CuePoint.CuePointTokenizer, GetTokenizer> = RequestBuilder<CuePoint, CuePoint.CuePointTokenizer, GetTokenizer>(service: "cuepoint_cuepoint", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: CuePointFilter.CuePointFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<CuePointListResponse, CuePointListResponse.CuePointListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: CuePointFilter?) -> RequestBuilder<CuePointListResponse, CuePointListResponse.CuePointListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List cue point objects by filter and pager  */
	public static func list(filter: CuePointFilter?, pager: FilterPager?) -> RequestBuilder<CuePointListResponse, CuePointListResponse.CuePointListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<CuePointListResponse, CuePointListResponse.CuePointListResponseTokenizer, ListTokenizer> = RequestBuilder<CuePointListResponse, CuePointListResponse.CuePointListResponseTokenizer, ListTokenizer>(service: "cuepoint_cuepoint", action: "list")
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
		
		public func cuePoint<T: CuePoint.CuePointTokenizer>() -> T {
			return T(self.append("cuePoint"))
		}
	}

	/**  Update cue point by id  */
	public static func update(id: String, cuePoint: CuePoint) -> RequestBuilder<CuePoint, CuePoint.CuePointTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<CuePoint, CuePoint.CuePointTokenizer, UpdateTokenizer> = RequestBuilder<CuePoint, CuePoint.CuePointTokenizer, UpdateTokenizer>(service: "cuepoint_cuepoint", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "cuePoint", value: cuePoint)

		return request
	}

	public class UpdateStatusTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
	}

	/**  Update cuePoint status by id  */
	public static func updateStatus(id: String, status: CuePointStatus) -> NullRequestBuilder<UpdateStatusTokenizer> {
		let request: NullRequestBuilder<UpdateStatusTokenizer> = NullRequestBuilder<UpdateStatusTokenizer>(service: "cuepoint_cuepoint", action: "updateStatus")
			.setParam(key: "id", value: id)
			.setParam(key: "status", value: status.rawValue)

		return request
	}
}
