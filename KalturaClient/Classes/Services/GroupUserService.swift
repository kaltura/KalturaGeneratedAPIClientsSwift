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
			.setParam(key: "groupUser", value: groupUser)

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
	public static func delete(userId: String, groupId: String) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "groupuser", action: "delete")
			.setParam(key: "userId", value: userId)
			.setParam(key: "groupId", value: groupId)

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
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class SyncTokenizer: ClientTokenizer  {
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var groupIds: BaseTokenizedObject {
			get {
				return self.append("groupIds") 
			}
		}
		
		public var removeFromExistingGroups: BaseTokenizedObject {
			get {
				return self.append("removeFromExistingGroups") 
			}
		}
		
		public var createNewGroups: BaseTokenizedObject {
			get {
				return self.append("createNewGroups") 
			}
		}
	}

	public static func sync(userId: String, groupIds: String) -> RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, SyncTokenizer> {
		return sync(userId: userId, groupIds: groupIds, removeFromExistingGroups: true)
	}

	public static func sync(userId: String, groupIds: String, removeFromExistingGroups: Bool?) -> RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, SyncTokenizer> {
		return sync(userId: userId, groupIds: groupIds, removeFromExistingGroups: removeFromExistingGroups, createNewGroups: true)
	}

	/**  sync by userId and groupIds  */
	public static func sync(userId: String, groupIds: String, removeFromExistingGroups: Bool?, createNewGroups: Bool?) -> RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, SyncTokenizer> {
		let request: RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, SyncTokenizer> = RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, SyncTokenizer>(service: "groupuser", action: "sync")
			.setParam(key: "userId", value: userId)
			.setParam(key: "groupIds", value: groupIds)
			.setParam(key: "removeFromExistingGroups", value: removeFromExistingGroups)
			.setParam(key: "createNewGroups", value: createNewGroups)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var groupUserId: BaseTokenizedObject {
			get {
				return self.append("groupUserId") 
			}
		}
		
		public func groupUser<T: GroupUser.GroupUserTokenizer>() -> T {
			return T(self.append("groupUser"))
		}
	}

	/**  update GroupUser  */
	public static func update(groupUserId: String, groupUser: GroupUser) -> RequestBuilder<GroupUser, GroupUser.GroupUserTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<GroupUser, GroupUser.GroupUserTokenizer, UpdateTokenizer> = RequestBuilder<GroupUser, GroupUser.GroupUserTokenizer, UpdateTokenizer>(service: "groupuser", action: "update")
			.setParam(key: "groupUserId", value: groupUserId)
			.setParam(key: "groupUser", value: groupUser)

		return request
	}
}
