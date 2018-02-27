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
// Copyright (C) 2006-2018  Kaltura Inc.
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

open class BusinessProcessServerFilter: BusinessProcessServerBaseFilter {

	public class BusinessProcessServerFilterTokenizer: BusinessProcessServerBaseFilter.BusinessProcessServerBaseFilterTokenizer {
		
		public var currentDcOrExternal: BaseTokenizedObject {
			get {
				return self.append("currentDcOrExternal") 
			}
		}
		
		public var currentDc: BaseTokenizedObject {
			get {
				return self.append("currentDc") 
			}
		}
	}

	public var currentDcOrExternal: Bool? = nil
	public var currentDc: Bool? = nil


	public func setMultiRequestToken(currentDcOrExternal: String) {
		self.dict["currentDcOrExternal"] = currentDcOrExternal
	}
	
	public func setMultiRequestToken(currentDc: String) {
		self.dict["currentDc"] = currentDc
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["currentDcOrExternal"] != nil {
			currentDcOrExternal = dict["currentDcOrExternal"] as? Bool
		}
		if dict["currentDc"] != nil {
			currentDc = dict["currentDc"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(currentDcOrExternal != nil) {
			dict["currentDcOrExternal"] = currentDcOrExternal!
		}
		if(currentDc != nil) {
			dict["currentDc"] = currentDc!
		}
		return dict
	}
}

