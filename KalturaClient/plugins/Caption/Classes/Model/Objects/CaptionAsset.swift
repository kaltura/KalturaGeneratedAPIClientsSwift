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
// Copyright (C) 2006-2020  Kaltura Inc.
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

open class CaptionAsset: Asset {

	public class CaptionAssetTokenizer: Asset.AssetTokenizer {
		
		public var captionParamsId: BaseTokenizedObject {
			get {
				return self.append("captionParamsId") 
			}
		}
		
		public var language: BaseTokenizedObject {
			get {
				return self.append("language") 
			}
		}
		
		public var languageCode: BaseTokenizedObject {
			get {
				return self.append("languageCode") 
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
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var parentId: BaseTokenizedObject {
			get {
				return self.append("parentId") 
			}
		}
		
		public var accuracy: BaseTokenizedObject {
			get {
				return self.append("accuracy") 
			}
		}
		
		public var displayOnPlayer: BaseTokenizedObject {
			get {
				return self.append("displayOnPlayer") 
			}
		}
		
		public var associatedTranscriptIds: BaseTokenizedObject {
			get {
				return self.append("associatedTranscriptIds") 
			}
		}
	}

	/**  The Caption Params used to create this Caption Asset  */
	public var captionParamsId: Int? = nil
	/**  The language of the caption asset content  */
	public var language: Language? = nil
	/**  The language of the caption asset content  */
	public var languageCode: LanguageCode? = nil
	/**  Is default caption asset of the entry  */
	public var isDefault: Bool? = nil
	/**  Friendly label  */
	public var label: String? = nil
	/**  The caption format  */
	public var format: CaptionType? = nil
	/**  The status of the asset  */
	public var status: CaptionAssetStatus? = nil
	/**  The parent id of the asset  */
	public var parentId: String? = nil
	/**  The Accuracy of the caption content  */
	public var accuracy: Int? = nil
	/**  The Accuracy of the caption content  */
	public var displayOnPlayer: Bool? = nil
	/**  List of associated transcript asset id's, comma separated  */
	public var associatedTranscriptIds: String? = nil


	public func setMultiRequestToken(captionParamsId: String) {
		self.dict["captionParamsId"] = captionParamsId
	}
	
	public func setMultiRequestToken(language: String) {
		self.dict["language"] = language
	}
	
	public func setMultiRequestToken(languageCode: String) {
		self.dict["languageCode"] = languageCode
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
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(parentId: String) {
		self.dict["parentId"] = parentId
	}
	
	public func setMultiRequestToken(accuracy: String) {
		self.dict["accuracy"] = accuracy
	}
	
	public func setMultiRequestToken(displayOnPlayer: String) {
		self.dict["displayOnPlayer"] = displayOnPlayer
	}
	
	public func setMultiRequestToken(associatedTranscriptIds: String) {
		self.dict["associatedTranscriptIds"] = associatedTranscriptIds
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["captionParamsId"] != nil {
			captionParamsId = dict["captionParamsId"] as? Int
		}
		if dict["language"] != nil {
			language = Language(rawValue: "\(dict["language"]!)")
		}
		if dict["languageCode"] != nil {
			languageCode = LanguageCode(rawValue: "\(dict["languageCode"]!)")
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
		if dict["status"] != nil {
			status = CaptionAssetStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["parentId"] != nil {
			parentId = dict["parentId"] as? String
		}
		if dict["accuracy"] != nil {
			accuracy = dict["accuracy"] as? Int
		}
		if dict["displayOnPlayer"] != nil {
			displayOnPlayer = dict["displayOnPlayer"] as? Bool
		}
		if dict["associatedTranscriptIds"] != nil {
			associatedTranscriptIds = dict["associatedTranscriptIds"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(captionParamsId != nil) {
			dict["captionParamsId"] = captionParamsId!
		}
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
		if(parentId != nil) {
			dict["parentId"] = parentId!
		}
		if(accuracy != nil) {
			dict["accuracy"] = accuracy!
		}
		if(displayOnPlayer != nil) {
			dict["displayOnPlayer"] = displayOnPlayer!
		}
		if(associatedTranscriptIds != nil) {
			dict["associatedTranscriptIds"] = associatedTranscriptIds!
		}
		return dict
	}
}

