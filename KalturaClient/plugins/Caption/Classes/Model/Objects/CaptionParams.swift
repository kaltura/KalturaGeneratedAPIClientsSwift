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

open class CaptionParams: AssetParams {

	public class CaptionParamsTokenizer: AssetParams.AssetParamsTokenizer {
		
		public var language: BaseTokenizedObject {
			get {
				return self.append("language") 
			}
		}
		
		public var isDefault: BaseTokenizedObject {
			get {
				return self.append("isDefault") 
			}
		}
		
		public var label: BaseTokenizedObject {
			get {
				return self.append("label") 
			}
		}
		
		public var format: BaseTokenizedObject {
			get {
				return self.append("format") 
			}
		}
		
		public var sourceParamsId: BaseTokenizedObject {
			get {
				return self.append("sourceParamsId") 
			}
		}
	}

	/**  The language of the caption content  */
	public var language: Language? = nil
	/**  Is default caption asset of the entry  */
	public var isDefault: Bool? = nil
	/**  Friendly label  */
	public var label: String? = nil
	/**  The caption format  */
	public var format: CaptionType? = nil
	/**  Id of the caption params or the flavor params to be used as source for the
	  caption creation  */
	public var sourceParamsId: Int? = nil


	public func setMultiRequestToken(language: String) {
		self.dict["language"] = language
	}
	
	public func setMultiRequestToken(isDefault: String) {
		self.dict["isDefault"] = isDefault
	}
	
	public func setMultiRequestToken(label: String) {
		self.dict["label"] = label
	}
	
	public func setMultiRequestToken(format: String) {
		self.dict["format"] = format
	}
	
	public func setMultiRequestToken(sourceParamsId: String) {
		self.dict["sourceParamsId"] = sourceParamsId
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["language"] != nil {
			language = Language(rawValue: "\(dict["language"]!)")
		}
		if dict["isDefault"] != nil {
			isDefault = dict["isDefault"] as? Bool
		}
		if dict["label"] != nil {
			label = dict["label"] as? String
		}
		if dict["format"] != nil {
			format = CaptionType(rawValue: "\(dict["format"]!)")
		}
		if dict["sourceParamsId"] != nil {
			sourceParamsId = dict["sourceParamsId"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(language != nil) {
			dict["language"] = language!.rawValue
		}
		if(isDefault != nil) {
			dict["isDefault"] = isDefault!
		}
		if(label != nil) {
			dict["label"] = label!
		}
		if(format != nil) {
			dict["format"] = format!.rawValue
		}
		if(sourceParamsId != nil) {
			dict["sourceParamsId"] = sourceParamsId!
		}
		return dict
	}
}

