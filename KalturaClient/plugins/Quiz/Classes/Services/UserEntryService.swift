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

extension UserEntryService{

	/**  Adds a user_entry to the Kaltura DB.  */
	public static func add(userEntry: UserEntry) -> RequestBuilder<UserEntry> {
		let request: RequestBuilder<UserEntry> = RequestBuilder<UserEntry>(service: "userentry", action: "add")
			.setBody(key: "userEntry", value: userEntry)

		return request
	}

	public static func bulkDelete(filter: UserEntryFilter) -> RequestBuilder<Int> {
		let request: RequestBuilder<Int> = RequestBuilder<Int>(service: "userentry", action: "bulkDelete")
			.setBody(key: "filter", value: filter)

		return request
	}

	public static func delete(id: Int) -> RequestBuilder<UserEntry> {
		let request: RequestBuilder<UserEntry> = RequestBuilder<UserEntry>(service: "userentry", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	public static func get(id: String) -> RequestBuilder<UserEntry> {
		let request: RequestBuilder<UserEntry> = RequestBuilder<UserEntry>(service: "userentry", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public static func list() -> RequestBuilder<UserEntryListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: UserEntryFilter?) -> RequestBuilder<UserEntryListResponse> {
		return list(filter: filter, pager: nil)
	}

	public static func list(filter: UserEntryFilter?, pager: FilterPager?) -> RequestBuilder<UserEntryListResponse> {
		let request: RequestBuilder<UserEntryListResponse> = RequestBuilder<UserEntryListResponse>(service: "userentry", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Submits the quiz so that it's status will be submitted and calculates the score
	  for the quiz  */
	public static func submitQuiz(id: Int) -> RequestBuilder<QuizUserEntry> {
		let request: RequestBuilder<QuizUserEntry> = RequestBuilder<QuizUserEntry>(service: "userentry", action: "submitQuiz")
			.setBody(key: "id", value: id)

		return request
	}

	public static func update(id: Int, userEntry: UserEntry) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "userentry", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "userEntry", value: userEntry)

		return request
	}
}
