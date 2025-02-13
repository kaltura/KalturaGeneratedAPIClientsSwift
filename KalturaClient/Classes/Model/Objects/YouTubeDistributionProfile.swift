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

open class YouTubeDistributionProfile: ConfigurableDistributionProfile {

	public class YouTubeDistributionProfileTokenizer: ConfigurableDistributionProfile.ConfigurableDistributionProfileTokenizer {
		
		public var feedSpecVersion: BaseTokenizedObject {
			get {
				return self.append("feedSpecVersion") 
			}
		}
		
		public var username: BaseTokenizedObject {
			get {
				return self.append("username") 
			}
		}
		
		public var notificationEmail: BaseTokenizedObject {
			get {
				return self.append("notificationEmail") 
			}
		}
		
		public var sftpHost: BaseTokenizedObject {
			get {
				return self.append("sftpHost") 
			}
		}
		
		public var sftpPort: BaseTokenizedObject {
			get {
				return self.append("sftpPort") 
			}
		}
		
		public var sftpLogin: BaseTokenizedObject {
			get {
				return self.append("sftpLogin") 
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
		
		public var sftpBaseDir: BaseTokenizedObject {
			get {
				return self.append("sftpBaseDir") 
			}
		}
		
		public var ownerName: BaseTokenizedObject {
			get {
				return self.append("ownerName") 
			}
		}
		
		public var defaultCategory: BaseTokenizedObject {
			get {
				return self.append("defaultCategory") 
			}
		}
		
		public var allowComments: BaseTokenizedObject {
			get {
				return self.append("allowComments") 
			}
		}
		
		public var allowEmbedding: BaseTokenizedObject {
			get {
				return self.append("allowEmbedding") 
			}
		}
		
		public var allowRatings: BaseTokenizedObject {
			get {
				return self.append("allowRatings") 
			}
		}
		
		public var allowResponses: BaseTokenizedObject {
			get {
				return self.append("allowResponses") 
			}
		}
		
		public var commercialPolicy: BaseTokenizedObject {
			get {
				return self.append("commercialPolicy") 
			}
		}
		
		public var ugcPolicy: BaseTokenizedObject {
			get {
				return self.append("ugcPolicy") 
			}
		}
		
		public var target: BaseTokenizedObject {
			get {
				return self.append("target") 
			}
		}
		
		public var adServerPartnerId: BaseTokenizedObject {
			get {
				return self.append("adServerPartnerId") 
			}
		}
		
		public var enableAdServer: BaseTokenizedObject {
			get {
				return self.append("enableAdServer") 
			}
		}
		
		public var allowPreRollAds: BaseTokenizedObject {
			get {
				return self.append("allowPreRollAds") 
			}
		}
		
		public var allowPostRollAds: BaseTokenizedObject {
			get {
				return self.append("allowPostRollAds") 
			}
		}
		
		public var strict: BaseTokenizedObject {
			get {
				return self.append("strict") 
			}
		}
		
		public var overrideManualEdits: BaseTokenizedObject {
			get {
				return self.append("overrideManualEdits") 
			}
		}
		
		public var urgentReference: BaseTokenizedObject {
			get {
				return self.append("urgentReference") 
			}
		}
		
		public var allowSyndication: BaseTokenizedObject {
			get {
				return self.append("allowSyndication") 
			}
		}
		
		public var hideViewCount: BaseTokenizedObject {
			get {
				return self.append("hideViewCount") 
			}
		}
		
		public var allowAdsenseForVideo: BaseTokenizedObject {
			get {
				return self.append("allowAdsenseForVideo") 
			}
		}
		
		public var allowInvideo: BaseTokenizedObject {
			get {
				return self.append("allowInvideo") 
			}
		}
		
		public var allowMidRollAds: BaseTokenizedObject {
			get {
				return self.append("allowMidRollAds") 
			}
		}
		
		public var instreamStandard: BaseTokenizedObject {
			get {
				return self.append("instreamStandard") 
			}
		}
		
		public var instreamTrueview: BaseTokenizedObject {
			get {
				return self.append("instreamTrueview") 
			}
		}
		
		public var claimType: BaseTokenizedObject {
			get {
				return self.append("claimType") 
			}
		}
		
		public var blockOutsideOwnership: BaseTokenizedObject {
			get {
				return self.append("blockOutsideOwnership") 
			}
		}
		
		public var captionAutosync: BaseTokenizedObject {
			get {
				return self.append("captionAutosync") 
			}
		}
		
		public var deleteReference: BaseTokenizedObject {
			get {
				return self.append("deleteReference") 
			}
		}
		
		public var releaseClaims: BaseTokenizedObject {
			get {
				return self.append("releaseClaims") 
			}
		}
		
		public var apiAuthorizeUrl: BaseTokenizedObject {
			get {
				return self.append("apiAuthorizeUrl") 
			}
		}
		
		public var privacyStatus: BaseTokenizedObject {
			get {
				return self.append("privacyStatus") 
			}
		}
		
		public var enableContentId: BaseTokenizedObject {
			get {
				return self.append("enableContentId") 
			}
		}
		
		public var thirdPartyAds: BaseTokenizedObject {
			get {
				return self.append("thirdPartyAds") 
			}
		}
		
		public var productListingAds: BaseTokenizedObject {
			get {
				return self.append("productListingAds") 
			}
		}
		
		public var domainWhitelist: BaseTokenizedObject {
			get {
				return self.append("domainWhitelist") 
			}
		}
		
		public var notifySubscribers: BaseTokenizedObject {
			get {
				return self.append("notifySubscribers") 
			}
		}
	}

	public var feedSpecVersion: YouTubeDistributionFeedSpecVersion? = nil
	public var username: String? = nil
	public var notificationEmail: String? = nil
	public var sftpHost: String? = nil
	public var sftpPort: Int? = nil
	public var sftpLogin: String? = nil
	public var sftpPublicKey: String? = nil
	public var sftpPrivateKey: String? = nil
	public var sftpBaseDir: String? = nil
	public var ownerName: String? = nil
	public var defaultCategory: String? = nil
	public var allowComments: String? = nil
	public var allowEmbedding: String? = nil
	public var allowRatings: String? = nil
	public var allowResponses: String? = nil
	public var commercialPolicy: String? = nil
	public var ugcPolicy: String? = nil
	public var target: String? = nil
	public var adServerPartnerId: String? = nil
	public var enableAdServer: Bool? = nil
	public var allowPreRollAds: Bool? = nil
	public var allowPostRollAds: Bool? = nil
	public var strict: String? = nil
	public var overrideManualEdits: String? = nil
	public var urgentReference: String? = nil
	public var allowSyndication: String? = nil
	public var hideViewCount: String? = nil
	public var allowAdsenseForVideo: String? = nil
	public var allowInvideo: String? = nil
	public var allowMidRollAds: Bool? = nil
	public var instreamStandard: String? = nil
	public var instreamTrueview: String? = nil
	public var claimType: String? = nil
	public var blockOutsideOwnership: String? = nil
	public var captionAutosync: String? = nil
	public var deleteReference: Bool? = nil
	public var releaseClaims: Bool? = nil
	public var apiAuthorizeUrl: String? = nil
	public var privacyStatus: String? = nil
	public var enableContentId: String? = nil
	public var thirdPartyAds: String? = nil
	public var productListingAds: String? = nil
	public var domainWhitelist: String? = nil
	public var notifySubscribers: String? = nil


	public func setMultiRequestToken(feedSpecVersion: String) {
		self.dict["feedSpecVersion"] = feedSpecVersion
	}
	
	public func setMultiRequestToken(username: String) {
		self.dict["username"] = username
	}
	
	public func setMultiRequestToken(notificationEmail: String) {
		self.dict["notificationEmail"] = notificationEmail
	}
	
	public func setMultiRequestToken(sftpHost: String) {
		self.dict["sftpHost"] = sftpHost
	}
	
	public func setMultiRequestToken(sftpPort: String) {
		self.dict["sftpPort"] = sftpPort
	}
	
	public func setMultiRequestToken(sftpLogin: String) {
		self.dict["sftpLogin"] = sftpLogin
	}
	
	public func setMultiRequestToken(sftpPublicKey: String) {
		self.dict["sftpPublicKey"] = sftpPublicKey
	}
	
	public func setMultiRequestToken(sftpPrivateKey: String) {
		self.dict["sftpPrivateKey"] = sftpPrivateKey
	}
	
	public func setMultiRequestToken(sftpBaseDir: String) {
		self.dict["sftpBaseDir"] = sftpBaseDir
	}
	
	public func setMultiRequestToken(ownerName: String) {
		self.dict["ownerName"] = ownerName
	}
	
	public func setMultiRequestToken(defaultCategory: String) {
		self.dict["defaultCategory"] = defaultCategory
	}
	
	public func setMultiRequestToken(allowComments: String) {
		self.dict["allowComments"] = allowComments
	}
	
	public func setMultiRequestToken(allowEmbedding: String) {
		self.dict["allowEmbedding"] = allowEmbedding
	}
	
	public func setMultiRequestToken(allowRatings: String) {
		self.dict["allowRatings"] = allowRatings
	}
	
	public func setMultiRequestToken(allowResponses: String) {
		self.dict["allowResponses"] = allowResponses
	}
	
	public func setMultiRequestToken(commercialPolicy: String) {
		self.dict["commercialPolicy"] = commercialPolicy
	}
	
	public func setMultiRequestToken(ugcPolicy: String) {
		self.dict["ugcPolicy"] = ugcPolicy
	}
	
	public func setMultiRequestToken(target: String) {
		self.dict["target"] = target
	}
	
	public func setMultiRequestToken(adServerPartnerId: String) {
		self.dict["adServerPartnerId"] = adServerPartnerId
	}
	
	public func setMultiRequestToken(enableAdServer: String) {
		self.dict["enableAdServer"] = enableAdServer
	}
	
	public func setMultiRequestToken(allowPreRollAds: String) {
		self.dict["allowPreRollAds"] = allowPreRollAds
	}
	
	public func setMultiRequestToken(allowPostRollAds: String) {
		self.dict["allowPostRollAds"] = allowPostRollAds
	}
	
	public func setMultiRequestToken(strict: String) {
		self.dict["strict"] = strict
	}
	
	public func setMultiRequestToken(overrideManualEdits: String) {
		self.dict["overrideManualEdits"] = overrideManualEdits
	}
	
	public func setMultiRequestToken(urgentReference: String) {
		self.dict["urgentReference"] = urgentReference
	}
	
	public func setMultiRequestToken(allowSyndication: String) {
		self.dict["allowSyndication"] = allowSyndication
	}
	
	public func setMultiRequestToken(hideViewCount: String) {
		self.dict["hideViewCount"] = hideViewCount
	}
	
	public func setMultiRequestToken(allowAdsenseForVideo: String) {
		self.dict["allowAdsenseForVideo"] = allowAdsenseForVideo
	}
	
	public func setMultiRequestToken(allowInvideo: String) {
		self.dict["allowInvideo"] = allowInvideo
	}
	
	public func setMultiRequestToken(allowMidRollAds: String) {
		self.dict["allowMidRollAds"] = allowMidRollAds
	}
	
	public func setMultiRequestToken(instreamStandard: String) {
		self.dict["instreamStandard"] = instreamStandard
	}
	
	public func setMultiRequestToken(instreamTrueview: String) {
		self.dict["instreamTrueview"] = instreamTrueview
	}
	
	public func setMultiRequestToken(claimType: String) {
		self.dict["claimType"] = claimType
	}
	
	public func setMultiRequestToken(blockOutsideOwnership: String) {
		self.dict["blockOutsideOwnership"] = blockOutsideOwnership
	}
	
	public func setMultiRequestToken(captionAutosync: String) {
		self.dict["captionAutosync"] = captionAutosync
	}
	
	public func setMultiRequestToken(deleteReference: String) {
		self.dict["deleteReference"] = deleteReference
	}
	
	public func setMultiRequestToken(releaseClaims: String) {
		self.dict["releaseClaims"] = releaseClaims
	}
	
	public func setMultiRequestToken(apiAuthorizeUrl: String) {
		self.dict["apiAuthorizeUrl"] = apiAuthorizeUrl
	}
	
	public func setMultiRequestToken(privacyStatus: String) {
		self.dict["privacyStatus"] = privacyStatus
	}
	
	public func setMultiRequestToken(enableContentId: String) {
		self.dict["enableContentId"] = enableContentId
	}
	
	public func setMultiRequestToken(thirdPartyAds: String) {
		self.dict["thirdPartyAds"] = thirdPartyAds
	}
	
	public func setMultiRequestToken(productListingAds: String) {
		self.dict["productListingAds"] = productListingAds
	}
	
	public func setMultiRequestToken(domainWhitelist: String) {
		self.dict["domainWhitelist"] = domainWhitelist
	}
	
	public func setMultiRequestToken(notifySubscribers: String) {
		self.dict["notifySubscribers"] = notifySubscribers
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["feedSpecVersion"] != nil {
			feedSpecVersion = YouTubeDistributionFeedSpecVersion(rawValue: "\(dict["feedSpecVersion"]!)")
		}
		if dict["username"] != nil {
			username = dict["username"] as? String
		}
		if dict["notificationEmail"] != nil {
			notificationEmail = dict["notificationEmail"] as? String
		}
		if dict["sftpHost"] != nil {
			sftpHost = dict["sftpHost"] as? String
		}
		if dict["sftpPort"] != nil {
			sftpPort = dict["sftpPort"] as? Int
		}
		if dict["sftpLogin"] != nil {
			sftpLogin = dict["sftpLogin"] as? String
		}
		if dict["sftpPublicKey"] != nil {
			sftpPublicKey = dict["sftpPublicKey"] as? String
		}
		if dict["sftpPrivateKey"] != nil {
			sftpPrivateKey = dict["sftpPrivateKey"] as? String
		}
		if dict["sftpBaseDir"] != nil {
			sftpBaseDir = dict["sftpBaseDir"] as? String
		}
		if dict["ownerName"] != nil {
			ownerName = dict["ownerName"] as? String
		}
		if dict["defaultCategory"] != nil {
			defaultCategory = dict["defaultCategory"] as? String
		}
		if dict["allowComments"] != nil {
			allowComments = dict["allowComments"] as? String
		}
		if dict["allowEmbedding"] != nil {
			allowEmbedding = dict["allowEmbedding"] as? String
		}
		if dict["allowRatings"] != nil {
			allowRatings = dict["allowRatings"] as? String
		}
		if dict["allowResponses"] != nil {
			allowResponses = dict["allowResponses"] as? String
		}
		if dict["commercialPolicy"] != nil {
			commercialPolicy = dict["commercialPolicy"] as? String
		}
		if dict["ugcPolicy"] != nil {
			ugcPolicy = dict["ugcPolicy"] as? String
		}
		if dict["target"] != nil {
			target = dict["target"] as? String
		}
		if dict["adServerPartnerId"] != nil {
			adServerPartnerId = dict["adServerPartnerId"] as? String
		}
		if dict["enableAdServer"] != nil {
			enableAdServer = dict["enableAdServer"] as? Bool
		}
		if dict["allowPreRollAds"] != nil {
			allowPreRollAds = dict["allowPreRollAds"] as? Bool
		}
		if dict["allowPostRollAds"] != nil {
			allowPostRollAds = dict["allowPostRollAds"] as? Bool
		}
		if dict["strict"] != nil {
			strict = dict["strict"] as? String
		}
		if dict["overrideManualEdits"] != nil {
			overrideManualEdits = dict["overrideManualEdits"] as? String
		}
		if dict["urgentReference"] != nil {
			urgentReference = dict["urgentReference"] as? String
		}
		if dict["allowSyndication"] != nil {
			allowSyndication = dict["allowSyndication"] as? String
		}
		if dict["hideViewCount"] != nil {
			hideViewCount = dict["hideViewCount"] as? String
		}
		if dict["allowAdsenseForVideo"] != nil {
			allowAdsenseForVideo = dict["allowAdsenseForVideo"] as? String
		}
		if dict["allowInvideo"] != nil {
			allowInvideo = dict["allowInvideo"] as? String
		}
		if dict["allowMidRollAds"] != nil {
			allowMidRollAds = dict["allowMidRollAds"] as? Bool
		}
		if dict["instreamStandard"] != nil {
			instreamStandard = dict["instreamStandard"] as? String
		}
		if dict["instreamTrueview"] != nil {
			instreamTrueview = dict["instreamTrueview"] as? String
		}
		if dict["claimType"] != nil {
			claimType = dict["claimType"] as? String
		}
		if dict["blockOutsideOwnership"] != nil {
			blockOutsideOwnership = dict["blockOutsideOwnership"] as? String
		}
		if dict["captionAutosync"] != nil {
			captionAutosync = dict["captionAutosync"] as? String
		}
		if dict["deleteReference"] != nil {
			deleteReference = dict["deleteReference"] as? Bool
		}
		if dict["releaseClaims"] != nil {
			releaseClaims = dict["releaseClaims"] as? Bool
		}
		if dict["apiAuthorizeUrl"] != nil {
			apiAuthorizeUrl = dict["apiAuthorizeUrl"] as? String
		}
		if dict["privacyStatus"] != nil {
			privacyStatus = dict["privacyStatus"] as? String
		}
		if dict["enableContentId"] != nil {
			enableContentId = dict["enableContentId"] as? String
		}
		if dict["thirdPartyAds"] != nil {
			thirdPartyAds = dict["thirdPartyAds"] as? String
		}
		if dict["productListingAds"] != nil {
			productListingAds = dict["productListingAds"] as? String
		}
		if dict["domainWhitelist"] != nil {
			domainWhitelist = dict["domainWhitelist"] as? String
		}
		if dict["notifySubscribers"] != nil {
			notifySubscribers = dict["notifySubscribers"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(feedSpecVersion != nil) {
			dict["feedSpecVersion"] = feedSpecVersion!.rawValue
		}
		if(username != nil) {
			dict["username"] = username!
		}
		if(notificationEmail != nil) {
			dict["notificationEmail"] = notificationEmail!
		}
		if(sftpHost != nil) {
			dict["sftpHost"] = sftpHost!
		}
		if(sftpPort != nil) {
			dict["sftpPort"] = sftpPort!
		}
		if(sftpLogin != nil) {
			dict["sftpLogin"] = sftpLogin!
		}
		if(sftpPublicKey != nil) {
			dict["sftpPublicKey"] = sftpPublicKey!
		}
		if(sftpPrivateKey != nil) {
			dict["sftpPrivateKey"] = sftpPrivateKey!
		}
		if(sftpBaseDir != nil) {
			dict["sftpBaseDir"] = sftpBaseDir!
		}
		if(ownerName != nil) {
			dict["ownerName"] = ownerName!
		}
		if(defaultCategory != nil) {
			dict["defaultCategory"] = defaultCategory!
		}
		if(allowComments != nil) {
			dict["allowComments"] = allowComments!
		}
		if(allowEmbedding != nil) {
			dict["allowEmbedding"] = allowEmbedding!
		}
		if(allowRatings != nil) {
			dict["allowRatings"] = allowRatings!
		}
		if(allowResponses != nil) {
			dict["allowResponses"] = allowResponses!
		}
		if(commercialPolicy != nil) {
			dict["commercialPolicy"] = commercialPolicy!
		}
		if(ugcPolicy != nil) {
			dict["ugcPolicy"] = ugcPolicy!
		}
		if(target != nil) {
			dict["target"] = target!
		}
		if(adServerPartnerId != nil) {
			dict["adServerPartnerId"] = adServerPartnerId!
		}
		if(enableAdServer != nil) {
			dict["enableAdServer"] = enableAdServer!
		}
		if(allowPreRollAds != nil) {
			dict["allowPreRollAds"] = allowPreRollAds!
		}
		if(allowPostRollAds != nil) {
			dict["allowPostRollAds"] = allowPostRollAds!
		}
		if(strict != nil) {
			dict["strict"] = strict!
		}
		if(overrideManualEdits != nil) {
			dict["overrideManualEdits"] = overrideManualEdits!
		}
		if(urgentReference != nil) {
			dict["urgentReference"] = urgentReference!
		}
		if(allowSyndication != nil) {
			dict["allowSyndication"] = allowSyndication!
		}
		if(hideViewCount != nil) {
			dict["hideViewCount"] = hideViewCount!
		}
		if(allowAdsenseForVideo != nil) {
			dict["allowAdsenseForVideo"] = allowAdsenseForVideo!
		}
		if(allowInvideo != nil) {
			dict["allowInvideo"] = allowInvideo!
		}
		if(allowMidRollAds != nil) {
			dict["allowMidRollAds"] = allowMidRollAds!
		}
		if(instreamStandard != nil) {
			dict["instreamStandard"] = instreamStandard!
		}
		if(instreamTrueview != nil) {
			dict["instreamTrueview"] = instreamTrueview!
		}
		if(claimType != nil) {
			dict["claimType"] = claimType!
		}
		if(blockOutsideOwnership != nil) {
			dict["blockOutsideOwnership"] = blockOutsideOwnership!
		}
		if(captionAutosync != nil) {
			dict["captionAutosync"] = captionAutosync!
		}
		if(deleteReference != nil) {
			dict["deleteReference"] = deleteReference!
		}
		if(releaseClaims != nil) {
			dict["releaseClaims"] = releaseClaims!
		}
		if(apiAuthorizeUrl != nil) {
			dict["apiAuthorizeUrl"] = apiAuthorizeUrl!
		}
		if(privacyStatus != nil) {
			dict["privacyStatus"] = privacyStatus!
		}
		if(enableContentId != nil) {
			dict["enableContentId"] = enableContentId!
		}
		if(thirdPartyAds != nil) {
			dict["thirdPartyAds"] = thirdPartyAds!
		}
		if(productListingAds != nil) {
			dict["productListingAds"] = productListingAds!
		}
		if(domainWhitelist != nil) {
			dict["domainWhitelist"] = domainWhitelist!
		}
		if(notifySubscribers != nil) {
			dict["notifySubscribers"] = notifySubscribers!
		}
		return dict
	}
}

