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
// Copyright (C) 2006-2019  Kaltura Inc.
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

public final class GroupService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func group<T: Group.GroupTokenizer>() -> T {
			return T(self.append("group"))
		}
	}

	/**  Adds a new group (user of type group).  */
	public static func add(group: Group) -> RequestBuilder<Group, Group.GroupTokenizer, AddTokenizer> {
		let request: RequestBuilder<Group, Group.GroupTokenizer, AddTokenizer> = RequestBuilder<Group, Group.GroupTokenizer, AddTokenizer>(service: "group_group", action: "add")
			.setParam(key: "group", value: group)

		return request
	}

	public class CloneTokenizer: ClientTokenizer  {
		
		public var originalGroupId: BaseTokenizedObject {
			get {
				return self.append("originalGroupId") 
			}
		}
		
		public var newGroupName: BaseTokenizedObject {
			get {
				return self.append("newGroupName") 
			}
		}
	}

	/**  clone the group (groupId), and set group id with the neeGroupName.  */
	public static func clone(originalGroupId: String, newGroupName: String) -> RequestBuilder<Group, Group.GroupTokenizer, CloneTokenizer> {
		let request: RequestBuilder<Group, Group.GroupTokenizer, CloneTokenizer> = RequestBuilder<Group, Group.GroupTokenizer, CloneTokenizer>(service: "group_group", action: "clone")
			.setParam(key: "originalGroupId", value: originalGroupId)
			.setParam(key: "newGroupName", value: newGroupName)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var groupId: BaseTokenizedObject {
			get {
				return self.append("groupId") 
			}
		}
	}

	/**  Delete group by ID  */
	public static func delete(groupId: String) -> RequestBuilder<Group, Group.GroupTokenizer, DeleteTokenizer> {
		let request: RequestBuilder<Group, Group.GroupTokenizer, DeleteTokenizer> = RequestBuilder<Group, Group.GroupTokenizer, DeleteTokenizer>(service: "group_group", action: "delete")
			.setParam(key: "groupId", value: groupId)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var groupId: BaseTokenizedObject {
			get {
				return self.append("groupId") 
			}
		}
	}

	/**  Retrieves a group object for a specified group ID.  */
	public static func get(groupId: String) -> RequestBuilder<Group, Group.GroupTokenizer, GetTokenizer> {
		let request: RequestBuilder<Group, Group.GroupTokenizer, GetTokenizer> = RequestBuilder<Group, Group.GroupTokenizer, GetTokenizer>(service: "group_group", action: "get")
			.setParam(key: "groupId", value: groupId)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: GroupFilter.GroupFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<GroupListResponse, GroupListResponse.GroupListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: GroupFilter?) -> RequestBuilder<GroupListResponse, GroupListResponse.GroupListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  Lists group  objects that are associated with an account.   Blocked users are
	  listed unless you use a filter to exclude them.   Deleted users are not listed
	  unless you use a filter to include them.  */
	public static func list(filter: GroupFilter?, pager: FilterPager?) -> RequestBuilder<GroupListResponse, GroupListResponse.GroupListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<GroupListResponse, GroupListResponse.GroupListResponseTokenizer, ListTokenizer> = RequestBuilder<GroupListResponse, GroupListResponse.GroupListResponseTokenizer, ListTokenizer>(service: "group_group", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var groupId: BaseTokenizedObject {
			get {
				return self.append("groupId") 
			}
		}
		
		public func group<T: Group.GroupTokenizer>() -> T {
			return T(self.append("group"))
		}
	}

	/**  Update group by ID  */
	public static func update(groupId: String, group: Group) -> RequestBuilder<Group, Group.GroupTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<Group, Group.GroupTokenizer, UpdateTokenizer> = RequestBuilder<Group, Group.GroupTokenizer, UpdateTokenizer>(service: "group_group", action: "update")
			.setParam(key: "groupId", value: groupId)
			.setParam(key: "group", value: group)

		return request
	}
}
