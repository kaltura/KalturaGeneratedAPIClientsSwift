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

/**  Add &amp; Manage GroupUser  */
public final class GroupUserService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func groupUser<T: GroupUser.GroupUserTokenizer>() -> T {
			return T(self.append("groupUser"))
		}
	}

	/**  Add new GroupUser  */
	public static func add(groupUser: GroupUser) -> RequestBuilder<GroupUser, GroupUser.GroupUserTokenizer, AddTokenizer> {
		let request: RequestBuilder<GroupUser, GroupUser.GroupUserTokenizer, AddTokenizer> = RequestBuilder<GroupUser, GroupUser.GroupUserTokenizer, AddTokenizer>(service: "groupuser", action: "add")
			.setBody(key: "groupUser", value: groupUser)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var groupId: BaseTokenizedObject {
			get {
				return self.append("groupId") 
			}
		}
	}

	/**  delete by userId and groupId  */
	public static func delete(userId: String, groupId: String) -> NullRequestBuilder {
		let request: NullRequestBuilder = NullRequestBuilder(service: "groupuser", action: "delete")
			.setBody(key: "userId", value: userId)
			.setBody(key: "groupId", value: groupId)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: GroupUserFilter.GroupUserFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<GroupUserListResponse, GroupUserListResponse.GroupUserListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: GroupUserFilter?) -> RequestBuilder<GroupUserListResponse, GroupUserListResponse.GroupUserListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List all GroupUsers  */
	public static func list(filter: GroupUserFilter?, pager: FilterPager?) -> RequestBuilder<GroupUserListResponse, GroupUserListResponse.GroupUserListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<GroupUserListResponse, GroupUserListResponse.GroupUserListResponseTokenizer, ListTokenizer> = RequestBuilder<GroupUserListResponse, GroupUserListResponse.GroupUserListResponseTokenizer, ListTokenizer>(service: "groupuser", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}
}
