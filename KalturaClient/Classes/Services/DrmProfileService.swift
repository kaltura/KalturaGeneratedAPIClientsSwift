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
 * This class was generated using generate.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

public final class DrmProfileService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func drmProfile<T: DrmProfile.DrmProfileTokenizer>() -> T {
			return T(self.append("drmProfile"))
		}
	}

	/**  Allows you to add a new DrmProfile object  */
	public static func add(drmProfile: DrmProfile) -> RequestBuilder<DrmProfile, DrmProfile.DrmProfileTokenizer, AddTokenizer> {
		let request: RequestBuilder<DrmProfile, DrmProfile.DrmProfileTokenizer, AddTokenizer> = RequestBuilder<DrmProfile, DrmProfile.DrmProfileTokenizer, AddTokenizer>(service: "drm_drmprofile", action: "add")
			.setParam(key: "drmProfile", value: drmProfile)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var drmProfileId: BaseTokenizedObject {
			get {
				return self.append("drmProfileId") 
			}
		}
	}

	/**  Mark the KalturaDrmProfile object as deleted  */
	public static func delete(drmProfileId: Int) -> RequestBuilder<DrmProfile, DrmProfile.DrmProfileTokenizer, DeleteTokenizer> {
		let request: RequestBuilder<DrmProfile, DrmProfile.DrmProfileTokenizer, DeleteTokenizer> = RequestBuilder<DrmProfile, DrmProfile.DrmProfileTokenizer, DeleteTokenizer>(service: "drm_drmprofile", action: "delete")
			.setParam(key: "drmProfileId", value: drmProfileId)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var drmProfileId: BaseTokenizedObject {
			get {
				return self.append("drmProfileId") 
			}
		}
	}

	/**  Retrieve a KalturaDrmProfile object by ID  */
	public static func get(drmProfileId: Int) -> RequestBuilder<DrmProfile, DrmProfile.DrmProfileTokenizer, GetTokenizer> {
		let request: RequestBuilder<DrmProfile, DrmProfile.DrmProfileTokenizer, GetTokenizer> = RequestBuilder<DrmProfile, DrmProfile.DrmProfileTokenizer, GetTokenizer>(service: "drm_drmprofile", action: "get")
			.setParam(key: "drmProfileId", value: drmProfileId)

		return request
	}

	public class GetByProviderTokenizer: ClientTokenizer  {
		
		public var provider: BaseTokenizedObject {
			get {
				return self.append("provider") 
			}
		}
	}

	/**  Retrieve a KalturaDrmProfile object by provider, if no specific profile defined
	  return default profile  */
	public static func getByProvider(provider: DrmProviderType) -> RequestBuilder<DrmProfile, DrmProfile.DrmProfileTokenizer, GetByProviderTokenizer> {
		let request: RequestBuilder<DrmProfile, DrmProfile.DrmProfileTokenizer, GetByProviderTokenizer> = RequestBuilder<DrmProfile, DrmProfile.DrmProfileTokenizer, GetByProviderTokenizer>(service: "drm_drmprofile", action: "getByProvider")
			.setParam(key: "provider", value: provider.rawValue)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: DrmProfileFilter.DrmProfileFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<DrmProfileListResponse, DrmProfileListResponse.DrmProfileListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: DrmProfileFilter?) -> RequestBuilder<DrmProfileListResponse, DrmProfileListResponse.DrmProfileListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List KalturaDrmProfile objects  */
	public static func list(filter: DrmProfileFilter?, pager: FilterPager?) -> RequestBuilder<DrmProfileListResponse, DrmProfileListResponse.DrmProfileListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<DrmProfileListResponse, DrmProfileListResponse.DrmProfileListResponseTokenizer, ListTokenizer> = RequestBuilder<DrmProfileListResponse, DrmProfileListResponse.DrmProfileListResponseTokenizer, ListTokenizer>(service: "drm_drmprofile", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var drmProfileId: BaseTokenizedObject {
			get {
				return self.append("drmProfileId") 
			}
		}
		
		public func drmProfile<T: DrmProfile.DrmProfileTokenizer>() -> T {
			return T(self.append("drmProfile"))
		}
	}

	/**  Update an existing KalturaDrmProfile object  */
	public static func update(drmProfileId: Int, drmProfile: DrmProfile) -> RequestBuilder<DrmProfile, DrmProfile.DrmProfileTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<DrmProfile, DrmProfile.DrmProfileTokenizer, UpdateTokenizer> = RequestBuilder<DrmProfile, DrmProfile.DrmProfileTokenizer, UpdateTokenizer>(service: "drm_drmprofile", action: "update")
			.setParam(key: "drmProfileId", value: drmProfileId)
			.setParam(key: "drmProfile", value: drmProfile)

		return request
	}
}
