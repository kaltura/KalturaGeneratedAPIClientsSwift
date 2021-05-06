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

open class YahooSyndicationFeed: BaseSyndicationFeed {

	public class YahooSyndicationFeedTokenizer: BaseSyndicationFeed.BaseSyndicationFeedTokenizer {
		
		public var category: BaseTokenizedObject {
			get {
				return self.append("category") 
			}
		}
		
		public var adultContent: BaseTokenizedObject {
			get {
				return self.append("adultContent") 
			}
		}
		
		public var feedDescription: BaseTokenizedObject {
			get {
				return self.append("feedDescription") 
			}
		}
		
		public var feedLandingPage: BaseTokenizedObject {
			get {
				return self.append("feedLandingPage") 
			}
		}
	}

	public var category: YahooSyndicationFeedCategories? = nil
	public var adultContent: YahooSyndicationFeedAdultValues? = nil
	/**  feed description  */
	public var feedDescription: String? = nil
	/**  feed landing page (i.e publisher website)  */
	public var feedLandingPage: String? = nil


	public func setMultiRequestToken(category: String) {
		self.dict["category"] = category
	}
	
	public func setMultiRequestToken(adultContent: String) {
		self.dict["adultContent"] = adultContent
	}
	
	public func setMultiRequestToken(feedDescription: String) {
		self.dict["feedDescription"] = feedDescription
	}
	
	public func setMultiRequestToken(feedLandingPage: String) {
		self.dict["feedLandingPage"] = feedLandingPage
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["category"] != nil {
			category = YahooSyndicationFeedCategories(rawValue: "\(dict["category"]!)")
		}
		if dict["adultContent"] != nil {
			adultContent = YahooSyndicationFeedAdultValues(rawValue: "\(dict["adultContent"]!)")
		}
		if dict["feedDescription"] != nil {
			feedDescription = dict["feedDescription"] as? String
		}
		if dict["feedLandingPage"] != nil {
			feedLandingPage = dict["feedLandingPage"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(adultContent != nil) {
			dict["adultContent"] = adultContent!.rawValue
		}
		if(feedDescription != nil) {
			dict["feedDescription"] = feedDescription!
		}
		if(feedLandingPage != nil) {
			dict["feedLandingPage"] = feedLandingPage!
		}
		return dict
	}
}

