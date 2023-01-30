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
 * This class was generated using generate.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class ESearchRange: ObjectBase {

	public class ESearchRangeTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var greaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("greaterThanOrEqual") 
			}
		}
		
		public var lessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("lessThanOrEqual") 
			}
		}
		
		public var greaterThan: BaseTokenizedObject {
			get {
				return self.append("greaterThan") 
			}
		}
		
		public var lessThan: BaseTokenizedObject {
			get {
				return self.append("lessThan") 
			}
		}
	}

	public var greaterThanOrEqual: Int? = nil
	public var lessThanOrEqual: Int? = nil
	public var greaterThan: Int? = nil
	public var lessThan: Int? = nil


	public func setMultiRequestToken(greaterThanOrEqual: String) {
		self.dict["greaterThanOrEqual"] = greaterThanOrEqual
	}
	
	public func setMultiRequestToken(lessThanOrEqual: String) {
		self.dict["lessThanOrEqual"] = lessThanOrEqual
	}
	
	public func setMultiRequestToken(greaterThan: String) {
		self.dict["greaterThan"] = greaterThan
	}
	
	public func setMultiRequestToken(lessThan: String) {
		self.dict["lessThan"] = lessThan
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["greaterThanOrEqual"] != nil {
			greaterThanOrEqual = dict["greaterThanOrEqual"] as? Int
		}
		if dict["lessThanOrEqual"] != nil {
			lessThanOrEqual = dict["lessThanOrEqual"] as? Int
		}
		if dict["greaterThan"] != nil {
			greaterThan = dict["greaterThan"] as? Int
		}
		if dict["lessThan"] != nil {
			lessThan = dict["lessThan"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(greaterThanOrEqual != nil) {
			dict["greaterThanOrEqual"] = greaterThanOrEqual!
		}
		if(lessThanOrEqual != nil) {
			dict["lessThanOrEqual"] = lessThanOrEqual!
		}
		if(greaterThan != nil) {
			dict["greaterThan"] = greaterThan!
		}
		if(lessThan != nil) {
			dict["lessThan"] = lessThan!
		}
		return dict
	}
}

