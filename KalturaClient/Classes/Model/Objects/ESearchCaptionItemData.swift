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

open class ESearchCaptionItemData: ESearchItemData {

	public class ESearchCaptionItemDataTokenizer: ESearchItemData.ESearchItemDataTokenizer {
		
		public var line: BaseTokenizedObject {
			get {
				return self.append("line") 
			}
		}
		
		public var startsAt: BaseTokenizedObject {
			get {
				return self.append("startsAt") 
			}
		}
		
		public var endsAt: BaseTokenizedObject {
			get {
				return self.append("endsAt") 
			}
		}
		
		public var language: BaseTokenizedObject {
			get {
				return self.append("language") 
			}
		}
		
		public var captionAssetId: BaseTokenizedObject {
			get {
				return self.append("captionAssetId") 
			}
		}
		
		public var label: BaseTokenizedObject {
			get {
				return self.append("label") 
			}
		}
	}

	public var line: String? = nil
	public var startsAt: Int? = nil
	public var endsAt: Int? = nil
	public var language: String? = nil
	public var captionAssetId: String? = nil
	public var label: String? = nil


	public func setMultiRequestToken(line: String) {
		self.dict["line"] = line
	}
	
	public func setMultiRequestToken(startsAt: String) {
		self.dict["startsAt"] = startsAt
	}
	
	public func setMultiRequestToken(endsAt: String) {
		self.dict["endsAt"] = endsAt
	}
	
	public func setMultiRequestToken(language: String) {
		self.dict["language"] = language
	}
	
	public func setMultiRequestToken(captionAssetId: String) {
		self.dict["captionAssetId"] = captionAssetId
	}
	
	public func setMultiRequestToken(label: String) {
		self.dict["label"] = label
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["line"] != nil {
			line = dict["line"] as? String
		}
		if dict["startsAt"] != nil {
			startsAt = dict["startsAt"] as? Int
		}
		if dict["endsAt"] != nil {
			endsAt = dict["endsAt"] as? Int
		}
		if dict["language"] != nil {
			language = dict["language"] as? String
		}
		if dict["captionAssetId"] != nil {
			captionAssetId = dict["captionAssetId"] as? String
		}
		if dict["label"] != nil {
			label = dict["label"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(line != nil) {
			dict["line"] = line!
		}
		if(startsAt != nil) {
			dict["startsAt"] = startsAt!
		}
		if(endsAt != nil) {
			dict["endsAt"] = endsAt!
		}
		if(language != nil) {
			dict["language"] = language!
		}
		if(captionAssetId != nil) {
			dict["captionAssetId"] = captionAssetId!
		}
		if(label != nil) {
			dict["label"] = label!
		}
		return dict
	}
}

