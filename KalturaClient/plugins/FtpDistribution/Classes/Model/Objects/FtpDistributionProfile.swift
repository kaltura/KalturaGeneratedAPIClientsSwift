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

open class FtpDistributionProfile: ConfigurableDistributionProfile {

	public class FtpDistributionProfileTokenizer: ConfigurableDistributionProfile.ConfigurableDistributionProfileTokenizer {
		
		public var protocol_: BaseTokenizedObject {
			get {
				return self.append("protocol_") 
			}
		}
		
		public var host: BaseTokenizedObject {
			get {
				return self.append("host") 
			}
		}
		
		public var port: BaseTokenizedObject {
			get {
				return self.append("port") 
			}
		}
		
		public var basePath: BaseTokenizedObject {
			get {
				return self.append("basePath") 
			}
		}
		
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
		
		public var passphrase: BaseTokenizedObject {
			get {
				return self.append("passphrase") 
			}
		}
		
		public var sftpPublicKey: BaseTokenizedObject {
			get {
				return self.append("sftpPublicKey") 
			}
		}
		
		public var sftpPrivateKey: BaseTokenizedObject {
			get {
				return self.append("sftpPrivateKey") 
			}
		}
		
		public var disableMetadata: BaseTokenizedObject {
			get {
				return self.append("disableMetadata") 
			}
		}
		
		public var metadataXslt: BaseTokenizedObject {
			get {
				return self.append("metadataXslt") 
			}
		}
		
		public var metadataFilenameXslt: BaseTokenizedObject {
			get {
				return self.append("metadataFilenameXslt") 
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
		
		public var asperaPublicKey: BaseTokenizedObject {
			get {
				return self.append("asperaPublicKey") 
			}
		}
		
		public var asperaPrivateKey: BaseTokenizedObject {
			get {
				return self.append("asperaPrivateKey") 
			}
		}
		
		public var sendMetadataAfterAssets: BaseTokenizedObject {
			get {
				return self.append("sendMetadataAfterAssets") 
			}
		}
	}

	public var protocol_: DistributionProtocol? = nil
	public var host: String? = nil
	public var port: Int? = nil
	public var basePath: String? = nil
	public var username: String? = nil
	public var password: String? = nil
	public var passphrase: String? = nil
	public var sftpPublicKey: String? = nil
	public var sftpPrivateKey: String? = nil
	public var disableMetadata: Bool? = nil
	public var metadataXslt: String? = nil
	public var metadataFilenameXslt: String? = nil
	public var flavorAssetFilenameXslt: String? = nil
	public var thumbnailAssetFilenameXslt: String? = nil
	public var assetFilenameXslt: String? = nil
	public var asperaPublicKey: String? = nil
	public var asperaPrivateKey: String? = nil
	public var sendMetadataAfterAssets: Bool? = nil


	public func setMultiRequestToken(protocol_: String) {
		self.dict["protocol"] = protocol_
	}
	
	public func setMultiRequestToken(host: String) {
		self.dict["host"] = host
	}
	
	public func setMultiRequestToken(port: String) {
		self.dict["port"] = port
	}
	
	public func setMultiRequestToken(basePath: String) {
		self.dict["basePath"] = basePath
	}
	
	public func setMultiRequestToken(username: String) {
		self.dict["username"] = username
	}
	
	public func setMultiRequestToken(password: String) {
		self.dict["password"] = password
	}
	
	public func setMultiRequestToken(passphrase: String) {
		self.dict["passphrase"] = passphrase
	}
	
	public func setMultiRequestToken(sftpPublicKey: String) {
		self.dict["sftpPublicKey"] = sftpPublicKey
	}
	
	public func setMultiRequestToken(sftpPrivateKey: String) {
		self.dict["sftpPrivateKey"] = sftpPrivateKey
	}
	
	public func setMultiRequestToken(disableMetadata: String) {
		self.dict["disableMetadata"] = disableMetadata
	}
	
	public func setMultiRequestToken(metadataXslt: String) {
		self.dict["metadataXslt"] = metadataXslt
	}
	
	public func setMultiRequestToken(metadataFilenameXslt: String) {
		self.dict["metadataFilenameXslt"] = metadataFilenameXslt
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
	
	public func setMultiRequestToken(asperaPublicKey: String) {
		self.dict["asperaPublicKey"] = asperaPublicKey
	}
	
	public func setMultiRequestToken(asperaPrivateKey: String) {
		self.dict["asperaPrivateKey"] = asperaPrivateKey
	}
	
	public func setMultiRequestToken(sendMetadataAfterAssets: String) {
		self.dict["sendMetadataAfterAssets"] = sendMetadataAfterAssets
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["protocol"] != nil {
			protocol_ = DistributionProtocol(rawValue: (dict["protocol"] as? Int)!)
		}
		if dict["host"] != nil {
			host = dict["host"] as? String
		}
		if dict["port"] != nil {
			port = dict["port"] as? Int
		}
		if dict["basePath"] != nil {
			basePath = dict["basePath"] as? String
		}
		if dict["username"] != nil {
			username = dict["username"] as? String
		}
		if dict["password"] != nil {
			password = dict["password"] as? String
		}
		if dict["passphrase"] != nil {
			passphrase = dict["passphrase"] as? String
		}
		if dict["sftpPublicKey"] != nil {
			sftpPublicKey = dict["sftpPublicKey"] as? String
		}
		if dict["sftpPrivateKey"] != nil {
			sftpPrivateKey = dict["sftpPrivateKey"] as? String
		}
		if dict["disableMetadata"] != nil {
			disableMetadata = dict["disableMetadata"] as? Bool
		}
		if dict["metadataXslt"] != nil {
			metadataXslt = dict["metadataXslt"] as? String
		}
		if dict["metadataFilenameXslt"] != nil {
			metadataFilenameXslt = dict["metadataFilenameXslt"] as? String
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
		if dict["asperaPublicKey"] != nil {
			asperaPublicKey = dict["asperaPublicKey"] as? String
		}
		if dict["asperaPrivateKey"] != nil {
			asperaPrivateKey = dict["asperaPrivateKey"] as? String
		}
		if dict["sendMetadataAfterAssets"] != nil {
			sendMetadataAfterAssets = dict["sendMetadataAfterAssets"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(protocol_ != nil) {
			dict["protocol"] = protocol_!.rawValue
		}
		if(host != nil) {
			dict["host"] = host!
		}
		if(port != nil) {
			dict["port"] = port!
		}
		if(basePath != nil) {
			dict["basePath"] = basePath!
		}
		if(username != nil) {
			dict["username"] = username!
		}
		if(password != nil) {
			dict["password"] = password!
		}
		if(passphrase != nil) {
			dict["passphrase"] = passphrase!
		}
		if(sftpPublicKey != nil) {
			dict["sftpPublicKey"] = sftpPublicKey!
		}
		if(sftpPrivateKey != nil) {
			dict["sftpPrivateKey"] = sftpPrivateKey!
		}
		if(disableMetadata != nil) {
			dict["disableMetadata"] = disableMetadata!
		}
		if(metadataXslt != nil) {
			dict["metadataXslt"] = metadataXslt!
		}
		if(metadataFilenameXslt != nil) {
			dict["metadataFilenameXslt"] = metadataFilenameXslt!
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
		if(asperaPublicKey != nil) {
			dict["asperaPublicKey"] = asperaPublicKey!
		}
		if(asperaPrivateKey != nil) {
			dict["asperaPrivateKey"] = asperaPrivateKey!
		}
		if(sendMetadataAfterAssets != nil) {
			dict["sendMetadataAfterAssets"] = sendMetadataAfterAssets!
		}
		return dict
	}
}

