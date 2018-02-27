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

open class ResponseProfileCacheRecalculateResults: ObjectBase {

	public class ResponseProfileCacheRecalculateResultsTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var lastObjectKey: BaseTokenizedObject {
			get {
				return self.append("lastObjectKey") 
			}
		}
		
		public var recalculated: BaseTokenizedObject {
			get {
				return self.append("recalculated") 
			}
		}
	}

	/**  Last recalculated id  */
	public var lastObjectKey: String? = nil
	/**  Number of recalculated keys  */
	public var recalculated: Int? = nil


	public func setMultiRequestToken(lastObjectKey: String) {
		self.dict["lastObjectKey"] = lastObjectKey
	}
	
	public func setMultiRequestToken(recalculated: String) {
		self.dict["recalculated"] = recalculated
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["lastObjectKey"] != nil {
			lastObjectKey = dict["lastObjectKey"] as? String
		}
		if dict["recalculated"] != nil {
			recalculated = dict["recalculated"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(lastObjectKey != nil) {
			dict["lastObjectKey"] = lastObjectKey!
		}
		if(recalculated != nil) {
			dict["recalculated"] = recalculated!
		}
		return dict
	}
}

