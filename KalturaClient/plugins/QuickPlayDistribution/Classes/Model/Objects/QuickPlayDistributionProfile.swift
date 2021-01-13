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

open class QuickPlayDistributionProfile: ConfigurableDistributionProfile {

	public class QuickPlayDistributionProfileTokenizer: ConfigurableDistributionProfile.ConfigurableDistributionProfileTokenizer {
		
		public var sftpHost: BaseTokenizedObject {
			get {
				return self.append("sftpHost") 
			}
		}
		
		public var sftpLogin: BaseTokenizedObject {
			get {
				return self.append("sftpLogin") 
			}
		}
		
		public var sftpPass: BaseTokenizedObject {
			get {
				return self.append("sftpPass") 
			}
		}
		
		public var sftpBasePath: BaseTokenizedObject {
			get {
				return self.append("sftpBasePath") 
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
		
		public var channelManagingEditor: BaseTokenizedObject {
			get {
				return self.append("channelManagingEditor") 
			}
		}
		
		public var channelLanguage: BaseTokenizedObject {
			get {
				return self.append("channelLanguage") 
			}
		}
		
		public var channelImageTitle: BaseTokenizedObject {
			get {
				return self.append("channelImageTitle") 
			}
		}
		
		public var channelImageWidth: BaseTokenizedObject {
			get {
				return self.append("channelImageWidth") 
			}
		}
		
		public var channelImageHeight: BaseTokenizedObject {
			get {
				return self.append("channelImageHeight") 
			}
		}
		
		public var channelImageLink: BaseTokenizedObject {
			get {
				return self.append("channelImageLink") 
			}
		}
		
		public var channelImageUrl: BaseTokenizedObject {
			get {
				return self.append("channelImageUrl") 
			}
		}
		
		public var channelCopyright: BaseTokenizedObject {
			get {
				return self.append("channelCopyright") 
			}
		}
		
		public var channelGenerator: BaseTokenizedObject {
			get {
				return self.append("channelGenerator") 
			}
		}
		
		public var channelRating: BaseTokenizedObject {
			get {
				return self.append("channelRating") 
			}
		}
	}

	public var sftpHost: String? = nil
	public var sftpLogin: String? = nil
	public var sftpPass: String? = nil
	public var sftpBasePath: String? = nil
	public var channelTitle: String? = nil
	public var channelLink: String? = nil
	public var channelDescription: String? = nil
	public var channelManagingEditor: String? = nil
	public var channelLanguage: String? = nil
	public var channelImageTitle: String? = nil
	public var channelImageWidth: String? = nil
	public var channelImageHeight: String? = nil
	public var channelImageLink: String? = nil
	public var channelImageUrl: String? = nil
	public var channelCopyright: String? = nil
	public var channelGenerator: String? = nil
	public var channelRating: String? = nil


	public func setMultiRequestToken(sftpHost: String) {
		self.dict["sftpHost"] = sftpHost
	}
	
	public func setMultiRequestToken(sftpLogin: String) {
		self.dict["sftpLogin"] = sftpLogin
	}
	
	public func setMultiRequestToken(sftpPass: String) {
		self.dict["sftpPass"] = sftpPass
	}
	
	public func setMultiRequestToken(sftpBasePath: String) {
		self.dict["sftpBasePath"] = sftpBasePath
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
	
	public func setMultiRequestToken(channelManagingEditor: String) {
		self.dict["channelManagingEditor"] = channelManagingEditor
	}
	
	public func setMultiRequestToken(channelLanguage: String) {
		self.dict["channelLanguage"] = channelLanguage
	}
	
	public func setMultiRequestToken(channelImageTitle: String) {
		self.dict["channelImageTitle"] = channelImageTitle
	}
	
	public func setMultiRequestToken(channelImageWidth: String) {
		self.dict["channelImageWidth"] = channelImageWidth
	}
	
	public func setMultiRequestToken(channelImageHeight: String) {
		self.dict["channelImageHeight"] = channelImageHeight
	}
	
	public func setMultiRequestToken(channelImageLink: String) {
		self.dict["channelImageLink"] = channelImageLink
	}
	
	public func setMultiRequestToken(channelImageUrl: String) {
		self.dict["channelImageUrl"] = channelImageUrl
	}
	
	public func setMultiRequestToken(channelCopyright: String) {
		self.dict["channelCopyright"] = channelCopyright
	}
	
	public func setMultiRequestToken(channelGenerator: String) {
		self.dict["channelGenerator"] = channelGenerator
	}
	
	public func setMultiRequestToken(channelRating: String) {
		self.dict["channelRating"] = channelRating
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["sftpHost"] != nil {
			sftpHost = dict["sftpHost"] as? String
		}
		if dict["sftpLogin"] != nil {
			sftpLogin = dict["sftpLogin"] as? String
		}
		if dict["sftpPass"] != nil {
			sftpPass = dict["sftpPass"] as? String
		}
		if dict["sftpBasePath"] != nil {
			sftpBasePath = dict["sftpBasePath"] as? String
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
		if dict["channelManagingEditor"] != nil {
			channelManagingEditor = dict["channelManagingEditor"] as? String
		}
		if dict["channelLanguage"] != nil {
			channelLanguage = dict["channelLanguage"] as? String
		}
		if dict["channelImageTitle"] != nil {
			channelImageTitle = dict["channelImageTitle"] as? String
		}
		if dict["channelImageWidth"] != nil {
			channelImageWidth = dict["channelImageWidth"] as? String
		}
		if dict["channelImageHeight"] != nil {
			channelImageHeight = dict["channelImageHeight"] as? String
		}
		if dict["channelImageLink"] != nil {
			channelImageLink = dict["channelImageLink"] as? String
		}
		if dict["channelImageUrl"] != nil {
			channelImageUrl = dict["channelImageUrl"] as? String
		}
		if dict["channelCopyright"] != nil {
			channelCopyright = dict["channelCopyright"] as? String
		}
		if dict["channelGenerator"] != nil {
			channelGenerator = dict["channelGenerator"] as? String
		}
		if dict["channelRating"] != nil {
			channelRating = dict["channelRating"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(sftpHost != nil) {
			dict["sftpHost"] = sftpHost!
		}
		if(sftpLogin != nil) {
			dict["sftpLogin"] = sftpLogin!
		}
		if(sftpPass != nil) {
			dict["sftpPass"] = sftpPass!
		}
		if(sftpBasePath != nil) {
			dict["sftpBasePath"] = sftpBasePath!
		}
		if(channelTitle != nil) {
			dict["channelTitle"] = channelTitle!
		}
		if(channelLink != nil) {
			dict["channelLink"] = channelLink!
		}
		if(channelDescription != nil) {
			dict["channelDescription"] = channelDescription!
		}
		if(channelManagingEditor != nil) {
			dict["channelManagingEditor"] = channelManagingEditor!
		}
		if(channelLanguage != nil) {
			dict["channelLanguage"] = channelLanguage!
		}
		if(channelImageTitle != nil) {
			dict["channelImageTitle"] = channelImageTitle!
		}
		if(channelImageWidth != nil) {
			dict["channelImageWidth"] = channelImageWidth!
		}
		if(channelImageHeight != nil) {
			dict["channelImageHeight"] = channelImageHeight!
		}
		if(channelImageLink != nil) {
			dict["channelImageLink"] = channelImageLink!
		}
		if(channelImageUrl != nil) {
			dict["channelImageUrl"] = channelImageUrl!
		}
		if(channelCopyright != nil) {
			dict["channelCopyright"] = channelCopyright!
		}
		if(channelGenerator != nil) {
			dict["channelGenerator"] = channelGenerator!
		}
		if(channelRating != nil) {
			dict["channelRating"] = channelRating!
		}
		return dict
	}
}

