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

open class LocalizedVendorTaskData: VendorTaskData {

	public class LocalizedVendorTaskDataTokenizer: VendorTaskData.VendorTaskDataTokenizer {
		
		public var outputLanguage: BaseTokenizedObject {
			get {
				return self.append("outputLanguage") 
			}
		}
		
		public var outputJson: BaseTokenizedObject {
			get {
				return self.append("outputJson") 
			}
		}
	}

	/**  Language code  */
	public var outputLanguage: Language? = nil
	/**  result as JSON string.  */
	public var outputJson: String? = nil


	public func setMultiRequestToken(outputLanguage: String) {
		self.dict["outputLanguage"] = outputLanguage
	}
	
	public func setMultiRequestToken(outputJson: String) {
		self.dict["outputJson"] = outputJson
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["outputLanguage"] != nil {
			outputLanguage = Language(rawValue: "\(dict["outputLanguage"]!)")
		}
		if dict["outputJson"] != nil {
			outputJson = dict["outputJson"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(outputLanguage != nil) {
			dict["outputLanguage"] = outputLanguage!.rawValue
		}
		if(outputJson != nil) {
			dict["outputJson"] = outputJson!
		}
		return dict
	}
}

