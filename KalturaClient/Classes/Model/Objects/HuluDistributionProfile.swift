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

open class HuluDistributionProfile: ConfigurableDistributionProfile {

	public class HuluDistributionProfileTokenizer: ConfigurableDistributionProfile.ConfigurableDistributionProfileTokenizer {
		
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
		
		public var seriesChannel: BaseTokenizedObject {
			get {
				return self.append("seriesChannel") 
			}
		}
		
		public var seriesPrimaryCategory: BaseTokenizedObject {
			get {
				return self.append("seriesPrimaryCategory") 
			}
		}
		
		public var seriesAdditionalCategories: ArrayTokenizedObject<StringHolder.StringHolderTokenizer> {
			get {
				return ArrayTokenizedObject<StringHolder.StringHolderTokenizer>(self.append("seriesAdditionalCategories"))
			} 
		}
		
		public var seasonNumber: BaseTokenizedObject {
			get {
				return self.append("seasonNumber") 
			}
		}
		
		public var seasonSynopsis: BaseTokenizedObject {
			get {
				return self.append("seasonSynopsis") 
			}
		}
		
		public var seasonTuneInInformation: BaseTokenizedObject {
			get {
				return self.append("seasonTuneInInformation") 
			}
		}
		
		public var videoMediaType: BaseTokenizedObject {
			get {
				return self.append("videoMediaType") 
			}
		}
		
		public var disableEpisodeNumberCustomValidation: BaseTokenizedObject {
			get {
				return self.append("disableEpisodeNumberCustomValidation") 
			}
		}
		
		public var protocol_: BaseTokenizedObject {
			get {
				return self.append("protocol_") 
			}
		}
		
		public var asperaHost: BaseTokenizedObject {
			get {
				return self.append("asperaHost") 
			}
		}
		
		public var asperaLogin: BaseTokenizedObject {
			get {
				return self.append("asperaLogin") 
			}
		}
		
		public var asperaPass: BaseTokenizedObject {
			get {
				return self.append("asperaPass") 
			}
		}
		
		public var port: BaseTokenizedObject {
			get {
				return self.append("port") 
			}
		}
		
		public var passphrase: BaseTokenizedObject {
			get {
				return self.append("passphrase") 
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
	}

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


	public func setMultiRequestToken(sftpHost: String) {
		self.dict["sftpHost"] = sftpHost
	}
	
	public func setMultiRequestToken(sftpLogin: String) {
		self.dict["sftpLogin"] = sftpLogin
	}
	
	public func setMultiRequestToken(sftpPass: String) {
		self.dict["sftpPass"] = sftpPass
	}
	
	public func setMultiRequestToken(seriesChannel: String) {
		self.dict["seriesChannel"] = seriesChannel
	}
	
	public func setMultiRequestToken(seriesPrimaryCategory: String) {
		self.dict["seriesPrimaryCategory"] = seriesPrimaryCategory
	}
	
	public func setMultiRequestToken(seasonNumber: String) {
		self.dict["seasonNumber"] = seasonNumber
	}
	
	public func setMultiRequestToken(seasonSynopsis: String) {
		self.dict["seasonSynopsis"] = seasonSynopsis
	}
	
	public func setMultiRequestToken(seasonTuneInInformation: String) {
		self.dict["seasonTuneInInformation"] = seasonTuneInInformation
	}
	
	public func setMultiRequestToken(videoMediaType: String) {
		self.dict["videoMediaType"] = videoMediaType
	}
	
	public func setMultiRequestToken(disableEpisodeNumberCustomValidation: String) {
		self.dict["disableEpisodeNumberCustomValidation"] = disableEpisodeNumberCustomValidation
	}
	
	public func setMultiRequestToken(protocol_: String) {
		self.dict["protocol"] = protocol_
	}
	
	public func setMultiRequestToken(asperaHost: String) {
		self.dict["asperaHost"] = asperaHost
	}
	
	public func setMultiRequestToken(asperaLogin: String) {
		self.dict["asperaLogin"] = asperaLogin
	}
	
	public func setMultiRequestToken(asperaPass: String) {
		self.dict["asperaPass"] = asperaPass
	}
	
	public func setMultiRequestToken(port: String) {
		self.dict["port"] = port
	}
	
	public func setMultiRequestToken(passphrase: String) {
		self.dict["passphrase"] = passphrase
	}
	
	public func setMultiRequestToken(asperaPublicKey: String) {
		self.dict["asperaPublicKey"] = asperaPublicKey
	}
	
	public func setMultiRequestToken(asperaPrivateKey: String) {
		self.dict["asperaPrivateKey"] = asperaPrivateKey
	}
	
	public override func populate(_ dict: [String: Any]) throws {
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

