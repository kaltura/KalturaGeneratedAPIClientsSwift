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

open class RainFocusDistributionProfile: ConfigurableDistributionProfile {

	public class RainFocusDistributionProfileTokenizer: ConfigurableDistributionProfile.ConfigurableDistributionProfileTokenizer {
		
		public var oauthTokenUrl: BaseTokenizedObject {
			get {
				return self.append("oauthTokenUrl") 
			}
		}
		
		public var videoPublishEndpointUrl: BaseTokenizedObject {
			get {
				return self.append("videoPublishEndpointUrl") 
			}
		}
		
		public var oauthScope: BaseTokenizedObject {
			get {
				return self.append("oauthScope") 
			}
		}
		
		public var clientId: BaseTokenizedObject {
			get {
				return self.append("clientId") 
			}
		}
		
		public var clientSecretPrimary: BaseTokenizedObject {
			get {
				return self.append("clientSecretPrimary") 
			}
		}
		
		public var clientSecretSecondary: BaseTokenizedObject {
			get {
				return self.append("clientSecretSecondary") 
			}
		}
		
		public var activeSecret: BaseTokenizedObject {
			get {
				return self.append("activeSecret") 
			}
		}
		
		public var mediaType: BaseTokenizedObject {
			get {
				return self.append("mediaType") 
			}
		}
		
		public var playerId: BaseTokenizedObject {
			get {
				return self.append("playerId") 
			}
		}
		
		public var metadataProfileId: BaseTokenizedObject {
			get {
				return self.append("metadataProfileId") 
			}
		}
		
		public var metadataFieldNames: BaseTokenizedObject {
			get {
				return self.append("metadataFieldNames") 
			}
		}
	}

	public var oauthTokenUrl: String? = nil
	public var videoPublishEndpointUrl: String? = nil
	public var oauthScope: String? = nil
	public var clientId: String? = nil
	public var clientSecretPrimary: String? = nil
	public var clientSecretSecondary: String? = nil
	public var activeSecret: String? = nil
	public var mediaType: Int? = nil
	public var playerId: String? = nil
	public var metadataProfileId: String? = nil
	public var metadataFieldNames: String? = nil


	public func setMultiRequestToken(oauthTokenUrl: String) {
		self.dict["oauthTokenUrl"] = oauthTokenUrl
	}
	
	public func setMultiRequestToken(videoPublishEndpointUrl: String) {
		self.dict["videoPublishEndpointUrl"] = videoPublishEndpointUrl
	}
	
	public func setMultiRequestToken(oauthScope: String) {
		self.dict["oauthScope"] = oauthScope
	}
	
	public func setMultiRequestToken(clientId: String) {
		self.dict["clientId"] = clientId
	}
	
	public func setMultiRequestToken(clientSecretPrimary: String) {
		self.dict["clientSecretPrimary"] = clientSecretPrimary
	}
	
	public func setMultiRequestToken(clientSecretSecondary: String) {
		self.dict["clientSecretSecondary"] = clientSecretSecondary
	}
	
	public func setMultiRequestToken(activeSecret: String) {
		self.dict["activeSecret"] = activeSecret
	}
	
	public func setMultiRequestToken(mediaType: String) {
		self.dict["mediaType"] = mediaType
	}
	
	public func setMultiRequestToken(playerId: String) {
		self.dict["playerId"] = playerId
	}
	
	public func setMultiRequestToken(metadataProfileId: String) {
		self.dict["metadataProfileId"] = metadataProfileId
	}
	
	public func setMultiRequestToken(metadataFieldNames: String) {
		self.dict["metadataFieldNames"] = metadataFieldNames
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["oauthTokenUrl"] != nil {
			oauthTokenUrl = dict["oauthTokenUrl"] as? String
		}
		if dict["videoPublishEndpointUrl"] != nil {
			videoPublishEndpointUrl = dict["videoPublishEndpointUrl"] as? String
		}
		if dict["oauthScope"] != nil {
			oauthScope = dict["oauthScope"] as? String
		}
		if dict["clientId"] != nil {
			clientId = dict["clientId"] as? String
		}
		if dict["clientSecretPrimary"] != nil {
			clientSecretPrimary = dict["clientSecretPrimary"] as? String
		}
		if dict["clientSecretSecondary"] != nil {
			clientSecretSecondary = dict["clientSecretSecondary"] as? String
		}
		if dict["activeSecret"] != nil {
			activeSecret = dict["activeSecret"] as? String
		}
		if dict["mediaType"] != nil {
			mediaType = dict["mediaType"] as? Int
		}
		if dict["playerId"] != nil {
			playerId = dict["playerId"] as? String
		}
		if dict["metadataProfileId"] != nil {
			metadataProfileId = dict["metadataProfileId"] as? String
		}
		if dict["metadataFieldNames"] != nil {
			metadataFieldNames = dict["metadataFieldNames"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(oauthTokenUrl != nil) {
			dict["oauthTokenUrl"] = oauthTokenUrl!
		}
		if(videoPublishEndpointUrl != nil) {
			dict["videoPublishEndpointUrl"] = videoPublishEndpointUrl!
		}
		if(oauthScope != nil) {
			dict["oauthScope"] = oauthScope!
		}
		if(clientId != nil) {
			dict["clientId"] = clientId!
		}
		if(clientSecretPrimary != nil) {
			dict["clientSecretPrimary"] = clientSecretPrimary!
		}
		if(clientSecretSecondary != nil) {
			dict["clientSecretSecondary"] = clientSecretSecondary!
		}
		if(activeSecret != nil) {
			dict["activeSecret"] = activeSecret!
		}
		if(mediaType != nil) {
			dict["mediaType"] = mediaType!
		}
		if(playerId != nil) {
			dict["playerId"] = playerId!
		}
		if(metadataProfileId != nil) {
			dict["metadataProfileId"] = metadataProfileId!
		}
		if(metadataFieldNames != nil) {
			dict["metadataFieldNames"] = metadataFieldNames!
		}
		return dict
	}
}

