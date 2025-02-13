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

open class SearchResultResponse: ObjectBase {

	public class SearchResultResponseTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var objects: ArrayTokenizedObject<SearchResult.SearchResultTokenizer> {
			get {
				return ArrayTokenizedObject<SearchResult.SearchResultTokenizer>(self.append("objects"))
			} 
		}
		
		public var needMediaInfo: BaseTokenizedObject {
			get {
				return self.append("needMediaInfo") 
			}
		}
	}

	public var objects: Array<SearchResult>? = nil
	public var needMediaInfo: Bool? = nil


	public func setMultiRequestToken(needMediaInfo: String) {
		self.dict["needMediaInfo"] = needMediaInfo
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["objects"] != nil {
			objects = try JSONParser.parse(array: dict["objects"] as! [Any])
		}
		if dict["needMediaInfo"] != nil {
			needMediaInfo = dict["needMediaInfo"] as? Bool
		}

	}

}

