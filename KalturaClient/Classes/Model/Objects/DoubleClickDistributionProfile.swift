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
// Copyright (C) 2006-2023  Kaltura Inc.
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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class DoubleClickDistributionProfile: ConfigurableDistributionProfile {

	public class DoubleClickDistributionProfileTokenizer: ConfigurableDistributionProfile.ConfigurableDistributionProfileTokenizer {
		
		public var channelTitle: BaseTokenizedObject {
			get {
				return self.append("channelTitle") 
			}
		}
		
		public var channelLink: BaseTokenizedObject {
			get {
				return self.append("channelLink") 
			}
		}
		
		public var channelDescription: BaseTokenizedObject {
			get {
				return self.append("channelDescription") 
			}
		}
		
		public var feedUrl: BaseTokenizedObject {
			get {
				return self.append("feedUrl") 
			}
		}
		
		public var cuePointsProvider: BaseTokenizedObject {
			get {
				return self.append("cuePointsProvider") 
			}
		}
		
		public var itemsPerPage: BaseTokenizedObject {
			get {
				return self.append("itemsPerPage") 
			}
		}
		
		public var ignoreSchedulingInFeed: BaseTokenizedObject {
			get {
				return self.append("ignoreSchedulingInFeed") 
			}
		}
	}

	public var channelTitle: String? = nil
	public var channelLink: String? = nil
	public var channelDescription: String? = nil
	public var feedUrl: String? = nil
	public var cuePointsProvider: String? = nil
	public var itemsPerPage: String? = nil
	public var ignoreSchedulingInFeed: Bool? = nil


	public func setMultiRequestToken(channelTitle: String) {
		self.dict["channelTitle"] = channelTitle
	}
	
	public func setMultiRequestToken(channelLink: String) {
		self.dict["channelLink"] = channelLink
	}
	
	public func setMultiRequestToken(channelDescription: String) {
		self.dict["channelDescription"] = channelDescription
	}
	
	public func setMultiRequestToken(feedUrl: String) {
		self.dict["feedUrl"] = feedUrl
	}
	
	public func setMultiRequestToken(cuePointsProvider: String) {
		self.dict["cuePointsProvider"] = cuePointsProvider
	}
	
	public func setMultiRequestToken(itemsPerPage: String) {
		self.dict["itemsPerPage"] = itemsPerPage
	}
	
	public func setMultiRequestToken(ignoreSchedulingInFeed: String) {
		self.dict["ignoreSchedulingInFeed"] = ignoreSchedulingInFeed
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["channelTitle"] != nil {
			channelTitle = dict["channelTitle"] as? String
		}
		if dict["channelLink"] != nil {
			channelLink = dict["channelLink"] as? String
		}
		if dict["channelDescription"] != nil {
			channelDescription = dict["channelDescription"] as? String
		}
		if dict["feedUrl"] != nil {
			feedUrl = dict["feedUrl"] as? String
		}
		if dict["cuePointsProvider"] != nil {
			cuePointsProvider = dict["cuePointsProvider"] as? String
		}
		if dict["itemsPerPage"] != nil {
			itemsPerPage = dict["itemsPerPage"] as? String
		}
		if dict["ignoreSchedulingInFeed"] != nil {
			ignoreSchedulingInFeed = dict["ignoreSchedulingInFeed"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(channelTitle != nil) {
			dict["channelTitle"] = channelTitle!
		}
		if(channelLink != nil) {
			dict["channelLink"] = channelLink!
		}
		if(channelDescription != nil) {
			dict["channelDescription"] = channelDescription!
		}
		if(cuePointsProvider != nil) {
			dict["cuePointsProvider"] = cuePointsProvider!
		}
		if(itemsPerPage != nil) {
			dict["itemsPerPage"] = itemsPerPage!
		}
		if(ignoreSchedulingInFeed != nil) {
			dict["ignoreSchedulingInFeed"] = ignoreSchedulingInFeed!
		}
		return dict
	}
}

