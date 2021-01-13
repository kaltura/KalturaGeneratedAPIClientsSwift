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

open class IndexAdvancedFilter: SearchItem {

	public class IndexAdvancedFilterTokenizer: SearchItem.SearchItemTokenizer {
		
		public var indexIdGreaterThan: BaseTokenizedObject {
			get {
				return self.append("indexIdGreaterThan") 
			}
		}
		
		public var depthGreaterThanEqual: BaseTokenizedObject {
			get {
				return self.append("depthGreaterThanEqual") 
			}
		}
	}

	public var indexIdGreaterThan: Int? = nil
	public var depthGreaterThanEqual: Int? = nil


	public func setMultiRequestToken(indexIdGreaterThan: String) {
		self.dict["indexIdGreaterThan"] = indexIdGreaterThan
	}
	
	public func setMultiRequestToken(depthGreaterThanEqual: String) {
		self.dict["depthGreaterThanEqual"] = depthGreaterThanEqual
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["indexIdGreaterThan"] != nil {
			indexIdGreaterThan = dict["indexIdGreaterThan"] as? Int
		}
		if dict["depthGreaterThanEqual"] != nil {
			depthGreaterThanEqual = dict["depthGreaterThanEqual"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(indexIdGreaterThan != nil) {
			dict["indexIdGreaterThan"] = indexIdGreaterThan!
		}
		if(depthGreaterThanEqual != nil) {
			dict["depthGreaterThanEqual"] = depthGreaterThanEqual!
		}
		return dict
	}
}

