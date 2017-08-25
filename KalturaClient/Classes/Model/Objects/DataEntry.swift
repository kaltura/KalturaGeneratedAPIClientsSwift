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

open class DataEntry: BaseEntry {

	public class DataEntryTokenizer: BaseEntry.BaseEntryTokenizer {
		
		public var dataContent: BaseTokenizedObject {
			get {
				return self.append("dataContent") 
			}
		}
		
		public var retrieveDataContentByGet: BaseTokenizedObject {
			get {
				return self.append("retrieveDataContentByGet") 
			}
		}
	}

	/**  The data of the entry  */
	public var dataContent: String? = nil
	/**  indicator whether to return the object for get action with the dataContent
	  field.  */
	public var retrieveDataContentByGet: Bool? = nil


	public func setMultiRequestToken(dataContent: String) {
		self.dict["dataContent"] = dataContent
	}
	
	public func setMultiRequestToken(retrieveDataContentByGet: String) {
		self.dict["retrieveDataContentByGet"] = retrieveDataContentByGet
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["dataContent"] != nil {
			dataContent = dict["dataContent"] as? String
		}
		if dict["retrieveDataContentByGet"] != nil {
			retrieveDataContentByGet = dict["retrieveDataContentByGet"] as? Bool
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(dataContent != nil) {
			dict["dataContent"] = dataContent!
		}
		if(retrieveDataContentByGet != nil) {
			dict["retrieveDataContentByGet"] = retrieveDataContentByGet!
		}
		return dict
	}
}

