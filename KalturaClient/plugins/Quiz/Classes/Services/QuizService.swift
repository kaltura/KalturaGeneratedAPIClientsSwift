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

/**  Allows user to handle quizzes  */
public final class QuizService{

	/**  Allows to add a quiz to an entry  */
	public static func add(entryId: String, quiz: Quiz) -> RequestBuilder<Quiz> {
		let request: RequestBuilder<Quiz> = RequestBuilder<Quiz>(service: "quiz_quiz", action: "add")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "quiz", value: quiz)

		return request
	}

	/**  Allows to get a quiz  */
	public static func get(entryId: String) -> RequestBuilder<Quiz> {
		let request: RequestBuilder<Quiz> = RequestBuilder<Quiz>(service: "quiz_quiz", action: "get")
			.setBody(key: "entryId", value: entryId)

		return request
	}

	/**  sends a with an api request for pdf from quiz object  */
	public static func getUrl(entryId: String, quizOutputType: QuizOutputType) -> RequestBuilder<String> {
		let request: RequestBuilder<String> = RequestBuilder<String>(service: "quiz_quiz", action: "getUrl")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "quizOutputType", value: quizOutputType.rawValue)

		return request
	}

	public static func list() -> RequestBuilder<QuizListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: QuizFilter?) -> RequestBuilder<QuizListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List quiz objects by filter and pager  */
	public static func list(filter: QuizFilter?, pager: FilterPager?) -> RequestBuilder<QuizListResponse> {
		let request: RequestBuilder<QuizListResponse> = RequestBuilder<QuizListResponse>(service: "quiz_quiz", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Allows to update a quiz  */
	public static func update(entryId: String, quiz: Quiz) -> RequestBuilder<Quiz> {
		let request: RequestBuilder<Quiz> = RequestBuilder<Quiz>(service: "quiz_quiz", action: "update")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "quiz", value: quiz)

		return request
	}
}
