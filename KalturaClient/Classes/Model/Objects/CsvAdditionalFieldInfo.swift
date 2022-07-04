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

open class CsvAdditionalFieldInfo: ObjectBase {

	public class CsvAdditionalFieldInfoTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var fieldName: BaseTokenizedObject {
			get {
				return self.append("fieldName") 
			}
		}
		
		public var xpath: BaseTokenizedObject {
			get {
				return self.append("xpath") 
			}
		}
	}

	public var fieldName: String? = nil
	public var xpath: String? = nil


	public func setMultiRequestToken(fieldName: String) {
		self.dict["fieldName"] = fieldName
	}
	
	public func setMultiRequestToken(xpath: String) {
		self.dict["xpath"] = xpath
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["fieldName"] != nil {
			fieldName = dict["fieldName"] as? String
		}
		if dict["xpath"] != nil {
			xpath = dict["xpath"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(fieldName != nil) {
			dict["fieldName"] = fieldName!
		}
		if(xpath != nil) {
			dict["xpath"] = xpath!
		}
		return dict
	}
}

