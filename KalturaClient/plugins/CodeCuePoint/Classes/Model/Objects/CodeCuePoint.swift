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

open class CodeCuePoint: CuePoint {

	public class CodeCuePointTokenizer: CuePoint.CuePointTokenizer {
		
		public var code: BaseTokenizedObject {
			get {
				return self.append("code") 
			}
		}
		
		public var description: BaseTokenizedObject {
			get {
				return self.append("description") 
			}
		}
		
		public var endTime: BaseTokenizedObject {
			get {
				return self.append("endTime") 
			}
		}
		
		public var duration: BaseTokenizedObject {
			get {
				return self.append("duration") 
			}
		}
	}

	public var code: String? = nil
	public var description: String? = nil
	public var endTime: Int? = nil
	/**  Duration in milliseconds  */
	public var duration: Int? = nil


	public func setMultiRequestToken(code: String) {
		self.dict["code"] = code
	}
	
	public func setMultiRequestToken(description: String) {
		self.dict["description"] = description
	}
	
	public func setMultiRequestToken(endTime: String) {
		self.dict["endTime"] = endTime
	}
	
	public func setMultiRequestToken(duration: String) {
		self.dict["duration"] = duration
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["code"] != nil {
			code = dict["code"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["endTime"] != nil {
			endTime = dict["endTime"] as? Int
		}
		if dict["duration"] != nil {
			duration = dict["duration"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(code != nil) {
			dict["code"] = code!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(endTime != nil) {
			dict["endTime"] = endTime!
		}
		return dict
	}
}

