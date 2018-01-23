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

open class TVComDistributionProfile: ConfigurableDistributionProfile {

	public class TVComDistributionProfileTokenizer: ConfigurableDistributionProfile.ConfigurableDistributionProfileTokenizer {
		
		public var metadataProfileId: BaseTokenizedObject {
			get {
				return self.append("metadataProfileId") 
			}
		}
		
		public var feedUrl: BaseTokenizedObject {
			get {
				return self.append("feedUrl") 
			}
		}
		
		public var feedTitle: BaseTokenizedObject {
			get {
				return self.append("feedTitle") 
			}
		}
		
		public var feedLink: BaseTokenizedObject {
			get {
				return self.append("feedLink") 
			}
		}
		
		public var feedDescription: BaseTokenizedObject {
			get {
				return self.append("feedDescription") 
			}
		}
		
		public var feedLanguage: BaseTokenizedObject {
			get {
				return self.append("feedLanguage") 
			}
		}
		
		public var feedCopyright: BaseTokenizedObject {
			get {
				return self.append("feedCopyright") 
			}
		}
		
		public var feedImageTitle: BaseTokenizedObject {
			get {
				return self.append("feedImageTitle") 
			}
		}
		
		public var feedImageUrl: BaseTokenizedObject {
			get {
				return self.append("feedImageUrl") 
			}
		}
		
		public var feedImageLink: BaseTokenizedObject {
			get {
				return self.append("feedImageLink") 
			}
		}
		
		public var feedImageWidth: BaseTokenizedObject {
			get {
				return self.append("feedImageWidth") 
			}
		}
		
		public var feedImageHeight: BaseTokenizedObject {
			get {
				return self.append("feedImageHeight") 
			}
		}
	}

	public var metadataProfileId: Int? = nil
	public var feedUrl: String? = nil
	public var feedTitle: String? = nil
	public var feedLink: String? = nil
	public var feedDescription: String? = nil
	public var feedLanguage: String? = nil
	public var feedCopyright: String? = nil
	public var feedImageTitle: String? = nil
	public var feedImageUrl: String? = nil
	public var feedImageLink: String? = nil
	public var feedImageWidth: Int? = nil
	public var feedImageHeight: Int? = nil


	public func setMultiRequestToken(metadataProfileId: String) {
		self.dict["metadataProfileId"] = metadataProfileId
	}
	
	public func setMultiRequestToken(feedUrl: String) {
		self.dict["feedUrl"] = feedUrl
	}
	
	public func setMultiRequestToken(feedTitle: String) {
		self.dict["feedTitle"] = feedTitle
	}
	
	public func setMultiRequestToken(feedLink: String) {
		self.dict["feedLink"] = feedLink
	}
	
	public func setMultiRequestToken(feedDescription: String) {
		self.dict["feedDescription"] = feedDescription
	}
	
	public func setMultiRequestToken(feedLanguage: String) {
		self.dict["feedLanguage"] = feedLanguage
	}
	
	public func setMultiRequestToken(feedCopyright: String) {
		self.dict["feedCopyright"] = feedCopyright
	}
	
	public func setMultiRequestToken(feedImageTitle: String) {
		self.dict["feedImageTitle"] = feedImageTitle
	}
	
	public func setMultiRequestToken(feedImageUrl: String) {
		self.dict["feedImageUrl"] = feedImageUrl
	}
	
	public func setMultiRequestToken(feedImageLink: String) {
		self.dict["feedImageLink"] = feedImageLink
	}
	
	public func setMultiRequestToken(feedImageWidth: String) {
		self.dict["feedImageWidth"] = feedImageWidth
	}
	
	public func setMultiRequestToken(feedImageHeight: String) {
		self.dict["feedImageHeight"] = feedImageHeight
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["metadataProfileId"] != nil {
			metadataProfileId = dict["metadataProfileId"] as? Int
		}
		if dict["feedUrl"] != nil {
			feedUrl = dict["feedUrl"] as? String
		}
		if dict["feedTitle"] != nil {
			feedTitle = dict["feedTitle"] as? String
		}
		if dict["feedLink"] != nil {
			feedLink = dict["feedLink"] as? String
		}
		if dict["feedDescription"] != nil {
			feedDescription = dict["feedDescription"] as? String
		}
		if dict["feedLanguage"] != nil {
			feedLanguage = dict["feedLanguage"] as? String
		}
		if dict["feedCopyright"] != nil {
			feedCopyright = dict["feedCopyright"] as? String
		}
		if dict["feedImageTitle"] != nil {
			feedImageTitle = dict["feedImageTitle"] as? String
		}
		if dict["feedImageUrl"] != nil {
			feedImageUrl = dict["feedImageUrl"] as? String
		}
		if dict["feedImageLink"] != nil {
			feedImageLink = dict["feedImageLink"] as? String
		}
		if dict["feedImageWidth"] != nil {
			feedImageWidth = dict["feedImageWidth"] as? Int
		}
		if dict["feedImageHeight"] != nil {
			feedImageHeight = dict["feedImageHeight"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(metadataProfileId != nil) {
			dict["metadataProfileId"] = metadataProfileId!
		}
		if(feedTitle != nil) {
			dict["feedTitle"] = feedTitle!
		}
		if(feedLink != nil) {
			dict["feedLink"] = feedLink!
		}
		if(feedDescription != nil) {
			dict["feedDescription"] = feedDescription!
		}
		if(feedLanguage != nil) {
			dict["feedLanguage"] = feedLanguage!
		}
		if(feedCopyright != nil) {
			dict["feedCopyright"] = feedCopyright!
		}
		if(feedImageTitle != nil) {
			dict["feedImageTitle"] = feedImageTitle!
		}
		if(feedImageUrl != nil) {
			dict["feedImageUrl"] = feedImageUrl!
		}
		if(feedImageLink != nil) {
			dict["feedImageLink"] = feedImageLink!
		}
		if(feedImageWidth != nil) {
			dict["feedImageWidth"] = feedImageWidth!
		}
		if(feedImageHeight != nil) {
			dict["feedImageHeight"] = feedImageHeight!
		}
		return dict
	}
}

