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
// Copyright (C) 2006-2023  Kaltura Inc.
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

public final class DrmPolicyService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func drmPolicy<T: DrmPolicy.DrmPolicyTokenizer>() -> T {
			return T(self.append("drmPolicy"))
		}
	}

	/**  Allows you to add a new DrmPolicy object  */
	public static func add(drmPolicy: DrmPolicy) -> RequestBuilder<DrmPolicy, DrmPolicy.DrmPolicyTokenizer, AddTokenizer> {
		let request: RequestBuilder<DrmPolicy, DrmPolicy.DrmPolicyTokenizer, AddTokenizer> = RequestBuilder<DrmPolicy, DrmPolicy.DrmPolicyTokenizer, AddTokenizer>(service: "drm_drmpolicy", action: "add")
			.setParam(key: "drmPolicy", value: drmPolicy)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var drmPolicyId: BaseTokenizedObject {
			get {
				return self.append("drmPolicyId") 
			}
		}
	}

	/**  Mark the KalturaDrmPolicy object as deleted  */
	public static func delete(drmPolicyId: Int) -> RequestBuilder<DrmPolicy, DrmPolicy.DrmPolicyTokenizer, DeleteTokenizer> {
		let request: RequestBuilder<DrmPolicy, DrmPolicy.DrmPolicyTokenizer, DeleteTokenizer> = RequestBuilder<DrmPolicy, DrmPolicy.DrmPolicyTokenizer, DeleteTokenizer>(service: "drm_drmpolicy", action: "delete")
			.setParam(key: "drmPolicyId", value: drmPolicyId)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var drmPolicyId: BaseTokenizedObject {
			get {
				return self.append("drmPolicyId") 
			}
		}
	}

	/**  Retrieve a KalturaDrmPolicy object by ID  */
	public static func get(drmPolicyId: Int) -> RequestBuilder<DrmPolicy, DrmPolicy.DrmPolicyTokenizer, GetTokenizer> {
		let request: RequestBuilder<DrmPolicy, DrmPolicy.DrmPolicyTokenizer, GetTokenizer> = RequestBuilder<DrmPolicy, DrmPolicy.DrmPolicyTokenizer, GetTokenizer>(service: "drm_drmpolicy", action: "get")
			.setParam(key: "drmPolicyId", value: drmPolicyId)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: DrmPolicyFilter.DrmPolicyFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<DrmPolicyListResponse, DrmPolicyListResponse.DrmPolicyListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: DrmPolicyFilter?) -> RequestBuilder<DrmPolicyListResponse, DrmPolicyListResponse.DrmPolicyListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List KalturaDrmPolicy objects  */
	public static func list(filter: DrmPolicyFilter?, pager: FilterPager?) -> RequestBuilder<DrmPolicyListResponse, DrmPolicyListResponse.DrmPolicyListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<DrmPolicyListResponse, DrmPolicyListResponse.DrmPolicyListResponseTokenizer, ListTokenizer> = RequestBuilder<DrmPolicyListResponse, DrmPolicyListResponse.DrmPolicyListResponseTokenizer, ListTokenizer>(service: "drm_drmpolicy", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var drmPolicyId: BaseTokenizedObject {
			get {
				return self.append("drmPolicyId") 
			}
		}
		
		public func drmPolicy<T: DrmPolicy.DrmPolicyTokenizer>() -> T {
			return T(self.append("drmPolicy"))
		}
	}

	/**  Update an existing KalturaDrmPolicy object  */
	public static func update(drmPolicyId: Int, drmPolicy: DrmPolicy) -> RequestBuilder<DrmPolicy, DrmPolicy.DrmPolicyTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<DrmPolicy, DrmPolicy.DrmPolicyTokenizer, UpdateTokenizer> = RequestBuilder<DrmPolicy, DrmPolicy.DrmPolicyTokenizer, UpdateTokenizer>(service: "drm_drmpolicy", action: "update")
			.setParam(key: "drmPolicyId", value: drmPolicyId)
			.setParam(key: "drmPolicy", value: drmPolicy)

		return request
	}
}
