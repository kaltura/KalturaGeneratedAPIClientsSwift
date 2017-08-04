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

open class HuluDistributionProfile: ConfigurableDistributionProfile {

	public var sftpHost: String? = nil
	public var sftpLogin: String? = nil
	public var sftpPass: String? = nil
	public var seriesChannel: String? = nil
	public var seriesPrimaryCategory: String? = nil
	public var seriesAdditionalCategories: Array<StringHolder>? = nil
	public var seasonNumber: String? = nil
	public var seasonSynopsis: String? = nil
	public var seasonTuneInInformation: String? = nil
	public var videoMediaType: String? = nil
	public var disableEpisodeNumberCustomValidation: Bool? = nil
	public var protocol_: DistributionProtocol? = nil
	public var asperaHost: String? = nil
	public var asperaLogin: String? = nil
	public var asperaPass: String? = nil
	public var port: Int? = nil
	public var passphrase: String? = nil
	public var asperaPublicKey: String? = nil
	public var asperaPrivateKey: String? = nil


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
		if dict["seriesChannel"] != nil {
			seriesChannel = dict["seriesChannel"] as? String
		}
		if dict["seriesPrimaryCategory"] != nil {
			seriesPrimaryCategory = dict["seriesPrimaryCategory"] as? String
		}
		if dict["seriesAdditionalCategories"] != nil {
			seriesAdditionalCategories = try JSONParser.parse(array: dict["seriesAdditionalCategories"] as! [Any])
		}
		if dict["seasonNumber"] != nil {
			seasonNumber = dict["seasonNumber"] as? String
		}
		if dict["seasonSynopsis"] != nil {
			seasonSynopsis = dict["seasonSynopsis"] as? String
		}
		if dict["seasonTuneInInformation"] != nil {
			seasonTuneInInformation = dict["seasonTuneInInformation"] as? String
		}
		if dict["videoMediaType"] != nil {
			videoMediaType = dict["videoMediaType"] as? String
		}
		if dict["disableEpisodeNumberCustomValidation"] != nil {
			disableEpisodeNumberCustomValidation = dict["disableEpisodeNumberCustomValidation"] as? Bool
		}
		if dict["protocol"] != nil {
			protocol_ = DistributionProtocol(rawValue: (dict["protocol"] as? Int)!)
		}
		if dict["asperaHost"] != nil {
			asperaHost = dict["asperaHost"] as? String
		}
		if dict["asperaLogin"] != nil {
			asperaLogin = dict["asperaLogin"] as? String
		}
		if dict["asperaPass"] != nil {
			asperaPass = dict["asperaPass"] as? String
		}
		if dict["port"] != nil {
			port = dict["port"] as? Int
		}
		if dict["passphrase"] != nil {
			passphrase = dict["passphrase"] as? String
		}
		if dict["asperaPublicKey"] != nil {
			asperaPublicKey = dict["asperaPublicKey"] as? String
		}
		if dict["asperaPrivateKey"] != nil {
			asperaPrivateKey = dict["asperaPrivateKey"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
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
		if(seriesChannel != nil) {
			dict["seriesChannel"] = seriesChannel!
		}
		if(seriesPrimaryCategory != nil) {
			dict["seriesPrimaryCategory"] = seriesPrimaryCategory!
		}
		if(seriesAdditionalCategories != nil) {
			dict["seriesAdditionalCategories"] = seriesAdditionalCategories!.map { value in value.toDictionary() }
		}
		if(seasonNumber != nil) {
			dict["seasonNumber"] = seasonNumber!
		}
		if(seasonSynopsis != nil) {
			dict["seasonSynopsis"] = seasonSynopsis!
		}
		if(seasonTuneInInformation != nil) {
			dict["seasonTuneInInformation"] = seasonTuneInInformation!
		}
		if(videoMediaType != nil) {
			dict["videoMediaType"] = videoMediaType!
		}
		if(disableEpisodeNumberCustomValidation != nil) {
			dict["disableEpisodeNumberCustomValidation"] = disableEpisodeNumberCustomValidation!
		}
		if(protocol_ != nil) {
			dict["protocol"] = protocol_!.rawValue
		}
		if(asperaHost != nil) {
			dict["asperaHost"] = asperaHost!
		}
		if(asperaLogin != nil) {
			dict["asperaLogin"] = asperaLogin!
		}
		if(asperaPass != nil) {
			dict["asperaPass"] = asperaPass!
		}
		if(port != nil) {
			dict["port"] = port!
		}
		if(passphrase != nil) {
			dict["passphrase"] = passphrase!
		}
		if(asperaPublicKey != nil) {
			dict["asperaPublicKey"] = asperaPublicKey!
		}
		if(asperaPrivateKey != nil) {
			dict["asperaPrivateKey"] = asperaPrivateKey!
		}
		return dict
	}
}

