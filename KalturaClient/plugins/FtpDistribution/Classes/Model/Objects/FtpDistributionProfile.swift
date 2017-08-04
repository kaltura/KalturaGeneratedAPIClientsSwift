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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class FtpDistributionProfile: ConfigurableDistributionProfile {

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

	public override func toDictionary() -> [String: Any] {
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

