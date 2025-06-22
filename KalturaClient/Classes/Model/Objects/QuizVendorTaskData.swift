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

open class QuizVendorTaskData: LocalizedVendorTaskData {

	public class QuizVendorTaskDataTokenizer: LocalizedVendorTaskData.LocalizedVendorTaskDataTokenizer {
		
		public var numberOfQuestions: BaseTokenizedObject {
			get {
				return self.append("numberOfQuestions") 
			}
		}
		
		public var questionsType: BaseTokenizedObject {
			get {
				return self.append("questionsType") 
			}
		}
		
		public var context: BaseTokenizedObject {
			get {
				return self.append("context") 
			}
		}
		
		public var formalStyle: BaseTokenizedObject {
			get {
				return self.append("formalStyle") 
			}
		}
		
		public var createQuiz: BaseTokenizedObject {
			get {
				return self.append("createQuiz") 
			}
		}
		
		public var quizOutput: BaseTokenizedObject {
			get {
				return self.append("quizOutput") 
			}
		}
	}

	/**  Number Of Questions.  */
	public var numberOfQuestions: Int? = nil
	/**  Questions Type.  */
	public var questionsType: String? = nil
	/**  Quiz Context.  */
	public var context: String? = nil
	/**  Formal Style.  */
	public var formalStyle: String? = nil
	/**  Create quiz flag.  */
	public var createQuiz: Bool? = nil
	/**  Quiz entry Id  */
	public var quizOutput: String? = nil


	public func setMultiRequestToken(numberOfQuestions: String) {
		self.dict["numberOfQuestions"] = numberOfQuestions
	}
	
	public func setMultiRequestToken(questionsType: String) {
		self.dict["questionsType"] = questionsType
	}
	
	public func setMultiRequestToken(context: String) {
		self.dict["context"] = context
	}
	
	public func setMultiRequestToken(formalStyle: String) {
		self.dict["formalStyle"] = formalStyle
	}
	
	public func setMultiRequestToken(createQuiz: String) {
		self.dict["createQuiz"] = createQuiz
	}
	
	public func setMultiRequestToken(quizOutput: String) {
		self.dict["quizOutput"] = quizOutput
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["numberOfQuestions"] != nil {
			numberOfQuestions = dict["numberOfQuestions"] as? Int
		}
		if dict["questionsType"] != nil {
			questionsType = dict["questionsType"] as? String
		}
		if dict["context"] != nil {
			context = dict["context"] as? String
		}
		if dict["formalStyle"] != nil {
			formalStyle = dict["formalStyle"] as? String
		}
		if dict["createQuiz"] != nil {
			createQuiz = dict["createQuiz"] as? Bool
		}
		if dict["quizOutput"] != nil {
			quizOutput = dict["quizOutput"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(numberOfQuestions != nil) {
			dict["numberOfQuestions"] = numberOfQuestions!
		}
		if(questionsType != nil) {
			dict["questionsType"] = questionsType!
		}
		if(context != nil) {
			dict["context"] = context!
		}
		if(formalStyle != nil) {
			dict["formalStyle"] = formalStyle!
		}
		if(createQuiz != nil) {
			dict["createQuiz"] = createQuiz!
		}
		if(quizOutput != nil) {
			dict["quizOutput"] = quizOutput!
		}
		return dict
	}
}

