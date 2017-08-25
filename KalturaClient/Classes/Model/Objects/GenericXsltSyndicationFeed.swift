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

open class GenericXsltSyndicationFeed: GenericSyndicationFeed {

	public class GenericXsltSyndicationFeedTokenizer: GenericSyndicationFeed.GenericSyndicationFeedTokenizer {
		
		public var xslt: BaseTokenizedObject {
			get {
				return self.append("xslt") 
			}
		}
		
		public var itemXpathsToExtend: ArrayTokenizedObject<ExtendingItemMrssParameter.ExtendingItemMrssParameterTokenizer> {
			get {
				return ArrayTokenizedObject<ExtendingItemMrssParameter.ExtendingItemMrssParameterTokenizer>(self.append("itemXpathsToExtend"))
			} 
		}
	}

	public var xslt: String? = nil
	public var itemXpathsToExtend: Array<ExtendingItemMrssParameter>? = nil


	public func setMultiRequestToken(xslt: String) {
		self.dict["xslt"] = xslt
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["xslt"] != nil {
			xslt = dict["xslt"] as? String
		}
		if dict["itemXpathsToExtend"] != nil {
			itemXpathsToExtend = try JSONParser.parse(array: dict["itemXpathsToExtend"] as! [Any])
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(xslt != nil) {
			dict["xslt"] = xslt!
		}
		if(itemXpathsToExtend != nil) {
			dict["itemXpathsToExtend"] = itemXpathsToExtend!.map { value in value.toDictionary() }
		}
		return dict
	}
}

