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

/**  Allows user to 'like' or 'unlike' and entry  */
public final class LikeService{

	public class CheckLikeExistsTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
	}

	public static func checkLikeExists(entryId: String) -> RequestBuilder<Bool, BaseTokenizedObject, CheckLikeExistsTokenizer> {
		return checkLikeExists(entryId: entryId, userId: nil)
	}

	public static func checkLikeExists(entryId: String, userId: String?) -> RequestBuilder<Bool, BaseTokenizedObject, CheckLikeExistsTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, CheckLikeExistsTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, CheckLikeExistsTokenizer>(service: "like_like", action: "checkLikeExists")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "userId", value: userId)

		return request
	}

	public class LikeTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
	}

	public static func like(entryId: String) -> RequestBuilder<Bool, BaseTokenizedObject, LikeTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, LikeTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, LikeTokenizer>(service: "like_like", action: "like")
			.setParam(key: "entryId", value: entryId)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: LikeFilter.LikeFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<LikeListResponse, LikeListResponse.LikeListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: LikeFilter?) -> RequestBuilder<LikeListResponse, LikeListResponse.LikeListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	public static func list(filter: LikeFilter?, pager: FilterPager?) -> RequestBuilder<LikeListResponse, LikeListResponse.LikeListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<LikeListResponse, LikeListResponse.LikeListResponseTokenizer, ListTokenizer> = RequestBuilder<LikeListResponse, LikeListResponse.LikeListResponseTokenizer, ListTokenizer>(service: "like_like", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class UnlikeTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
	}

	public static func unlike(entryId: String) -> RequestBuilder<Bool, BaseTokenizedObject, UnlikeTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, UnlikeTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, UnlikeTokenizer>(service: "like_like", action: "unlike")
			.setParam(key: "entryId", value: entryId)

		return request
	}
}
