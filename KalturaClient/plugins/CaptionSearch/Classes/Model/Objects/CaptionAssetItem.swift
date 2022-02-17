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

open class CaptionAssetItem: ObjectBase {

	public class CaptionAssetItemTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public func asset<T: CaptionAsset.CaptionAssetTokenizer>() -> T {
			return T(self.append("asset"))
		}
		
		public func entry<T: BaseEntry.BaseEntryTokenizer>() -> T {
			return T(self.append("entry"))
		}
		
		public var startTime: BaseTokenizedObject {
			get {
				return self.append("startTime") 
			}
		}
		
		public var endTime: BaseTokenizedObject {
			get {
				return self.append("endTime") 
			}
		}
		
		public var content: BaseTokenizedObject {
			get {
				return self.append("content") 
			}
		}
	}

	/**  The Caption Asset object  */
	public var asset: CaptionAsset? = nil
	/**  The entry object  */
	public var entry: BaseEntry? = nil
	public var startTime: Int? = nil
	public var endTime: Int? = nil
	public var content: String? = nil


	public func setMultiRequestToken(startTime: String) {
		self.dict["startTime"] = startTime
	}
	
	public func setMultiRequestToken(endTime: String) {
		self.dict["endTime"] = endTime
	}
	
	public func setMultiRequestToken(content: String) {
		self.dict["content"] = content
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["asset"] != nil {
		asset = try JSONParser.parse(object: dict["asset"] as! [String: Any])		}
		if dict["entry"] != nil {
		entry = try JSONParser.parse(object: dict["entry"] as! [String: Any])		}
		if dict["startTime"] != nil {
			startTime = dict["startTime"] as? Int
		}
		if dict["endTime"] != nil {
			endTime = dict["endTime"] as? Int
		}
		if dict["content"] != nil {
			content = dict["content"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(asset != nil) {
			dict["asset"] = asset!.toDictionary()
		}
		if(entry != nil) {
			dict["entry"] = entry!.toDictionary()
		}
		if(startTime != nil) {
			dict["startTime"] = startTime!
		}
		if(endTime != nil) {
			dict["endTime"] = endTime!
		}
		if(content != nil) {
			dict["content"] = content!
		}
		return dict
	}
}

