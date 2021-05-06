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

/**  Allows user to manipulate their entry rating  */
public final class RatingService{

	public class CheckRatingTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
	}

	public static func checkRating(entryId: String) -> RequestBuilder<Int, BaseTokenizedObject, CheckRatingTokenizer> {
		let request: RequestBuilder<Int, BaseTokenizedObject, CheckRatingTokenizer> = RequestBuilder<Int, BaseTokenizedObject, CheckRatingTokenizer>(service: "rating_rating", action: "checkRating")
			.setParam(key: "entryId", value: entryId)

		return request
	}

	public class GetRatingCountsTokenizer: ClientTokenizer  {
		
		public func filter<T: RatingCountFilter.RatingCountFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	public static func getRatingCounts(filter: RatingCountFilter) -> RequestBuilder<RatingCountListResponse, RatingCountListResponse.RatingCountListResponseTokenizer, GetRatingCountsTokenizer> {
		let request: RequestBuilder<RatingCountListResponse, RatingCountListResponse.RatingCountListResponseTokenizer, GetRatingCountsTokenizer> = RequestBuilder<RatingCountListResponse, RatingCountListResponse.RatingCountListResponseTokenizer, GetRatingCountsTokenizer>(service: "rating_rating", action: "getRatingCounts")
			.setParam(key: "filter", value: filter)

		return request
	}

	public class RateTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var rank: BaseTokenizedObject {
			get {
				return self.append("rank") 
			}
		}
	}

	public static func rate(entryId: String, rank: Int) -> RequestBuilder<Int, BaseTokenizedObject, RateTokenizer> {
		let request: RequestBuilder<Int, BaseTokenizedObject, RateTokenizer> = RequestBuilder<Int, BaseTokenizedObject, RateTokenizer>(service: "rating_rating", action: "rate")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "rank", value: rank)

		return request
	}

	public class RemoveRatingTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
	}

	public static func removeRating(entryId: String) -> RequestBuilder<Bool, BaseTokenizedObject, RemoveRatingTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, RemoveRatingTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, RemoveRatingTokenizer>(service: "rating_rating", action: "removeRating")
			.setParam(key: "entryId", value: entryId)

		return request
	}
}
