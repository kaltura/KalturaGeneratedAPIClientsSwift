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

open class UnicornDistributionProfile: ConfigurableDistributionProfile {

	public class UnicornDistributionProfileTokenizer: ConfigurableDistributionProfile.ConfigurableDistributionProfileTokenizer {
		
		public var username: BaseTokenizedObject {
			get {
				return self.append("username") 
			}
		}
		
		public var password: BaseTokenizedObject {
			get {
				return self.append("password") 
			}
		}
		
		public var domainName: BaseTokenizedObject {
			get {
				return self.append("domainName") 
			}
		}
		
		public var channelGuid: BaseTokenizedObject {
			get {
				return self.append("channelGuid") 
			}
		}
		
		public var apiHostUrl: BaseTokenizedObject {
			get {
				return self.append("apiHostUrl") 
			}
		}
		
		public var domainGuid: BaseTokenizedObject {
			get {
				return self.append("domainGuid") 
			}
		}
		
		public var adFreeApplicationGuid: BaseTokenizedObject {
			get {
				return self.append("adFreeApplicationGuid") 
			}
		}
		
		public var remoteAssetParamsId: BaseTokenizedObject {
			get {
				return self.append("remoteAssetParamsId") 
			}
		}
		
		public var storageProfileId: BaseTokenizedObject {
			get {
				return self.append("storageProfileId") 
			}
		}
	}

	/**  The email address associated with the Upload User, used to authorize the
	  incoming request.  */
	public var username: String? = nil
	/**  The password used in association with the email to determine if the Upload User
	  is authorized the incoming request.  */
	public var password: String? = nil
	/**  The name of the Domain that the Upload User should have access to, Used for
	  authentication.  */
	public var domainName: String? = nil
	/**  The Channel GUID assigned to this Publication Rule. Must be a valid Channel in
	  the Domain that was used in authentication.  */
	public var channelGuid: String? = nil
	/**  The API host URL that the Upload User should have access to, Used for HTTP
	  content submission.  */
	public var apiHostUrl: String? = nil
	/**  The GUID of the Customer Domain in the Unicorn system obtained by contacting
	  your Unicorn representative.  */
	public var domainGuid: String? = nil
	/**  The GUID for the application in which to record metrics and enforce business
	  rules obtained through your Unicorn representative.  */
	public var adFreeApplicationGuid: String? = nil
	/**  The flavor-params that will be used for the remote asset.  */
	public var remoteAssetParamsId: Int? = nil
	/**  The remote storage that should be used for the remote asset.  */
	public var storageProfileId: String? = nil


	public func setMultiRequestToken(username: String) {
		self.dict["username"] = username
	}
	
	public func setMultiRequestToken(password: String) {
		self.dict["password"] = password
	}
	
	public func setMultiRequestToken(domainName: String) {
		self.dict["domainName"] = domainName
	}
	
	public func setMultiRequestToken(channelGuid: String) {
		self.dict["channelGuid"] = channelGuid
	}
	
	public func setMultiRequestToken(apiHostUrl: String) {
		self.dict["apiHostUrl"] = apiHostUrl
	}
	
	public func setMultiRequestToken(domainGuid: String) {
		self.dict["domainGuid"] = domainGuid
	}
	
	public func setMultiRequestToken(adFreeApplicationGuid: String) {
		self.dict["adFreeApplicationGuid"] = adFreeApplicationGuid
	}
	
	public func setMultiRequestToken(remoteAssetParamsId: String) {
		self.dict["remoteAssetParamsId"] = remoteAssetParamsId
	}
	
	public func setMultiRequestToken(storageProfileId: String) {
		self.dict["storageProfileId"] = storageProfileId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["username"] != nil {
			username = dict["username"] as? String
		}
		if dict["password"] != nil {
			password = dict["password"] as? String
		}
		if dict["domainName"] != nil {
			domainName = dict["domainName"] as? String
		}
		if dict["channelGuid"] != nil {
			channelGuid = dict["channelGuid"] as? String
		}
		if dict["apiHostUrl"] != nil {
			apiHostUrl = dict["apiHostUrl"] as? String
		}
		if dict["domainGuid"] != nil {
			domainGuid = dict["domainGuid"] as? String
		}
		if dict["adFreeApplicationGuid"] != nil {
			adFreeApplicationGuid = dict["adFreeApplicationGuid"] as? String
		}
		if dict["remoteAssetParamsId"] != nil {
			remoteAssetParamsId = dict["remoteAssetParamsId"] as? Int
		}
		if dict["storageProfileId"] != nil {
			storageProfileId = dict["storageProfileId"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(username != nil) {
			dict["username"] = username!
		}
		if(password != nil) {
			dict["password"] = password!
		}
		if(domainName != nil) {
			dict["domainName"] = domainName!
		}
		if(channelGuid != nil) {
			dict["channelGuid"] = channelGuid!
		}
		if(apiHostUrl != nil) {
			dict["apiHostUrl"] = apiHostUrl!
		}
		if(domainGuid != nil) {
			dict["domainGuid"] = domainGuid!
		}
		if(adFreeApplicationGuid != nil) {
			dict["adFreeApplicationGuid"] = adFreeApplicationGuid!
		}
		if(remoteAssetParamsId != nil) {
			dict["remoteAssetParamsId"] = remoteAssetParamsId!
		}
		if(storageProfileId != nil) {
			dict["storageProfileId"] = storageProfileId!
		}
		return dict
	}
}

