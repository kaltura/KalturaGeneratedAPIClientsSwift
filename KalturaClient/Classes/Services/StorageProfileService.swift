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

/**  Storage Profiles service  */
public final class StorageProfileService{

	public class AddTokenizer: ClientTokenizer  {
		
		public var storageProfile: StorageProfile.StorageProfileTokenizer {
			get {
				return StorageProfile.StorageProfileTokenizer(self.append("storageProfile")) 
			}
		}
	}

	/**  Adds a storage profile to the Kaltura DB.  */
	public static func add(storageProfile: StorageProfile) -> RequestBuilder<StorageProfile, StorageProfile.StorageProfileTokenizer, AddTokenizer> {
		let request: RequestBuilder<StorageProfile, StorageProfile.StorageProfileTokenizer, AddTokenizer> = RequestBuilder<StorageProfile, StorageProfile.StorageProfileTokenizer, AddTokenizer>(service: "storageprofile", action: "add")
			.setBody(key: "storageProfile", value: storageProfile)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var storageProfileId: BaseTokenizedObject {
			get {
				return self.append("storageProfileId") 
			}
		}
	}

	/**  Get storage profile by id  */
	public static func get(storageProfileId: Int) -> RequestBuilder<StorageProfile, StorageProfile.StorageProfileTokenizer, GetTokenizer> {
		let request: RequestBuilder<StorageProfile, StorageProfile.StorageProfileTokenizer, GetTokenizer> = RequestBuilder<StorageProfile, StorageProfile.StorageProfileTokenizer, GetTokenizer>(service: "storageprofile", action: "get")
			.setBody(key: "storageProfileId", value: storageProfileId)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public var filter: StorageProfileFilter.StorageProfileFilterTokenizer {
			get {
				return StorageProfileFilter.StorageProfileFilterTokenizer(self.append("filter")) 
			}
		}
		
		public var pager: FilterPager.FilterPagerTokenizer {
			get {
				return FilterPager.FilterPagerTokenizer(self.append("pager")) 
			}
		}
	}

	public static func list() -> RequestBuilder<StorageProfileListResponse, StorageProfileListResponse.StorageProfileListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: StorageProfileFilter?) -> RequestBuilder<StorageProfileListResponse, StorageProfileListResponse.StorageProfileListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	public static func list(filter: StorageProfileFilter?, pager: FilterPager?) -> RequestBuilder<StorageProfileListResponse, StorageProfileListResponse.StorageProfileListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<StorageProfileListResponse, StorageProfileListResponse.StorageProfileListResponseTokenizer, ListTokenizer> = RequestBuilder<StorageProfileListResponse, StorageProfileListResponse.StorageProfileListResponseTokenizer, ListTokenizer>(service: "storageprofile", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var storageProfileId: BaseTokenizedObject {
			get {
				return self.append("storageProfileId") 
			}
		}
		
		public var storageProfile: StorageProfile.StorageProfileTokenizer {
			get {
				return StorageProfile.StorageProfileTokenizer(self.append("storageProfile")) 
			}
		}
	}

	/**  Update storage profile by id  */
	public static func update(storageProfileId: Int, storageProfile: StorageProfile) -> RequestBuilder<StorageProfile, StorageProfile.StorageProfileTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<StorageProfile, StorageProfile.StorageProfileTokenizer, UpdateTokenizer> = RequestBuilder<StorageProfile, StorageProfile.StorageProfileTokenizer, UpdateTokenizer>(service: "storageprofile", action: "update")
			.setBody(key: "storageProfileId", value: storageProfileId)
			.setBody(key: "storageProfile", value: storageProfile)

		return request
	}

	public class UpdateStatusTokenizer: ClientTokenizer  {
		
		public var storageId: BaseTokenizedObject {
			get {
				return self.append("storageId") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
	}

	public static func updateStatus(storageId: Int, status: StorageProfileStatus) -> NullRequestBuilder {
		let request: NullRequestBuilder = NullRequestBuilder(service: "storageprofile", action: "updateStatus")
			.setBody(key: "storageId", value: storageId)
			.setBody(key: "status", value: status.rawValue)

		return request
	}
}
