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

open class ESearchHistoryFilter: ESearchBaseFilter {

	public class ESearchHistoryFilterTokenizer: ESearchBaseFilter.ESearchBaseFilterTokenizer {
		
		public var searchTermStartsWith: BaseTokenizedObject {
			get {
				return self.append("searchTermStartsWith") 
			}
		}
		
		public var searchedObjectIn: BaseTokenizedObject {
			get {
				return self.append("searchedObjectIn") 
			}
		}
		
		public func timestampRange<T: ESearchRange.ESearchRangeTokenizer>() -> T {
			return T(self.append("timestampRange"))
		}
		
		public func aggregation<T: ESearchHistoryAggregationItem.ESearchHistoryAggregationItemTokenizer>() -> T {
			return T(self.append("aggregation"))
		}
	}

	public var searchTermStartsWith: String? = nil
	public var searchedObjectIn: String? = nil
	public var timestampRange: ESearchRange? = nil
	public var aggregation: ESearchHistoryAggregationItem? = nil


	public func setMultiRequestToken(searchTermStartsWith: String) {
		self.dict["searchTermStartsWith"] = searchTermStartsWith
	}
	
	public func setMultiRequestToken(searchedObjectIn: String) {
		self.dict["searchedObjectIn"] = searchedObjectIn
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["searchTermStartsWith"] != nil {
			searchTermStartsWith = dict["searchTermStartsWith"] as? String
		}
		if dict["searchedObjectIn"] != nil {
			searchedObjectIn = dict["searchedObjectIn"] as? String
		}
		if dict["timestampRange"] != nil {
		timestampRange = try JSONParser.parse(object: dict["timestampRange"] as! [String: Any])		}
		if dict["aggregation"] != nil {
		aggregation = try JSONParser.parse(object: dict["aggregation"] as! [String: Any])		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(searchTermStartsWith != nil) {
			dict["searchTermStartsWith"] = searchTermStartsWith!
		}
		if(searchedObjectIn != nil) {
			dict["searchedObjectIn"] = searchedObjectIn!
		}
		if(timestampRange != nil) {
			dict["timestampRange"] = timestampRange!.toDictionary()
		}
		if(aggregation != nil) {
			dict["aggregation"] = aggregation!.toDictionary()
		}
		return dict
	}
}

