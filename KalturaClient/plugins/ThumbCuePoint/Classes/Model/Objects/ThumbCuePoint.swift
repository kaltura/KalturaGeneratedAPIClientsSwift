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

open class ThumbCuePoint: CuePoint {

	public class ThumbCuePointTokenizer: CuePoint.CuePointTokenizer {
		
		public var assetId: BaseTokenizedObject {
			get {
				return self.append("assetId") 
			}
		}
		
		public var description: BaseTokenizedObject {
			get {
				return self.append("description") 
			}
		}
		
		public var title: BaseTokenizedObject {
			get {
				return self.append("title") 
			}
		}
		
		public var subType: BaseTokenizedObject {
			get {
				return self.append("subType") 
			}
		}
	}

	public var assetId: String? = nil
	public var description: String? = nil
	public var title: String? = nil
	/**  The sub type of the ThumbCuePoint  */
	public var subType: ThumbCuePointSubType? = nil


	public func setMultiRequestToken(assetId: String) {
		self.dict["assetId"] = assetId
	}
	
	public func setMultiRequestToken(description: String) {
		self.dict["description"] = description
	}
	
	public func setMultiRequestToken(title: String) {
		self.dict["title"] = title
	}
	
	public func setMultiRequestToken(subType: String) {
		self.dict["subType"] = subType
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["assetId"] != nil {
			assetId = dict["assetId"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["title"] != nil {
			title = dict["title"] as? String
		}
		if dict["subType"] != nil {
			subType = ThumbCuePointSubType(rawValue: (dict["subType"] as? Int)!)
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(assetId != nil) {
			dict["assetId"] = assetId!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(title != nil) {
			dict["title"] = title!
		}
		if(subType != nil) {
			dict["subType"] = subType!.rawValue
		}
		return dict
	}
}

