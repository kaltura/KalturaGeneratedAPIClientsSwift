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

open class SessionCuePoint: CuePoint {

	public class SessionCuePointTokenizer: CuePoint.CuePointTokenizer {
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
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
		
		public var sessionOwner: BaseTokenizedObject {
			get {
				return self.append("sessionOwner") 
			}
		}
	}

	public var name: String? = nil
	public var endTime: Int? = nil
	/**  Duration in milliseconds  */
	public var duration: Int? = nil
	public var sessionOwner: String? = nil


	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(endTime: String) {
		self.dict["endTime"] = endTime
	}
	
	public func setMultiRequestToken(duration: String) {
		self.dict["duration"] = duration
	}
	
	public func setMultiRequestToken(sessionOwner: String) {
		self.dict["sessionOwner"] = sessionOwner
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["endTime"] != nil {
			endTime = dict["endTime"] as? Int
		}
		if dict["duration"] != nil {
			duration = dict["duration"] as? Int
		}
		if dict["sessionOwner"] != nil {
			sessionOwner = dict["sessionOwner"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(endTime != nil) {
			dict["endTime"] = endTime!
		}
		if(sessionOwner != nil) {
			dict["sessionOwner"] = sessionOwner!
		}
		return dict
	}
}

