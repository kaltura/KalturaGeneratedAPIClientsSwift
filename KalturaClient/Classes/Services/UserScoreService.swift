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
// Copyright (C) 2006-2022  Kaltura Inc.
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

public final class UserScoreService{

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var gameObjectId: BaseTokenizedObject {
			get {
				return self.append("gameObjectId") 
			}
		}
		
		public var gameObjectType: BaseTokenizedObject {
			get {
				return self.append("gameObjectType") 
			}
		}
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
	}

	public static func delete(gameObjectId: Int, gameObjectType: GameObjectType, userId: String) -> RequestBuilder<UserScorePropertiesResponse, UserScorePropertiesResponse.UserScorePropertiesResponseTokenizer, DeleteTokenizer> {
		let request: RequestBuilder<UserScorePropertiesResponse, UserScorePropertiesResponse.UserScorePropertiesResponseTokenizer, DeleteTokenizer> = RequestBuilder<UserScorePropertiesResponse, UserScorePropertiesResponse.UserScorePropertiesResponseTokenizer, DeleteTokenizer>(service: "game_userscore", action: "delete")
			.setParam(key: "gameObjectId", value: gameObjectId)
			.setParam(key: "gameObjectType", value: gameObjectType.rawValue)
			.setParam(key: "userId", value: userId)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: UserScorePropertiesFilter.UserScorePropertiesFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list(filter: UserScorePropertiesFilter) -> RequestBuilder<UserScorePropertiesResponse, UserScorePropertiesResponse.UserScorePropertiesResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	public static func list(filter: UserScorePropertiesFilter, pager: FilterPager?) -> RequestBuilder<UserScorePropertiesResponse, UserScorePropertiesResponse.UserScorePropertiesResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<UserScorePropertiesResponse, UserScorePropertiesResponse.UserScorePropertiesResponseTokenizer, ListTokenizer> = RequestBuilder<UserScorePropertiesResponse, UserScorePropertiesResponse.UserScorePropertiesResponseTokenizer, ListTokenizer>(service: "game_userscore", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var gameObjectId: BaseTokenizedObject {
			get {
				return self.append("gameObjectId") 
			}
		}
		
		public var gameObjectType: BaseTokenizedObject {
			get {
				return self.append("gameObjectType") 
			}
		}
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var score: BaseTokenizedObject {
			get {
				return self.append("score") 
			}
		}
	}

	public static func update(gameObjectId: Int, gameObjectType: GameObjectType, userId: String, score: Int) -> RequestBuilder<UserScorePropertiesResponse, UserScorePropertiesResponse.UserScorePropertiesResponseTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<UserScorePropertiesResponse, UserScorePropertiesResponse.UserScorePropertiesResponseTokenizer, UpdateTokenizer> = RequestBuilder<UserScorePropertiesResponse, UserScorePropertiesResponse.UserScorePropertiesResponseTokenizer, UpdateTokenizer>(service: "game_userscore", action: "update")
			.setParam(key: "gameObjectId", value: gameObjectId)
			.setParam(key: "gameObjectType", value: gameObjectType.rawValue)
			.setParam(key: "userId", value: userId)
			.setParam(key: "score", value: score)

		return request
	}
}
