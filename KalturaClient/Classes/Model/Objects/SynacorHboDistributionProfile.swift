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
// Copyright (C) 2006-2022  Kaltura Inc.
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

open class SynacorHboDistributionProfile: ConfigurableDistributionProfile {

	public class SynacorHboDistributionProfileTokenizer: ConfigurableDistributionProfile.ConfigurableDistributionProfileTokenizer {
		
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
		
		public var feedSubtitle: BaseTokenizedObject {
			get {
				return self.append("feedSubtitle") 
			}
		}
		
		public var feedLink: BaseTokenizedObject {
			get {
				return self.append("feedLink") 
			}
		}
		
		public var feedAuthorName: BaseTokenizedObject {
			get {
				return self.append("feedAuthorName") 
			}
		}
	}

	public var feedUrl: String? = nil
	public var feedTitle: String? = nil
	public var feedSubtitle: String? = nil
	public var feedLink: String? = nil
	public var feedAuthorName: String? = nil


	public func setMultiRequestToken(feedUrl: String) {
		self.dict["feedUrl"] = feedUrl
	}
	
	public func setMultiRequestToken(feedTitle: String) {
		self.dict["feedTitle"] = feedTitle
	}
	
	public func setMultiRequestToken(feedSubtitle: String) {
		self.dict["feedSubtitle"] = feedSubtitle
	}
	
	public func setMultiRequestToken(feedLink: String) {
		self.dict["feedLink"] = feedLink
	}
	
	public func setMultiRequestToken(feedAuthorName: String) {
		self.dict["feedAuthorName"] = feedAuthorName
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["feedUrl"] != nil {
			feedUrl = dict["feedUrl"] as? String
		}
		if dict["feedTitle"] != nil {
			feedTitle = dict["feedTitle"] as? String
		}
		if dict["feedSubtitle"] != nil {
			feedSubtitle = dict["feedSubtitle"] as? String
		}
		if dict["feedLink"] != nil {
			feedLink = dict["feedLink"] as? String
		}
		if dict["feedAuthorName"] != nil {
			feedAuthorName = dict["feedAuthorName"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(feedTitle != nil) {
			dict["feedTitle"] = feedTitle!
		}
		if(feedSubtitle != nil) {
			dict["feedSubtitle"] = feedSubtitle!
		}
		if(feedLink != nil) {
			dict["feedLink"] = feedLink!
		}
		if(feedAuthorName != nil) {
			dict["feedAuthorName"] = feedAuthorName!
		}
		return dict
	}
}

