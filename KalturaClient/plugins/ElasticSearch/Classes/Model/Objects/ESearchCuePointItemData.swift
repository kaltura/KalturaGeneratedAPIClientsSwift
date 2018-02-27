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

open class ESearchCuePointItemData: ESearchItemData {

	public class ESearchCuePointItemDataTokenizer: ESearchItemData.ESearchItemDataTokenizer {
		
		public var cuePointType: BaseTokenizedObject {
			get {
				return self.append("cuePointType") 
			}
		}
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var text: BaseTokenizedObject {
			get {
				return self.append("text") 
			}
		}
		
		public var tags: ArrayTokenizedObject<StringHolder.StringHolderTokenizer> {
			get {
				return ArrayTokenizedObject<StringHolder.StringHolderTokenizer>(self.append("tags"))
			} 
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
		
		public var subType: BaseTokenizedObject {
			get {
				return self.append("subType") 
			}
		}
		
		public var question: BaseTokenizedObject {
			get {
				return self.append("question") 
			}
		}
		
		public var answers: ArrayTokenizedObject<StringHolder.StringHolderTokenizer> {
			get {
				return ArrayTokenizedObject<StringHolder.StringHolderTokenizer>(self.append("answers"))
			} 
		}
		
		public var hint: BaseTokenizedObject {
			get {
				return self.append("hint") 
			}
		}
		
		public var explanation: BaseTokenizedObject {
			get {
				return self.append("explanation") 
			}
		}
		
		public var assetId: BaseTokenizedObject {
			get {
				return self.append("assetId") 
			}
		}
	}

	public var cuePointType: String? = nil
	public var id: String? = nil
	public var name: String? = nil
	public var text: String? = nil
	public var tags: Array<StringHolder>? = nil
	public var startTime: String? = nil
	public var endTime: String? = nil
	public var subType: String? = nil
	public var question: String? = nil
	public var answers: Array<StringHolder>? = nil
	public var hint: String? = nil
	public var explanation: String? = nil
	public var assetId: String? = nil


	public func setMultiRequestToken(cuePointType: String) {
		self.dict["cuePointType"] = cuePointType
	}
	
	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(text: String) {
		self.dict["text"] = text
	}
	
	public func setMultiRequestToken(startTime: String) {
		self.dict["startTime"] = startTime
	}
	
	public func setMultiRequestToken(endTime: String) {
		self.dict["endTime"] = endTime
	}
	
	public func setMultiRequestToken(subType: String) {
		self.dict["subType"] = subType
	}
	
	public func setMultiRequestToken(question: String) {
		self.dict["question"] = question
	}
	
	public func setMultiRequestToken(hint: String) {
		self.dict["hint"] = hint
	}
	
	public func setMultiRequestToken(explanation: String) {
		self.dict["explanation"] = explanation
	}
	
	public func setMultiRequestToken(assetId: String) {
		self.dict["assetId"] = assetId
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["cuePointType"] != nil {
			cuePointType = dict["cuePointType"] as? String
		}
		if dict["id"] != nil {
			id = dict["id"] as? String
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["text"] != nil {
			text = dict["text"] as? String
		}
		if dict["tags"] != nil {
			tags = try JSONParser.parse(array: dict["tags"] as! [Any])
		}
		if dict["startTime"] != nil {
			startTime = dict["startTime"] as? String
		}
		if dict["endTime"] != nil {
			endTime = dict["endTime"] as? String
		}
		if dict["subType"] != nil {
			subType = dict["subType"] as? String
		}
		if dict["question"] != nil {
			question = dict["question"] as? String
		}
		if dict["answers"] != nil {
			answers = try JSONParser.parse(array: dict["answers"] as! [Any])
		}
		if dict["hint"] != nil {
			hint = dict["hint"] as? String
		}
		if dict["explanation"] != nil {
			explanation = dict["explanation"] as? String
		}
		if dict["assetId"] != nil {
			assetId = dict["assetId"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(cuePointType != nil) {
			dict["cuePointType"] = cuePointType!
		}
		if(id != nil) {
			dict["id"] = id!
		}
		if(name != nil) {
			dict["name"] = name!
		}
		if(text != nil) {
			dict["text"] = text!
		}
		if(tags != nil) {
			dict["tags"] = tags!.map { value in value.toDictionary() }
		}
		if(startTime != nil) {
			dict["startTime"] = startTime!
		}
		if(endTime != nil) {
			dict["endTime"] = endTime!
		}
		if(subType != nil) {
			dict["subType"] = subType!
		}
		if(question != nil) {
			dict["question"] = question!
		}
		if(answers != nil) {
			dict["answers"] = answers!.map { value in value.toDictionary() }
		}
		if(hint != nil) {
			dict["hint"] = hint!
		}
		if(explanation != nil) {
			dict["explanation"] = explanation!
		}
		if(assetId != nil) {
			dict["assetId"] = assetId!
		}
		return dict
	}
}

