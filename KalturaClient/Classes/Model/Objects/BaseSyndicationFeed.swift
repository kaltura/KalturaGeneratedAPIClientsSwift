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

open class BaseSyndicationFeed: ObjectBase {

	public class BaseSyndicationFeedTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var feedUrl: BaseTokenizedObject {
			get {
				return self.append("feedUrl") 
			}
		}
		
		public var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var playlistId: BaseTokenizedObject {
			get {
				return self.append("playlistId") 
			}
		}
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
		
		public var landingPage: BaseTokenizedObject {
			get {
				return self.append("landingPage") 
			}
		}
		
		public var createdAt: BaseTokenizedObject {
			get {
				return self.append("createdAt") 
			}
		}
		
		public var allowEmbed: BaseTokenizedObject {
			get {
				return self.append("allowEmbed") 
			}
		}
		
		public var playerUiconfId: BaseTokenizedObject {
			get {
				return self.append("playerUiconfId") 
			}
		}
		
		public var flavorParamId: BaseTokenizedObject {
			get {
				return self.append("flavorParamId") 
			}
		}
		
		public var transcodeExistingContent: BaseTokenizedObject {
			get {
				return self.append("transcodeExistingContent") 
			}
		}
		
		public var addToDefaultConversionProfile: BaseTokenizedObject {
			get {
				return self.append("addToDefaultConversionProfile") 
			}
		}
		
		public var categories: BaseTokenizedObject {
			get {
				return self.append("categories") 
			}
		}
		
		public var storageId: BaseTokenizedObject {
			get {
				return self.append("storageId") 
			}
		}
		
		public var entriesOrderBy: BaseTokenizedObject {
			get {
				return self.append("entriesOrderBy") 
			}
		}
		
		public var enforceEntitlement: BaseTokenizedObject {
			get {
				return self.append("enforceEntitlement") 
			}
		}
		
		public var privacyContext: BaseTokenizedObject {
			get {
				return self.append("privacyContext") 
			}
		}
		
		public var updatedAt: BaseTokenizedObject {
			get {
				return self.append("updatedAt") 
			}
		}
		
		public var useCategoryEntries: BaseTokenizedObject {
			get {
				return self.append("useCategoryEntries") 
			}
		}
		
		public var feedContentTypeHeader: BaseTokenizedObject {
			get {
				return self.append("feedContentTypeHeader") 
			}
		}
	}

	public var id: String? = nil
	public var feedUrl: String? = nil
	public var partnerId: Int? = nil
	/**  link a playlist that will set what content the feed will include   if empty, all
	  content will be included in feed  */
	public var playlistId: String? = nil
	/**  feed name  */
	public var name: String? = nil
	/**  feed status  */
	public var status: SyndicationFeedStatus? = nil
	/**  feed type  */
	public var type: SyndicationFeedType? = nil
	/**  Base URL for each video, on the partners site   This is required by all
	  syndication types.  */
	public var landingPage: String? = nil
	/**  Creation date as Unix timestamp (In seconds)  */
	public var createdAt: Int? = nil
	/**  allow_embed tells google OR yahoo weather to allow embedding the video on google
	  OR yahoo video results   or just to provide a link to the landing page.   it is
	  applied on the video-player_loc property in the XML (google)   and addes
	  media-player tag (yahoo)  */
	public var allowEmbed: Bool? = nil
	/**  Select a uiconf ID as player skin to include in the kwidget url  */
	public var playerUiconfId: Int? = nil
	public var flavorParamId: Int? = nil
	public var transcodeExistingContent: Bool? = nil
	public var addToDefaultConversionProfile: Bool? = nil
	public var categories: String? = nil
	public var storageId: Int? = nil
	public var entriesOrderBy: SyndicationFeedEntriesOrderBy? = nil
	/**  Should enforce entitlement on feed entries  */
	public var enforceEntitlement: Bool? = nil
	/**  Set privacy context for search entries that assiged to private and public
	  categories within a category privacy context.  */
	public var privacyContext: String? = nil
	/**  Update date as Unix timestamp (In seconds)  */
	public var updatedAt: Int? = nil
	public var useCategoryEntries: Bool? = nil
	/**  Feed content-type header value  */
	public var feedContentTypeHeader: String? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(feedUrl: String) {
		self.dict["feedUrl"] = feedUrl
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(playlistId: String) {
		self.dict["playlistId"] = playlistId
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(type: String) {
		self.dict["type"] = type
	}
	
	public func setMultiRequestToken(landingPage: String) {
		self.dict["landingPage"] = landingPage
	}
	
	public func setMultiRequestToken(createdAt: String) {
		self.dict["createdAt"] = createdAt
	}
	
	public func setMultiRequestToken(allowEmbed: String) {
		self.dict["allowEmbed"] = allowEmbed
	}
	
	public func setMultiRequestToken(playerUiconfId: String) {
		self.dict["playerUiconfId"] = playerUiconfId
	}
	
	public func setMultiRequestToken(flavorParamId: String) {
		self.dict["flavorParamId"] = flavorParamId
	}
	
	public func setMultiRequestToken(transcodeExistingContent: String) {
		self.dict["transcodeExistingContent"] = transcodeExistingContent
	}
	
	public func setMultiRequestToken(addToDefaultConversionProfile: String) {
		self.dict["addToDefaultConversionProfile"] = addToDefaultConversionProfile
	}
	
	public func setMultiRequestToken(categories: String) {
		self.dict["categories"] = categories
	}
	
	public func setMultiRequestToken(storageId: String) {
		self.dict["storageId"] = storageId
	}
	
	public func setMultiRequestToken(entriesOrderBy: String) {
		self.dict["entriesOrderBy"] = entriesOrderBy
	}
	
	public func setMultiRequestToken(enforceEntitlement: String) {
		self.dict["enforceEntitlement"] = enforceEntitlement
	}
	
	public func setMultiRequestToken(privacyContext: String) {
		self.dict["privacyContext"] = privacyContext
	}
	
	public func setMultiRequestToken(updatedAt: String) {
		self.dict["updatedAt"] = updatedAt
	}
	
	public func setMultiRequestToken(useCategoryEntries: String) {
		self.dict["useCategoryEntries"] = useCategoryEntries
	}
	
	public func setMultiRequestToken(feedContentTypeHeader: String) {
		self.dict["feedContentTypeHeader"] = feedContentTypeHeader
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? String
		}
		if dict["feedUrl"] != nil {
			feedUrl = dict["feedUrl"] as? String
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["playlistId"] != nil {
			playlistId = dict["playlistId"] as? String
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["status"] != nil {
			status = SyndicationFeedStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["type"] != nil {
			type = SyndicationFeedType(rawValue: (dict["type"] as? Int)!)
		}
		if dict["landingPage"] != nil {
			landingPage = dict["landingPage"] as? String
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["allowEmbed"] != nil {
			allowEmbed = dict["allowEmbed"] as? Bool
		}
		if dict["playerUiconfId"] != nil {
			playerUiconfId = dict["playerUiconfId"] as? Int
		}
		if dict["flavorParamId"] != nil {
			flavorParamId = dict["flavorParamId"] as? Int
		}
		if dict["transcodeExistingContent"] != nil {
			transcodeExistingContent = dict["transcodeExistingContent"] as? Bool
		}
		if dict["addToDefaultConversionProfile"] != nil {
			addToDefaultConversionProfile = dict["addToDefaultConversionProfile"] as? Bool
		}
		if dict["categories"] != nil {
			categories = dict["categories"] as? String
		}
		if dict["storageId"] != nil {
			storageId = dict["storageId"] as? Int
		}
		if dict["entriesOrderBy"] != nil {
			entriesOrderBy = SyndicationFeedEntriesOrderBy(rawValue: "\(dict["entriesOrderBy"]!)")
		}
		if dict["enforceEntitlement"] != nil {
			enforceEntitlement = dict["enforceEntitlement"] as? Bool
		}
		if dict["privacyContext"] != nil {
			privacyContext = dict["privacyContext"] as? String
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["useCategoryEntries"] != nil {
			useCategoryEntries = dict["useCategoryEntries"] as? Bool
		}
		if dict["feedContentTypeHeader"] != nil {
			feedContentTypeHeader = dict["feedContentTypeHeader"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(playlistId != nil) {
			dict["playlistId"] = playlistId!
		}
		if(name != nil) {
			dict["name"] = name!
		}
		if(type != nil) {
			dict["type"] = type!.rawValue
		}
		if(landingPage != nil) {
			dict["landingPage"] = landingPage!
		}
		if(allowEmbed != nil) {
			dict["allowEmbed"] = allowEmbed!
		}
		if(playerUiconfId != nil) {
			dict["playerUiconfId"] = playerUiconfId!
		}
		if(flavorParamId != nil) {
			dict["flavorParamId"] = flavorParamId!
		}
		if(transcodeExistingContent != nil) {
			dict["transcodeExistingContent"] = transcodeExistingContent!
		}
		if(addToDefaultConversionProfile != nil) {
			dict["addToDefaultConversionProfile"] = addToDefaultConversionProfile!
		}
		if(categories != nil) {
			dict["categories"] = categories!
		}
		if(storageId != nil) {
			dict["storageId"] = storageId!
		}
		if(entriesOrderBy != nil) {
			dict["entriesOrderBy"] = entriesOrderBy!.rawValue
		}
		if(enforceEntitlement != nil) {
			dict["enforceEntitlement"] = enforceEntitlement!
		}
		if(privacyContext != nil) {
			dict["privacyContext"] = privacyContext!
		}
		if(useCategoryEntries != nil) {
			dict["useCategoryEntries"] = useCategoryEntries!
		}
		if(feedContentTypeHeader != nil) {
			dict["feedContentTypeHeader"] = feedContentTypeHeader!
		}
		return dict
	}
}

