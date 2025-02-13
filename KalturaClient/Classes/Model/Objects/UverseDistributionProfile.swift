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

open class UverseDistributionProfile: ConfigurableDistributionProfile {

	public class UverseDistributionProfileTokenizer: ConfigurableDistributionProfile.ConfigurableDistributionProfileTokenizer {
		
		public var feedUrl: BaseTokenizedObject {
			get {
				return self.append("feedUrl") 
			}
		}
		
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
		
		public var channelLanguage: BaseTokenizedObject {
			get {
				return self.append("channelLanguage") 
			}
		}
		
		public var channelCopyright: BaseTokenizedObject {
			get {
				return self.append("channelCopyright") 
			}
		}
		
		public var channelImageTitle: BaseTokenizedObject {
			get {
				return self.append("channelImageTitle") 
			}
		}
		
		public var channelImageUrl: BaseTokenizedObject {
			get {
				return self.append("channelImageUrl") 
			}
		}
		
		public var channelImageLink: BaseTokenizedObject {
			get {
				return self.append("channelImageLink") 
			}
		}
		
		public var ftpHost: BaseTokenizedObject {
			get {
				return self.append("ftpHost") 
			}
		}
		
		public var ftpLogin: BaseTokenizedObject {
			get {
				return self.append("ftpLogin") 
			}
		}
		
		public var ftpPassword: BaseTokenizedObject {
			get {
				return self.append("ftpPassword") 
			}
		}
	}

	public var feedUrl: String? = nil
	public var channelTitle: String? = nil
	public var channelLink: String? = nil
	public var channelDescription: String? = nil
	public var channelLanguage: String? = nil
	public var channelCopyright: String? = nil
	public var channelImageTitle: String? = nil
	public var channelImageUrl: String? = nil
	public var channelImageLink: String? = nil
	public var ftpHost: String? = nil
	public var ftpLogin: String? = nil
	public var ftpPassword: String? = nil


	public func setMultiRequestToken(feedUrl: String) {
		self.dict["feedUrl"] = feedUrl
	}
	
	public func setMultiRequestToken(channelTitle: String) {
		self.dict["channelTitle"] = channelTitle
	}
	
	public func setMultiRequestToken(channelLink: String) {
		self.dict["channelLink"] = channelLink
	}
	
	public func setMultiRequestToken(channelDescription: String) {
		self.dict["channelDescription"] = channelDescription
	}
	
	public func setMultiRequestToken(channelLanguage: String) {
		self.dict["channelLanguage"] = channelLanguage
	}
	
	public func setMultiRequestToken(channelCopyright: String) {
		self.dict["channelCopyright"] = channelCopyright
	}
	
	public func setMultiRequestToken(channelImageTitle: String) {
		self.dict["channelImageTitle"] = channelImageTitle
	}
	
	public func setMultiRequestToken(channelImageUrl: String) {
		self.dict["channelImageUrl"] = channelImageUrl
	}
	
	public func setMultiRequestToken(channelImageLink: String) {
		self.dict["channelImageLink"] = channelImageLink
	}
	
	public func setMultiRequestToken(ftpHost: String) {
		self.dict["ftpHost"] = ftpHost
	}
	
	public func setMultiRequestToken(ftpLogin: String) {
		self.dict["ftpLogin"] = ftpLogin
	}
	
	public func setMultiRequestToken(ftpPassword: String) {
		self.dict["ftpPassword"] = ftpPassword
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["feedUrl"] != nil {
			feedUrl = dict["feedUrl"] as? String
		}
		if dict["channelTitle"] != nil {
			channelTitle = dict["channelTitle"] as? String
		}
		if dict["channelLink"] != nil {
			channelLink = dict["channelLink"] as? String
		}
		if dict["channelDescription"] != nil {
			channelDescription = dict["channelDescription"] as? String
		}
		if dict["channelLanguage"] != nil {
			channelLanguage = dict["channelLanguage"] as? String
		}
		if dict["channelCopyright"] != nil {
			channelCopyright = dict["channelCopyright"] as? String
		}
		if dict["channelImageTitle"] != nil {
			channelImageTitle = dict["channelImageTitle"] as? String
		}
		if dict["channelImageUrl"] != nil {
			channelImageUrl = dict["channelImageUrl"] as? String
		}
		if dict["channelImageLink"] != nil {
			channelImageLink = dict["channelImageLink"] as? String
		}
		if dict["ftpHost"] != nil {
			ftpHost = dict["ftpHost"] as? String
		}
		if dict["ftpLogin"] != nil {
			ftpLogin = dict["ftpLogin"] as? String
		}
		if dict["ftpPassword"] != nil {
			ftpPassword = dict["ftpPassword"] as? String
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
		if(channelLanguage != nil) {
			dict["channelLanguage"] = channelLanguage!
		}
		if(channelCopyright != nil) {
			dict["channelCopyright"] = channelCopyright!
		}
		if(channelImageTitle != nil) {
			dict["channelImageTitle"] = channelImageTitle!
		}
		if(channelImageUrl != nil) {
			dict["channelImageUrl"] = channelImageUrl!
		}
		if(channelImageLink != nil) {
			dict["channelImageLink"] = channelImageLink!
		}
		if(ftpHost != nil) {
			dict["ftpHost"] = ftpHost!
		}
		if(ftpLogin != nil) {
			dict["ftpLogin"] = ftpLogin!
		}
		if(ftpPassword != nil) {
			dict["ftpPassword"] = ftpPassword!
		}
		return dict
	}
}

