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

open class ESearchAggregationResponseItem: ObjectBase {

	public class ESearchAggregationResponseItemTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var fieldName: BaseTokenizedObject {
			get {
				return self.append("fieldName") 
			}
		}
		
		public var buckets: ArrayTokenizedObject<ESearchAggregationBucket.ESearchAggregationBucketTokenizer> {
			get {
				return ArrayTokenizedObject<ESearchAggregationBucket.ESearchAggregationBucketTokenizer>(self.append("buckets"))
			} 
		}
	}

	public var name: String? = nil
	public var fieldName: String? = nil
	public var buckets: Array<ESearchAggregationBucket>? = nil


	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(fieldName: String) {
		self.dict["fieldName"] = fieldName
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["fieldName"] != nil {
			fieldName = dict["fieldName"] as? String
		}
		if dict["buckets"] != nil {
			buckets = try JSONParser.parse(array: dict["buckets"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(fieldName != nil) {
			dict["fieldName"] = fieldName!
		}
		if(buckets != nil) {
			dict["buckets"] = buckets!.map { value in value.toDictionary() }
		}
		return dict
	}
}

