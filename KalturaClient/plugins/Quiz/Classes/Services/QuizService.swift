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

/**  Allows user to handle quizzes  */
public final class QuizService{

	public class AddTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public func quiz<T: Quiz.QuizTokenizer>() -> T {
			return T(self.append("quiz"))
		}
	}

	/**  Allows to add a quiz to an entry  */
	public static func add(entryId: String, quiz: Quiz) -> RequestBuilder<Quiz, Quiz.QuizTokenizer, AddTokenizer> {
		let request: RequestBuilder<Quiz, Quiz.QuizTokenizer, AddTokenizer> = RequestBuilder<Quiz, Quiz.QuizTokenizer, AddTokenizer>(service: "quiz_quiz", action: "add")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "quiz", value: quiz)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
	}

	/**  Allows to get a quiz  */
	public static func get(entryId: String) -> RequestBuilder<Quiz, Quiz.QuizTokenizer, GetTokenizer> {
		let request: RequestBuilder<Quiz, Quiz.QuizTokenizer, GetTokenizer> = RequestBuilder<Quiz, Quiz.QuizTokenizer, GetTokenizer>(service: "quiz_quiz", action: "get")
			.setParam(key: "entryId", value: entryId)

		return request
	}

	public class GetUrlTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var quizOutputType: BaseTokenizedObject {
			get {
				return self.append("quizOutputType") 
			}
		}
	}

	/**  sends a with an api request for pdf from quiz object  */
	public static func getUrl(entryId: String, quizOutputType: QuizOutputType) -> RequestBuilder<String, BaseTokenizedObject, GetUrlTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, GetUrlTokenizer> = RequestBuilder<String, BaseTokenizedObject, GetUrlTokenizer>(service: "quiz_quiz", action: "getUrl")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "quizOutputType", value: quizOutputType.rawValue)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: QuizFilter.QuizFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<QuizListResponse, QuizListResponse.QuizListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: QuizFilter?) -> RequestBuilder<QuizListResponse, QuizListResponse.QuizListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List quiz objects by filter and pager  */
	public static func list(filter: QuizFilter?, pager: FilterPager?) -> RequestBuilder<QuizListResponse, QuizListResponse.QuizListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<QuizListResponse, QuizListResponse.QuizListResponseTokenizer, ListTokenizer> = RequestBuilder<QuizListResponse, QuizListResponse.QuizListResponseTokenizer, ListTokenizer>(service: "quiz_quiz", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public func quiz<T: Quiz.QuizTokenizer>() -> T {
			return T(self.append("quiz"))
		}
	}

	/**  Allows to update a quiz  */
	public static func update(entryId: String, quiz: Quiz) -> RequestBuilder<Quiz, Quiz.QuizTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<Quiz, Quiz.QuizTokenizer, UpdateTokenizer> = RequestBuilder<Quiz, Quiz.QuizTokenizer, UpdateTokenizer>(service: "quiz_quiz", action: "update")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "quiz", value: quiz)

		return request
	}
}
