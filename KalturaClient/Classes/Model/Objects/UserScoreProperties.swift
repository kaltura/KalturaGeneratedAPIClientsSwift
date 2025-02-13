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

open class UserScoreProperties: ObjectBase {

	public class UserScorePropertiesTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var rank: BaseTokenizedObject {
			get {
				return self.append("rank") 
			}
		}
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var score: BaseTokenizedObject {
			get {
				return self.append("score") 
			}
		}
	}

	public var rank: Int? = nil
	public var userId: String? = nil
	public var score: Int? = nil


	public func setMultiRequestToken(rank: String) {
		self.dict["rank"] = rank
	}
	
	public func setMultiRequestToken(userId: String) {
		self.dict["userId"] = userId
	}
	
	public func setMultiRequestToken(score: String) {
		self.dict["score"] = score
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["rank"] != nil {
			rank = dict["rank"] as? Int
		}
		if dict["userId"] != nil {
			userId = dict["userId"] as? String
		}
		if dict["score"] != nil {
			score = dict["score"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(rank != nil) {
			dict["rank"] = rank!
		}
		if(userId != nil) {
			dict["userId"] = userId!
		}
		if(score != nil) {
			dict["score"] = score!
		}
		return dict
	}
}

