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

open class SummaryVendorTaskData: LocalizedVendorTaskData {

	public class SummaryVendorTaskDataTokenizer: LocalizedVendorTaskData.LocalizedVendorTaskDataTokenizer {
		
		public var typeOfSummary: BaseTokenizedObject {
			get {
				return self.append("typeOfSummary") 
			}
		}
		
		public var writingStyle: BaseTokenizedObject {
			get {
				return self.append("writingStyle") 
			}
		}
		
		public var summaryOutputJson: BaseTokenizedObject {
			get {
				return self.append("summaryOutputJson") 
			}
		}
		
		public var instruction: BaseTokenizedObject {
			get {
				return self.append("instruction") 
			}
		}
	}

	/**  Type of summary.  */
	public var typeOfSummary: TypeOfSummaryTaskData? = nil
	/**  Writing style of the summary.  */
	public var writingStyle: SummaryWritingStyleTaskData? = nil
	/**  JSON string containing the summary output.  */
	public var summaryOutputJson: String? = nil
	/**  Additional instruction for the summary.  */
	public var instruction: String? = nil


	public func setMultiRequestToken(typeOfSummary: String) {
		self.dict["typeOfSummary"] = typeOfSummary
	}
	
	public func setMultiRequestToken(writingStyle: String) {
		self.dict["writingStyle"] = writingStyle
	}
	
	public func setMultiRequestToken(summaryOutputJson: String) {
		self.dict["summaryOutputJson"] = summaryOutputJson
	}
	
	public func setMultiRequestToken(instruction: String) {
		self.dict["instruction"] = instruction
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["typeOfSummary"] != nil {
			typeOfSummary = TypeOfSummaryTaskData(rawValue: "\(dict["typeOfSummary"]!)")
		}
		if dict["writingStyle"] != nil {
			writingStyle = SummaryWritingStyleTaskData(rawValue: "\(dict["writingStyle"]!)")
		}
		if dict["summaryOutputJson"] != nil {
			summaryOutputJson = dict["summaryOutputJson"] as? String
		}
		if dict["instruction"] != nil {
			instruction = dict["instruction"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(typeOfSummary != nil) {
			dict["typeOfSummary"] = typeOfSummary!.rawValue
		}
		if(writingStyle != nil) {
			dict["writingStyle"] = writingStyle!.rawValue
		}
		if(summaryOutputJson != nil) {
			dict["summaryOutputJson"] = summaryOutputJson!
		}
		if(instruction != nil) {
			dict["instruction"] = instruction!
		}
		return dict
	}
}

