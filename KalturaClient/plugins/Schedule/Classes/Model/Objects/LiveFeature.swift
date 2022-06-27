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

open class LiveFeature: ObjectBase {

	public class LiveFeatureTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var systemName: BaseTokenizedObject {
			get {
				return self.append("systemName") 
			}
		}
		
		public var preStartTime: BaseTokenizedObject {
			get {
				return self.append("preStartTime") 
			}
		}
		
		public var postEndTime: BaseTokenizedObject {
			get {
				return self.append("postEndTime") 
			}
		}
	}

	public var systemName: String? = nil
	public var preStartTime: Int? = nil
	public var postEndTime: Int? = nil


	public func setMultiRequestToken(systemName: String) {
		self.dict["systemName"] = systemName
	}
	
	public func setMultiRequestToken(preStartTime: String) {
		self.dict["preStartTime"] = preStartTime
	}
	
	public func setMultiRequestToken(postEndTime: String) {
		self.dict["postEndTime"] = postEndTime
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["systemName"] != nil {
			systemName = dict["systemName"] as? String
		}
		if dict["preStartTime"] != nil {
			preStartTime = dict["preStartTime"] as? Int
		}
		if dict["postEndTime"] != nil {
			postEndTime = dict["postEndTime"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(systemName != nil) {
			dict["systemName"] = systemName!
		}
		if(preStartTime != nil) {
			dict["preStartTime"] = preStartTime!
		}
		if(postEndTime != nil) {
			dict["postEndTime"] = postEndTime!
		}
		return dict
	}
}

