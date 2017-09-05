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
// Copyright (C) 2006-2017  Kaltura Inc.
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

open class ESearchMetadataItemData: ESearchItemData {

	public class ESearchMetadataItemDataTokenizer: ESearchItemData.ESearchItemDataTokenizer {
		
		public var xpath: BaseTokenizedObject {
			get {
				return self.append("xpath") 
			}
		}
		
		public var metadataProfileId: BaseTokenizedObject {
			get {
				return self.append("metadataProfileId") 
			}
		}
		
		public var valueText: BaseTokenizedObject {
			get {
				return self.append("valueText") 
			}
		}
		
		public var valueInt: BaseTokenizedObject {
			get {
				return self.append("valueInt") 
			}
		}
	}

	public var xpath: String? = nil
	public var metadataProfileId: Int? = nil
	public var valueText: String? = nil
	public var valueInt: Int? = nil


	public func setMultiRequestToken(xpath: String) {
		self.dict["xpath"] = xpath
	}
	
	public func setMultiRequestToken(metadataProfileId: String) {
		self.dict["metadataProfileId"] = metadataProfileId
	}
	
	public func setMultiRequestToken(valueText: String) {
		self.dict["valueText"] = valueText
	}
	
	public func setMultiRequestToken(valueInt: String) {
		self.dict["valueInt"] = valueInt
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["xpath"] != nil {
			xpath = dict["xpath"] as? String
		}
		if dict["metadataProfileId"] != nil {
			metadataProfileId = dict["metadataProfileId"] as? Int
		}
		if dict["valueText"] != nil {
			valueText = dict["valueText"] as? String
		}
		if dict["valueInt"] != nil {
			valueInt = dict["valueInt"] as? Int
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(xpath != nil) {
			dict["xpath"] = xpath!
		}
		if(metadataProfileId != nil) {
			dict["metadataProfileId"] = metadataProfileId!
		}
		if(valueText != nil) {
			dict["valueText"] = valueText!
		}
		if(valueInt != nil) {
			dict["valueInt"] = valueInt!
		}
		return dict
	}
}

