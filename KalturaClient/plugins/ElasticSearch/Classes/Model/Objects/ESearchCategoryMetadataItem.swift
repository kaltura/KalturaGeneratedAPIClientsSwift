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

open class ESearchCategoryMetadataItem: ESearchAbstractCategoryItem {

	public class ESearchCategoryMetadataItemTokenizer: ESearchAbstractCategoryItem.ESearchAbstractCategoryItemTokenizer {
		
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
		
		public var metadataFieldId: BaseTokenizedObject {
			get {
				return self.append("metadataFieldId") 
			}
		}
	}

	public var xpath: String? = nil
	public var metadataProfileId: Int? = nil
	public var metadataFieldId: Int? = nil


	public func setMultiRequestToken(xpath: String) {
		self.dict["xpath"] = xpath
	}
	
	public func setMultiRequestToken(metadataProfileId: String) {
		self.dict["metadataProfileId"] = metadataProfileId
	}
	
	public func setMultiRequestToken(metadataFieldId: String) {
		self.dict["metadataFieldId"] = metadataFieldId
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
		if dict["metadataFieldId"] != nil {
			metadataFieldId = dict["metadataFieldId"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(xpath != nil) {
			dict["xpath"] = xpath!
		}
		if(metadataProfileId != nil) {
			dict["metadataProfileId"] = metadataProfileId!
		}
		if(metadataFieldId != nil) {
			dict["metadataFieldId"] = metadataFieldId!
		}
		return dict
	}
}

