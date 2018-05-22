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
// Copyright (C) 2006-2018  Kaltura Inc.
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
extension GroupUserService{

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
}
