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

open class ITunesSyndicationFeed: BaseSyndicationFeed {

	public class ITunesSyndicationFeedTokenizer: BaseSyndicationFeed.BaseSyndicationFeedTokenizer {
		
		public var feedDescription: BaseTokenizedObject {
			get {
				return self.append("feedDescription") 
			}
		}
		
		public var language: BaseTokenizedObject {
			get {
				return self.append("language") 
			}
		}
		
		public var feedLandingPage: BaseTokenizedObject {
			get {
				return self.append("feedLandingPage") 
			}
		}
		
		public var ownerName: BaseTokenizedObject {
			get {
				return self.append("ownerName") 
			}
		}
		
		public var ownerEmail: BaseTokenizedObject {
			get {
				return self.append("ownerEmail") 
			}
		}
		
		public var feedImageUrl: BaseTokenizedObject {
			get {
				return self.append("feedImageUrl") 
			}
		}
		
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
		
		public var feedAuthor: BaseTokenizedObject {
			get {
				return self.append("feedAuthor") 
			}
		}
		
		public var enforceFeedAuthor: BaseTokenizedObject {
			get {
				return self.append("enforceFeedAuthor") 
			}
		}
		
		public var enforceOrder: BaseTokenizedObject {
			get {
				return self.append("enforceOrder") 
			}
		}
	}

	/**  feed description  */
	public var feedDescription: String? = nil
	/**  feed language  */
	public var language: String? = nil
	/**  feed landing page (i.e publisher website)  */
	public var feedLandingPage: String? = nil
	/**  author/publisher name  */
	public var ownerName: String? = nil
	/**  publisher email  */
	public var ownerEmail: String? = nil
	/**  podcast thumbnail  */
	public var feedImageUrl: String? = nil
	public var category: ITunesSyndicationFeedCategories? = nil
	public var adultContent: ITunesSyndicationFeedAdultValues? = nil
	public var feedAuthor: String? = nil
	public var enforceFeedAuthor: Bool? = nil
	/**  true in case you want to enfore the palylist order on the  */
	public var enforceOrder: Bool? = nil


	public func setMultiRequestToken(feedDescription: String) {
		self.dict["feedDescription"] = feedDescription
	}
	
	public func setMultiRequestToken(language: String) {
		self.dict["language"] = language
	}
	
	public func setMultiRequestToken(feedLandingPage: String) {
		self.dict["feedLandingPage"] = feedLandingPage
	}
	
	public func setMultiRequestToken(ownerName: String) {
		self.dict["ownerName"] = ownerName
	}
	
	public func setMultiRequestToken(ownerEmail: String) {
		self.dict["ownerEmail"] = ownerEmail
	}
	
	public func setMultiRequestToken(feedImageUrl: String) {
		self.dict["feedImageUrl"] = feedImageUrl
	}
	
	public func setMultiRequestToken(category: String) {
		self.dict["category"] = category
	}
	
	public func setMultiRequestToken(adultContent: String) {
		self.dict["adultContent"] = adultContent
	}
	
	public func setMultiRequestToken(feedAuthor: String) {
		self.dict["feedAuthor"] = feedAuthor
	}
	
	public func setMultiRequestToken(enforceFeedAuthor: String) {
		self.dict["enforceFeedAuthor"] = enforceFeedAuthor
	}
	
	public func setMultiRequestToken(enforceOrder: String) {
		self.dict["enforceOrder"] = enforceOrder
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["feedDescription"] != nil {
			feedDescription = dict["feedDescription"] as? String
		}
		if dict["language"] != nil {
			language = dict["language"] as? String
		}
		if dict["feedLandingPage"] != nil {
			feedLandingPage = dict["feedLandingPage"] as? String
		}
		if dict["ownerName"] != nil {
			ownerName = dict["ownerName"] as? String
		}
		if dict["ownerEmail"] != nil {
			ownerEmail = dict["ownerEmail"] as? String
		}
		if dict["feedImageUrl"] != nil {
			feedImageUrl = dict["feedImageUrl"] as? String
		}
		if dict["category"] != nil {
			category = ITunesSyndicationFeedCategories(rawValue: "\(dict["category"]!)")
		}
		if dict["adultContent"] != nil {
			adultContent = ITunesSyndicationFeedAdultValues(rawValue: "\(dict["adultContent"]!)")
		}
		if dict["feedAuthor"] != nil {
			feedAuthor = dict["feedAuthor"] as? String
		}
		if dict["enforceFeedAuthor"] != nil {
			enforceFeedAuthor = dict["enforceFeedAuthor"] as? Bool
		}
		if dict["enforceOrder"] != nil {
			enforceOrder = dict["enforceOrder"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(feedDescription != nil) {
			dict["feedDescription"] = feedDescription!
		}
		if(language != nil) {
			dict["language"] = language!
		}
		if(feedLandingPage != nil) {
			dict["feedLandingPage"] = feedLandingPage!
		}
		if(ownerName != nil) {
			dict["ownerName"] = ownerName!
		}
		if(ownerEmail != nil) {
			dict["ownerEmail"] = ownerEmail!
		}
		if(feedImageUrl != nil) {
			dict["feedImageUrl"] = feedImageUrl!
		}
		if(adultContent != nil) {
			dict["adultContent"] = adultContent!.rawValue
		}
		if(feedAuthor != nil) {
			dict["feedAuthor"] = feedAuthor!
		}
		if(enforceFeedAuthor != nil) {
			dict["enforceFeedAuthor"] = enforceFeedAuthor!
		}
		if(enforceOrder != nil) {
			dict["enforceOrder"] = enforceOrder!
		}
		return dict
	}
}

