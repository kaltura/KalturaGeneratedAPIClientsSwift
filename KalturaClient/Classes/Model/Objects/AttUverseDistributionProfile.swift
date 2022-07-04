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

open class AttUverseDistributionProfile: ConfigurableDistributionProfile {

	public class AttUverseDistributionProfileTokenizer: ConfigurableDistributionProfile.ConfigurableDistributionProfileTokenizer {
		
		public var feedUrl: BaseTokenizedObject {
			get {
				return self.append("feedUrl") 
			}
		}
		
		public var ftpHost: BaseTokenizedObject {
			get {
				return self.append("ftpHost") 
			}
		}
		
		public var ftpUsername: BaseTokenizedObject {
			get {
				return self.append("ftpUsername") 
			}
		}
		
		public var ftpPassword: BaseTokenizedObject {
			get {
				return self.append("ftpPassword") 
			}
		}
		
		public var ftpPath: BaseTokenizedObject {
			get {
				return self.append("ftpPath") 
			}
		}
		
		public var channelTitle: BaseTokenizedObject {
			get {
				return self.append("channelTitle") 
			}
		}
		
		public var flavorAssetFilenameXslt: BaseTokenizedObject {
			get {
				return self.append("flavorAssetFilenameXslt") 
			}
		}
		
		public var thumbnailAssetFilenameXslt: BaseTokenizedObject {
			get {
				return self.append("thumbnailAssetFilenameXslt") 
			}
		}
		
		public var assetFilenameXslt: BaseTokenizedObject {
			get {
				return self.append("assetFilenameXslt") 
			}
		}
	}

	public var feedUrl: String? = nil
	public var ftpHost: String? = nil
	public var ftpUsername: String? = nil
	public var ftpPassword: String? = nil
	public var ftpPath: String? = nil
	public var channelTitle: String? = nil
	public var flavorAssetFilenameXslt: String? = nil
	public var thumbnailAssetFilenameXslt: String? = nil
	public var assetFilenameXslt: String? = nil


	public func setMultiRequestToken(feedUrl: String) {
		self.dict["feedUrl"] = feedUrl
	}
	
	public func setMultiRequestToken(ftpHost: String) {
		self.dict["ftpHost"] = ftpHost
	}
	
	public func setMultiRequestToken(ftpUsername: String) {
		self.dict["ftpUsername"] = ftpUsername
	}
	
	public func setMultiRequestToken(ftpPassword: String) {
		self.dict["ftpPassword"] = ftpPassword
	}
	
	public func setMultiRequestToken(ftpPath: String) {
		self.dict["ftpPath"] = ftpPath
	}
	
	public func setMultiRequestToken(channelTitle: String) {
		self.dict["channelTitle"] = channelTitle
	}
	
	public func setMultiRequestToken(flavorAssetFilenameXslt: String) {
		self.dict["flavorAssetFilenameXslt"] = flavorAssetFilenameXslt
	}
	
	public func setMultiRequestToken(thumbnailAssetFilenameXslt: String) {
		self.dict["thumbnailAssetFilenameXslt"] = thumbnailAssetFilenameXslt
	}
	
	public func setMultiRequestToken(assetFilenameXslt: String) {
		self.dict["assetFilenameXslt"] = assetFilenameXslt
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["feedUrl"] != nil {
			feedUrl = dict["feedUrl"] as? String
		}
		if dict["ftpHost"] != nil {
			ftpHost = dict["ftpHost"] as? String
		}
		if dict["ftpUsername"] != nil {
			ftpUsername = dict["ftpUsername"] as? String
		}
		if dict["ftpPassword"] != nil {
			ftpPassword = dict["ftpPassword"] as? String
		}
		if dict["ftpPath"] != nil {
			ftpPath = dict["ftpPath"] as? String
		}
		if dict["channelTitle"] != nil {
			channelTitle = dict["channelTitle"] as? String
		}
		if dict["flavorAssetFilenameXslt"] != nil {
			flavorAssetFilenameXslt = dict["flavorAssetFilenameXslt"] as? String
		}
		if dict["thumbnailAssetFilenameXslt"] != nil {
			thumbnailAssetFilenameXslt = dict["thumbnailAssetFilenameXslt"] as? String
		}
		if dict["assetFilenameXslt"] != nil {
			assetFilenameXslt = dict["assetFilenameXslt"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(ftpHost != nil) {
			dict["ftpHost"] = ftpHost!
		}
		if(ftpUsername != nil) {
			dict["ftpUsername"] = ftpUsername!
		}
		if(ftpPassword != nil) {
			dict["ftpPassword"] = ftpPassword!
		}
		if(ftpPath != nil) {
			dict["ftpPath"] = ftpPath!
		}
		if(channelTitle != nil) {
			dict["channelTitle"] = channelTitle!
		}
		if(flavorAssetFilenameXslt != nil) {
			dict["flavorAssetFilenameXslt"] = flavorAssetFilenameXslt!
		}
		if(thumbnailAssetFilenameXslt != nil) {
			dict["thumbnailAssetFilenameXslt"] = thumbnailAssetFilenameXslt!
		}
		if(assetFilenameXslt != nil) {
			dict["assetFilenameXslt"] = assetFilenameXslt!
		}
		return dict
	}
}

