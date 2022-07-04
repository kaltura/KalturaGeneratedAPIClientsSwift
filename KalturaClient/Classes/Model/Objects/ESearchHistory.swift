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

open class ESearchHistory: ObjectBase {

	public class ESearchHistoryTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var searchTerm: BaseTokenizedObject {
			get {
				return self.append("searchTerm") 
			}
		}
		
		public var searchedObject: BaseTokenizedObject {
			get {
				return self.append("searchedObject") 
			}
		}
		
		public var timestamp: BaseTokenizedObject {
			get {
				return self.append("timestamp") 
			}
		}
	}

	public var searchTerm: String? = nil
	public var searchedObject: String? = nil
	public var timestamp: Int? = nil


	public func setMultiRequestToken(searchTerm: String) {
		self.dict["searchTerm"] = searchTerm
	}
	
	public func setMultiRequestToken(searchedObject: String) {
		self.dict["searchedObject"] = searchedObject
	}
	
	public func setMultiRequestToken(timestamp: String) {
		self.dict["timestamp"] = timestamp
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["searchTerm"] != nil {
			searchTerm = dict["searchTerm"] as? String
		}
		if dict["searchedObject"] != nil {
			searchedObject = dict["searchedObject"] as? String
		}
		if dict["timestamp"] != nil {
			timestamp = dict["timestamp"] as? Int
		}

	}

}

