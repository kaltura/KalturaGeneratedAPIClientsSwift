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

open class UserScorePropertiesFilter: UserScorePropertiesBaseFilter {

	public class UserScorePropertiesFilterTokenizer: UserScorePropertiesBaseFilter.UserScorePropertiesBaseFilterTokenizer {
		
		public var gameObjectId: BaseTokenizedObject {
			get {
				return self.append("gameObjectId") 
			}
		}
		
		public var gameObjectType: BaseTokenizedObject {
			get {
				return self.append("gameObjectType") 
			}
		}
		
		public var userIdEqual: BaseTokenizedObject {
			get {
				return self.append("userIdEqual") 
			}
		}
		
		public var placesAboveUser: BaseTokenizedObject {
			get {
				return self.append("placesAboveUser") 
			}
		}
		
		public var placesBelowUser: BaseTokenizedObject {
			get {
				return self.append("placesBelowUser") 
			}
		}
	}

	public var gameObjectId: String? = nil
	public var gameObjectType: GameObjectType? = nil
	public var userIdEqual: String? = nil
	public var placesAboveUser: Int? = nil
	public var placesBelowUser: Int? = nil


	public func setMultiRequestToken(gameObjectId: String) {
		self.dict["gameObjectId"] = gameObjectId
	}
	
	public func setMultiRequestToken(gameObjectType: String) {
		self.dict["gameObjectType"] = gameObjectType
	}
	
	public func setMultiRequestToken(userIdEqual: String) {
		self.dict["userIdEqual"] = userIdEqual
	}
	
	public func setMultiRequestToken(placesAboveUser: String) {
		self.dict["placesAboveUser"] = placesAboveUser
	}
	
	public func setMultiRequestToken(placesBelowUser: String) {
		self.dict["placesBelowUser"] = placesBelowUser
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["gameObjectId"] != nil {
			gameObjectId = dict["gameObjectId"] as? String
		}
		if dict["gameObjectType"] != nil {
			gameObjectType = GameObjectType(rawValue: "\(dict["gameObjectType"]!)")
		}
		if dict["userIdEqual"] != nil {
			userIdEqual = dict["userIdEqual"] as? String
		}
		if dict["placesAboveUser"] != nil {
			placesAboveUser = dict["placesAboveUser"] as? Int
		}
		if dict["placesBelowUser"] != nil {
			placesBelowUser = dict["placesBelowUser"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(gameObjectId != nil) {
			dict["gameObjectId"] = gameObjectId!
		}
		if(gameObjectType != nil) {
			dict["gameObjectType"] = gameObjectType!.rawValue
		}
		if(userIdEqual != nil) {
			dict["userIdEqual"] = userIdEqual!
		}
		if(placesAboveUser != nil) {
			dict["placesAboveUser"] = placesAboveUser!
		}
		if(placesBelowUser != nil) {
			dict["placesBelowUser"] = placesBelowUser!
		}
		return dict
	}
}

