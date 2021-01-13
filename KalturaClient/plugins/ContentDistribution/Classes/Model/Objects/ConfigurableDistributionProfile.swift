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

open class ConfigurableDistributionProfile: DistributionProfile {

	public class ConfigurableDistributionProfileTokenizer: DistributionProfile.DistributionProfileTokenizer {
		
		public var fieldConfigArray: ArrayTokenizedObject<DistributionFieldConfig.DistributionFieldConfigTokenizer> {
			get {
				return ArrayTokenizedObject<DistributionFieldConfig.DistributionFieldConfigTokenizer>(self.append("fieldConfigArray"))
			} 
		}
		
		public var itemXpathsToExtend: ArrayTokenizedObject<ExtendingItemMrssParameter.ExtendingItemMrssParameterTokenizer> {
			get {
				return ArrayTokenizedObject<ExtendingItemMrssParameter.ExtendingItemMrssParameterTokenizer>(self.append("itemXpathsToExtend"))
			} 
		}
		
		public var useCategoryEntries: BaseTokenizedObject {
			get {
				return self.append("useCategoryEntries") 
			}
		}
	}

	public var fieldConfigArray: Array<DistributionFieldConfig>? = nil
	public var itemXpathsToExtend: Array<ExtendingItemMrssParameter>? = nil
	/**  When checking custom XSLT conditions using the fieldConfigArray - address only
	  categories associated with the entry via the categoryEntry object  */
	public var useCategoryEntries: Bool? = nil


	public func setMultiRequestToken(useCategoryEntries: String) {
		self.dict["useCategoryEntries"] = useCategoryEntries
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["fieldConfigArray"] != nil {
			fieldConfigArray = try JSONParser.parse(array: dict["fieldConfigArray"] as! [Any])
		}
		if dict["itemXpathsToExtend"] != nil {
			itemXpathsToExtend = try JSONParser.parse(array: dict["itemXpathsToExtend"] as! [Any])
		}
		if dict["useCategoryEntries"] != nil {
			useCategoryEntries = dict["useCategoryEntries"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(fieldConfigArray != nil) {
			dict["fieldConfigArray"] = fieldConfigArray!.map { value in value.toDictionary() }
		}
		if(itemXpathsToExtend != nil) {
			dict["itemXpathsToExtend"] = itemXpathsToExtend!.map { value in value.toDictionary() }
		}
		if(useCategoryEntries != nil) {
			dict["useCategoryEntries"] = useCategoryEntries!
		}
		return dict
	}
}

