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

/**  Reach Profile Service  */
public final class ReachProfileService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func reachProfile<T: ReachProfile.ReachProfileTokenizer>() -> T {
			return T(self.append("reachProfile"))
		}
	}

	/**  Allows you to add a partner specific reach profile  */
	public static func add(reachProfile: ReachProfile) -> RequestBuilder<ReachProfile, ReachProfile.ReachProfileTokenizer, AddTokenizer> {
		let request: RequestBuilder<ReachProfile, ReachProfile.ReachProfileTokenizer, AddTokenizer> = RequestBuilder<ReachProfile, ReachProfile.ReachProfileTokenizer, AddTokenizer>(service: "reach_reachprofile", action: "add")
			.setParam(key: "reachProfile", value: reachProfile)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete vednor profile by id  */
	public static func delete(id: Int) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "reach_reachprofile", action: "delete")
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

	/**  Retrieve specific reach profile by id  */
	public static func get(id: Int) -> RequestBuilder<ReachProfile, ReachProfile.ReachProfileTokenizer, GetTokenizer> {
		let request: RequestBuilder<ReachProfile, ReachProfile.ReachProfileTokenizer, GetTokenizer> = RequestBuilder<ReachProfile, ReachProfile.ReachProfileTokenizer, GetTokenizer>(service: "reach_reachprofile", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: ReachProfileFilter.ReachProfileFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<ReachProfileListResponse, ReachProfileListResponse.ReachProfileListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: ReachProfileFilter?) -> RequestBuilder<ReachProfileListResponse, ReachProfileListResponse.ReachProfileListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List KalturaReachProfile objects  */
	public static func list(filter: ReachProfileFilter?, pager: FilterPager?) -> RequestBuilder<ReachProfileListResponse, ReachProfileListResponse.ReachProfileListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<ReachProfileListResponse, ReachProfileListResponse.ReachProfileListResponseTokenizer, ListTokenizer> = RequestBuilder<ReachProfileListResponse, ReachProfileListResponse.ReachProfileListResponseTokenizer, ListTokenizer>(service: "reach_reachprofile", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class SyncCreditTokenizer: ClientTokenizer  {
		
		public var reachProfileId: BaseTokenizedObject {
			get {
				return self.append("reachProfileId") 
			}
		}
	}

	/**  sync vednor profile credit  */
	public static func syncCredit(reachProfileId: Int) -> RequestBuilder<ReachProfile, ReachProfile.ReachProfileTokenizer, SyncCreditTokenizer> {
		let request: RequestBuilder<ReachProfile, ReachProfile.ReachProfileTokenizer, SyncCreditTokenizer> = RequestBuilder<ReachProfile, ReachProfile.ReachProfileTokenizer, SyncCreditTokenizer>(service: "reach_reachprofile", action: "syncCredit")
			.setParam(key: "reachProfileId", value: reachProfileId)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func reachProfile<T: ReachProfile.ReachProfileTokenizer>() -> T {
			return T(self.append("reachProfile"))
		}
	}

	/**  Update an existing reach profile object  */
	public static func update(id: Int, reachProfile: ReachProfile) -> RequestBuilder<ReachProfile, ReachProfile.ReachProfileTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<ReachProfile, ReachProfile.ReachProfileTokenizer, UpdateTokenizer> = RequestBuilder<ReachProfile, ReachProfile.ReachProfileTokenizer, UpdateTokenizer>(service: "reach_reachprofile", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "reachProfile", value: reachProfile)

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

	/**  Update reach profile status by id  */
	public static func updateStatus(id: Int, status: ReachProfileStatus) -> RequestBuilder<ReachProfile, ReachProfile.ReachProfileTokenizer, UpdateStatusTokenizer> {
		let request: RequestBuilder<ReachProfile, ReachProfile.ReachProfileTokenizer, UpdateStatusTokenizer> = RequestBuilder<ReachProfile, ReachProfile.ReachProfileTokenizer, UpdateStatusTokenizer>(service: "reach_reachprofile", action: "updateStatus")
			.setParam(key: "id", value: id)
			.setParam(key: "status", value: status.rawValue)

		return request
	}
}
