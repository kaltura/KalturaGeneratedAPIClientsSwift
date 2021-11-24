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

open class Partner: ObjectBase {

	public class PartnerTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var website: BaseTokenizedObject {
			get {
				return self.append("website") 
			}
		}
		
		public var notificationUrl: BaseTokenizedObject {
			get {
				return self.append("notificationUrl") 
			}
		}
		
		public var appearInSearch: BaseTokenizedObject {
			get {
				return self.append("appearInSearch") 
			}
		}
		
		public var createdAt: BaseTokenizedObject {
			get {
				return self.append("createdAt") 
			}
		}
		
		public var adminName: BaseTokenizedObject {
			get {
				return self.append("adminName") 
			}
		}
		
		public var adminEmail: BaseTokenizedObject {
			get {
				return self.append("adminEmail") 
			}
		}
		
		public var description: BaseTokenizedObject {
			get {
				return self.append("description") 
			}
		}
		
		public var commercialUse: BaseTokenizedObject {
			get {
				return self.append("commercialUse") 
			}
		}
		
		public var landingPage: BaseTokenizedObject {
			get {
				return self.append("landingPage") 
			}
		}
		
		public var userLandingPage: BaseTokenizedObject {
			get {
				return self.append("userLandingPage") 
			}
		}
		
		public var contentCategories: BaseTokenizedObject {
			get {
				return self.append("contentCategories") 
			}
		}
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
		
		public var phone: BaseTokenizedObject {
			get {
				return self.append("phone") 
			}
		}
		
		public var describeYourself: BaseTokenizedObject {
			get {
				return self.append("describeYourself") 
			}
		}
		
		public var adultContent: BaseTokenizedObject {
			get {
				return self.append("adultContent") 
			}
		}
		
		public var defConversionProfileType: BaseTokenizedObject {
			get {
				return self.append("defConversionProfileType") 
			}
		}
		
		public var notify: BaseTokenizedObject {
			get {
				return self.append("notify") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var allowQuickEdit: BaseTokenizedObject {
			get {
				return self.append("allowQuickEdit") 
			}
		}
		
		public var mergeEntryLists: BaseTokenizedObject {
			get {
				return self.append("mergeEntryLists") 
			}
		}
		
		public var notificationsConfig: BaseTokenizedObject {
			get {
				return self.append("notificationsConfig") 
			}
		}
		
		public var allowedFromEmailWhiteList: BaseTokenizedObject {
			get {
				return self.append("allowedFromEmailWhiteList") 
			}
		}
		
		public var maxUploadSize: BaseTokenizedObject {
			get {
				return self.append("maxUploadSize") 
			}
		}
		
		public var partnerPackage: BaseTokenizedObject {
			get {
				return self.append("partnerPackage") 
			}
		}
		
		public var secret: BaseTokenizedObject {
			get {
				return self.append("secret") 
			}
		}
		
		public var adminSecret: BaseTokenizedObject {
			get {
				return self.append("adminSecret") 
			}
		}
		
		public var cmsPassword: BaseTokenizedObject {
			get {
				return self.append("cmsPassword") 
			}
		}
		
		public var allowMultiNotification: BaseTokenizedObject {
			get {
				return self.append("allowMultiNotification") 
			}
		}
		
		public var adminLoginUsersQuota: BaseTokenizedObject {
			get {
				return self.append("adminLoginUsersQuota") 
			}
		}
		
		public var adminUserId: BaseTokenizedObject {
			get {
				return self.append("adminUserId") 
			}
		}
		
		public var firstName: BaseTokenizedObject {
			get {
				return self.append("firstName") 
			}
		}
		
		public var lastName: BaseTokenizedObject {
			get {
				return self.append("lastName") 
			}
		}
		
		public var country: BaseTokenizedObject {
			get {
				return self.append("country") 
			}
		}
		
		public var state: BaseTokenizedObject {
			get {
				return self.append("state") 
			}
		}
		
		public var additionalParams: ArrayTokenizedObject<KeyValue.KeyValueTokenizer> {
			get {
				return ArrayTokenizedObject<KeyValue.KeyValueTokenizer>(self.append("additionalParams"))
			} 
		}
		
		public var publishersQuota: BaseTokenizedObject {
			get {
				return self.append("publishersQuota") 
			}
		}
		
		public var partnerGroupType: BaseTokenizedObject {
			get {
				return self.append("partnerGroupType") 
			}
		}
		
		public var defaultEntitlementEnforcement: BaseTokenizedObject {
			get {
				return self.append("defaultEntitlementEnforcement") 
			}
		}
		
		public var defaultDeliveryType: BaseTokenizedObject {
			get {
				return self.append("defaultDeliveryType") 
			}
		}
		
		public var defaultEmbedCodeType: BaseTokenizedObject {
			get {
				return self.append("defaultEmbedCodeType") 
			}
		}
		
		public var deliveryTypes: ArrayTokenizedObject<PlayerDeliveryType.PlayerDeliveryTypeTokenizer> {
			get {
				return ArrayTokenizedObject<PlayerDeliveryType.PlayerDeliveryTypeTokenizer>(self.append("deliveryTypes"))
			} 
		}
		
		public var embedCodeTypes: ArrayTokenizedObject<PlayerEmbedCodeType.PlayerEmbedCodeTypeTokenizer> {
			get {
				return ArrayTokenizedObject<PlayerEmbedCodeType.PlayerEmbedCodeTypeTokenizer>(self.append("embedCodeTypes"))
			} 
		}
		
		public var templatePartnerId: BaseTokenizedObject {
			get {
				return self.append("templatePartnerId") 
			}
		}
		
		public var ignoreSeoLinks: BaseTokenizedObject {
			get {
				return self.append("ignoreSeoLinks") 
			}
		}
		
		public var blockDirectLogin: BaseTokenizedObject {
			get {
				return self.append("blockDirectLogin") 
			}
		}
		
		public var host: BaseTokenizedObject {
			get {
				return self.append("host") 
			}
		}
		
		public var cdnHost: BaseTokenizedObject {
			get {
				return self.append("cdnHost") 
			}
		}
		
		public var isFirstLogin: BaseTokenizedObject {
			get {
				return self.append("isFirstLogin") 
			}
		}
		
		public var logoutUrl: BaseTokenizedObject {
			get {
				return self.append("logoutUrl") 
			}
		}
		
		public var partnerParentId: BaseTokenizedObject {
			get {
				return self.append("partnerParentId") 
			}
		}
		
		public var crmId: BaseTokenizedObject {
			get {
				return self.append("crmId") 
			}
		}
		
		public var referenceId: BaseTokenizedObject {
			get {
				return self.append("referenceId") 
			}
		}
		
		public var timeAlignedRenditions: BaseTokenizedObject {
			get {
				return self.append("timeAlignedRenditions") 
			}
		}
		
		public var publisherEnvironmentType: BaseTokenizedObject {
			get {
				return self.append("publisherEnvironmentType") 
			}
		}
		
		public var ovpEnvironmentUrl: BaseTokenizedObject {
			get {
				return self.append("ovpEnvironmentUrl") 
			}
		}
		
		public var ottEnvironmentUrl: BaseTokenizedObject {
			get {
				return self.append("ottEnvironmentUrl") 
			}
		}
		
		public var eSearchLanguages: ArrayTokenizedObject<ESearchLanguageItem.ESearchLanguageItemTokenizer> {
			get {
				return ArrayTokenizedObject<ESearchLanguageItem.ESearchLanguageItemTokenizer>(self.append("eSearchLanguages"))
			} 
		}
		
		public var authenticationType: BaseTokenizedObject {
			get {
				return self.append("authenticationType") 
			}
		}
		
		public var extendedFreeTrailExpiryReason: BaseTokenizedObject {
			get {
				return self.append("extendedFreeTrailExpiryReason") 
			}
		}
		
		public var extendedFreeTrailExpiryDate: BaseTokenizedObject {
			get {
				return self.append("extendedFreeTrailExpiryDate") 
			}
		}
		
		public var extendedFreeTrail: BaseTokenizedObject {
			get {
				return self.append("extendedFreeTrail") 
			}
		}
		
		public var extendedFreeTrailEndsWarning: BaseTokenizedObject {
			get {
				return self.append("extendedFreeTrailEndsWarning") 
			}
		}
		
		public var eightyPercentWarning: BaseTokenizedObject {
			get {
				return self.append("eightyPercentWarning") 
			}
		}
		
		public var usageLimitWarning: BaseTokenizedObject {
			get {
				return self.append("usageLimitWarning") 
			}
		}
		
		public var lastFreeTrialNotificationDay: BaseTokenizedObject {
			get {
				return self.append("lastFreeTrialNotificationDay") 
			}
		}
		
		public var monitorUsage: BaseTokenizedObject {
			get {
				return self.append("monitorUsage") 
			}
		}
		
		public var passwordStructureValidations: ArrayTokenizedObject<RegexItem.RegexItemTokenizer> {
			get {
				return ArrayTokenizedObject<RegexItem.RegexItemTokenizer>(self.append("passwordStructureValidations"))
			} 
		}
		
		public var passwordStructureValidationsDescription: BaseTokenizedObject {
			get {
				return self.append("passwordStructureValidationsDescription") 
			}
		}
		
		public var passReplaceFreq: BaseTokenizedObject {
			get {
				return self.append("passReplaceFreq") 
			}
		}
		
		public var maxLoginAttempts: BaseTokenizedObject {
			get {
				return self.append("maxLoginAttempts") 
			}
		}
		
		public var loginBlockPeriod: BaseTokenizedObject {
			get {
				return self.append("loginBlockPeriod") 
			}
		}
		
		public var numPrevPassToKeep: BaseTokenizedObject {
			get {
				return self.append("numPrevPassToKeep") 
			}
		}
		
		public var twoFactorAuthenticationMode: BaseTokenizedObject {
			get {
				return self.append("twoFactorAuthenticationMode") 
			}
		}
		
		public var isSelfServe: BaseTokenizedObject {
			get {
				return self.append("isSelfServe") 
			}
		}
	}

	public var id: Int? = nil
	public var name: String? = nil
	public var website: String? = nil
	public var notificationUrl: String? = nil
	public var appearInSearch: Int? = nil
	public var createdAt: Int? = nil
	/**  deprecated - lastName and firstName replaces this field  */
	public var adminName: String? = nil
	public var adminEmail: String? = nil
	public var description: String? = nil
	public var commercialUse: CommercialUseType? = nil
	public var landingPage: String? = nil
	public var userLandingPage: String? = nil
	public var contentCategories: String? = nil
	public var type: PartnerType? = nil
	public var phone: String? = nil
	public var describeYourself: String? = nil
	public var adultContent: Bool? = nil
	public var defConversionProfileType: String? = nil
	public var notify: Int? = nil
	public var status: PartnerStatus? = nil
	public var allowQuickEdit: Int? = nil
	public var mergeEntryLists: Int? = nil
	public var notificationsConfig: String? = nil
	public var allowedFromEmailWhiteList: String? = nil
	public var maxUploadSize: Int? = nil
	public var partnerPackage: Int? = nil
	public var secret: String? = nil
	public var adminSecret: String? = nil
	public var cmsPassword: String? = nil
	public var allowMultiNotification: Int? = nil
	public var adminLoginUsersQuota: Int? = nil
	public var adminUserId: String? = nil
	/**  firstName and lastName replace the old (deprecated) adminName  */
	public var firstName: String? = nil
	/**  lastName and firstName replace the old (deprecated) adminName  */
	public var lastName: String? = nil
	/**  country code (2char) - this field is optional  */
	public var country: String? = nil
	/**  state code (2char) - this field is optional  */
	public var state: String? = nil
	public var additionalParams: Array<KeyValue>? = nil
	public var publishersQuota: Int? = nil
	public var partnerGroupType: PartnerGroupType? = nil
	public var defaultEntitlementEnforcement: Bool? = nil
	public var defaultDeliveryType: String? = nil
	public var defaultEmbedCodeType: String? = nil
	public var deliveryTypes: Array<PlayerDeliveryType>? = nil
	public var embedCodeTypes: Array<PlayerEmbedCodeType>? = nil
	public var templatePartnerId: Int? = nil
	public var ignoreSeoLinks: Bool? = nil
	public var blockDirectLogin: Bool? = nil
	public var host: String? = nil
	public var cdnHost: String? = nil
	public var isFirstLogin: Bool? = nil
	public var logoutUrl: String? = nil
	public var partnerParentId: Int? = nil
	public var crmId: String? = nil
	public var referenceId: String? = nil
	public var timeAlignedRenditions: Bool? = nil
	public var publisherEnvironmentType: Int? = nil
	public var ovpEnvironmentUrl: String? = nil
	public var ottEnvironmentUrl: String? = nil
	public var eSearchLanguages: Array<ESearchLanguageItem>? = nil
	public var authenticationType: PartnerAuthenticationType? = nil
	public var extendedFreeTrailExpiryReason: String? = nil
	/**  Unix timestamp (In seconds)  */
	public var extendedFreeTrailExpiryDate: Int? = nil
	public var extendedFreeTrail: Int? = nil
	public var extendedFreeTrailEndsWarning: Bool? = nil
	public var eightyPercentWarning: Int? = nil
	public var usageLimitWarning: Int? = nil
	public var lastFreeTrialNotificationDay: Int? = nil
	public var monitorUsage: Int? = nil
	public var passwordStructureValidations: Array<RegexItem>? = nil
	public var passwordStructureValidationsDescription: String? = nil
	public var passReplaceFreq: Int? = nil
	public var maxLoginAttempts: Int? = nil
	public var loginBlockPeriod: Int? = nil
	public var numPrevPassToKeep: Int? = nil
	public var twoFactorAuthenticationMode: TwoFactorAuthenticationMode? = nil
	public var isSelfServe: Bool? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(website: String) {
		self.dict["website"] = website
	}
	
	public func setMultiRequestToken(notificationUrl: String) {
		self.dict["notificationUrl"] = notificationUrl
	}
	
	public func setMultiRequestToken(appearInSearch: String) {
		self.dict["appearInSearch"] = appearInSearch
	}
	
	public func setMultiRequestToken(createdAt: String) {
		self.dict["createdAt"] = createdAt
	}
	
	public func setMultiRequestToken(adminName: String) {
		self.dict["adminName"] = adminName
	}
	
	public func setMultiRequestToken(adminEmail: String) {
		self.dict["adminEmail"] = adminEmail
	}
	
	public func setMultiRequestToken(description: String) {
		self.dict["description"] = description
	}
	
	public func setMultiRequestToken(commercialUse: String) {
		self.dict["commercialUse"] = commercialUse
	}
	
	public func setMultiRequestToken(landingPage: String) {
		self.dict["landingPage"] = landingPage
	}
	
	public func setMultiRequestToken(userLandingPage: String) {
		self.dict["userLandingPage"] = userLandingPage
	}
	
	public func setMultiRequestToken(contentCategories: String) {
		self.dict["contentCategories"] = contentCategories
	}
	
	public func setMultiRequestToken(type: String) {
		self.dict["type"] = type
	}
	
	public func setMultiRequestToken(phone: String) {
		self.dict["phone"] = phone
	}
	
	public func setMultiRequestToken(describeYourself: String) {
		self.dict["describeYourself"] = describeYourself
	}
	
	public func setMultiRequestToken(adultContent: String) {
		self.dict["adultContent"] = adultContent
	}
	
	public func setMultiRequestToken(defConversionProfileType: String) {
		self.dict["defConversionProfileType"] = defConversionProfileType
	}
	
	public func setMultiRequestToken(notify: String) {
		self.dict["notify"] = notify
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(allowQuickEdit: String) {
		self.dict["allowQuickEdit"] = allowQuickEdit
	}
	
	public func setMultiRequestToken(mergeEntryLists: String) {
		self.dict["mergeEntryLists"] = mergeEntryLists
	}
	
	public func setMultiRequestToken(notificationsConfig: String) {
		self.dict["notificationsConfig"] = notificationsConfig
	}
	
	public func setMultiRequestToken(allowedFromEmailWhiteList: String) {
		self.dict["allowedFromEmailWhiteList"] = allowedFromEmailWhiteList
	}
	
	public func setMultiRequestToken(maxUploadSize: String) {
		self.dict["maxUploadSize"] = maxUploadSize
	}
	
	public func setMultiRequestToken(partnerPackage: String) {
		self.dict["partnerPackage"] = partnerPackage
	}
	
	public func setMultiRequestToken(secret: String) {
		self.dict["secret"] = secret
	}
	
	public func setMultiRequestToken(adminSecret: String) {
		self.dict["adminSecret"] = adminSecret
	}
	
	public func setMultiRequestToken(cmsPassword: String) {
		self.dict["cmsPassword"] = cmsPassword
	}
	
	public func setMultiRequestToken(allowMultiNotification: String) {
		self.dict["allowMultiNotification"] = allowMultiNotification
	}
	
	public func setMultiRequestToken(adminLoginUsersQuota: String) {
		self.dict["adminLoginUsersQuota"] = adminLoginUsersQuota
	}
	
	public func setMultiRequestToken(adminUserId: String) {
		self.dict["adminUserId"] = adminUserId
	}
	
	public func setMultiRequestToken(firstName: String) {
		self.dict["firstName"] = firstName
	}
	
	public func setMultiRequestToken(lastName: String) {
		self.dict["lastName"] = lastName
	}
	
	public func setMultiRequestToken(country: String) {
		self.dict["country"] = country
	}
	
	public func setMultiRequestToken(state: String) {
		self.dict["state"] = state
	}
	
	public func setMultiRequestToken(publishersQuota: String) {
		self.dict["publishersQuota"] = publishersQuota
	}
	
	public func setMultiRequestToken(partnerGroupType: String) {
		self.dict["partnerGroupType"] = partnerGroupType
	}
	
	public func setMultiRequestToken(defaultEntitlementEnforcement: String) {
		self.dict["defaultEntitlementEnforcement"] = defaultEntitlementEnforcement
	}
	
	public func setMultiRequestToken(defaultDeliveryType: String) {
		self.dict["defaultDeliveryType"] = defaultDeliveryType
	}
	
	public func setMultiRequestToken(defaultEmbedCodeType: String) {
		self.dict["defaultEmbedCodeType"] = defaultEmbedCodeType
	}
	
	public func setMultiRequestToken(templatePartnerId: String) {
		self.dict["templatePartnerId"] = templatePartnerId
	}
	
	public func setMultiRequestToken(ignoreSeoLinks: String) {
		self.dict["ignoreSeoLinks"] = ignoreSeoLinks
	}
	
	public func setMultiRequestToken(blockDirectLogin: String) {
		self.dict["blockDirectLogin"] = blockDirectLogin
	}
	
	public func setMultiRequestToken(host: String) {
		self.dict["host"] = host
	}
	
	public func setMultiRequestToken(cdnHost: String) {
		self.dict["cdnHost"] = cdnHost
	}
	
	public func setMultiRequestToken(isFirstLogin: String) {
		self.dict["isFirstLogin"] = isFirstLogin
	}
	
	public func setMultiRequestToken(logoutUrl: String) {
		self.dict["logoutUrl"] = logoutUrl
	}
	
	public func setMultiRequestToken(partnerParentId: String) {
		self.dict["partnerParentId"] = partnerParentId
	}
	
	public func setMultiRequestToken(crmId: String) {
		self.dict["crmId"] = crmId
	}
	
	public func setMultiRequestToken(referenceId: String) {
		self.dict["referenceId"] = referenceId
	}
	
	public func setMultiRequestToken(timeAlignedRenditions: String) {
		self.dict["timeAlignedRenditions"] = timeAlignedRenditions
	}
	
	public func setMultiRequestToken(publisherEnvironmentType: String) {
		self.dict["publisherEnvironmentType"] = publisherEnvironmentType
	}
	
	public func setMultiRequestToken(ovpEnvironmentUrl: String) {
		self.dict["ovpEnvironmentUrl"] = ovpEnvironmentUrl
	}
	
	public func setMultiRequestToken(ottEnvironmentUrl: String) {
		self.dict["ottEnvironmentUrl"] = ottEnvironmentUrl
	}
	
	public func setMultiRequestToken(authenticationType: String) {
		self.dict["authenticationType"] = authenticationType
	}
	
	public func setMultiRequestToken(extendedFreeTrailExpiryReason: String) {
		self.dict["extendedFreeTrailExpiryReason"] = extendedFreeTrailExpiryReason
	}
	
	public func setMultiRequestToken(extendedFreeTrailExpiryDate: String) {
		self.dict["extendedFreeTrailExpiryDate"] = extendedFreeTrailExpiryDate
	}
	
	public func setMultiRequestToken(extendedFreeTrail: String) {
		self.dict["extendedFreeTrail"] = extendedFreeTrail
	}
	
	public func setMultiRequestToken(extendedFreeTrailEndsWarning: String) {
		self.dict["extendedFreeTrailEndsWarning"] = extendedFreeTrailEndsWarning
	}
	
	public func setMultiRequestToken(eightyPercentWarning: String) {
		self.dict["eightyPercentWarning"] = eightyPercentWarning
	}
	
	public func setMultiRequestToken(usageLimitWarning: String) {
		self.dict["usageLimitWarning"] = usageLimitWarning
	}
	
	public func setMultiRequestToken(lastFreeTrialNotificationDay: String) {
		self.dict["lastFreeTrialNotificationDay"] = lastFreeTrialNotificationDay
	}
	
	public func setMultiRequestToken(monitorUsage: String) {
		self.dict["monitorUsage"] = monitorUsage
	}
	
	public func setMultiRequestToken(passwordStructureValidationsDescription: String) {
		self.dict["passwordStructureValidationsDescription"] = passwordStructureValidationsDescription
	}
	
	public func setMultiRequestToken(passReplaceFreq: String) {
		self.dict["passReplaceFreq"] = passReplaceFreq
	}
	
	public func setMultiRequestToken(maxLoginAttempts: String) {
		self.dict["maxLoginAttempts"] = maxLoginAttempts
	}
	
	public func setMultiRequestToken(loginBlockPeriod: String) {
		self.dict["loginBlockPeriod"] = loginBlockPeriod
	}
	
	public func setMultiRequestToken(numPrevPassToKeep: String) {
		self.dict["numPrevPassToKeep"] = numPrevPassToKeep
	}
	
	public func setMultiRequestToken(twoFactorAuthenticationMode: String) {
		self.dict["twoFactorAuthenticationMode"] = twoFactorAuthenticationMode
	}
	
	public func setMultiRequestToken(isSelfServe: String) {
		self.dict["isSelfServe"] = isSelfServe
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["website"] != nil {
			website = dict["website"] as? String
		}
		if dict["notificationUrl"] != nil {
			notificationUrl = dict["notificationUrl"] as? String
		}
		if dict["appearInSearch"] != nil {
			appearInSearch = dict["appearInSearch"] as? Int
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["adminName"] != nil {
			adminName = dict["adminName"] as? String
		}
		if dict["adminEmail"] != nil {
			adminEmail = dict["adminEmail"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["commercialUse"] != nil {
			commercialUse = CommercialUseType(rawValue: (dict["commercialUse"] as? Int)!)
		}
		if dict["landingPage"] != nil {
			landingPage = dict["landingPage"] as? String
		}
		if dict["userLandingPage"] != nil {
			userLandingPage = dict["userLandingPage"] as? String
		}
		if dict["contentCategories"] != nil {
			contentCategories = dict["contentCategories"] as? String
		}
		if dict["type"] != nil {
			type = PartnerType(rawValue: (dict["type"] as? Int)!)
		}
		if dict["phone"] != nil {
			phone = dict["phone"] as? String
		}
		if dict["describeYourself"] != nil {
			describeYourself = dict["describeYourself"] as? String
		}
		if dict["adultContent"] != nil {
			adultContent = dict["adultContent"] as? Bool
		}
		if dict["defConversionProfileType"] != nil {
			defConversionProfileType = dict["defConversionProfileType"] as? String
		}
		if dict["notify"] != nil {
			notify = dict["notify"] as? Int
		}
		if dict["status"] != nil {
			status = PartnerStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["allowQuickEdit"] != nil {
			allowQuickEdit = dict["allowQuickEdit"] as? Int
		}
		if dict["mergeEntryLists"] != nil {
			mergeEntryLists = dict["mergeEntryLists"] as? Int
		}
		if dict["notificationsConfig"] != nil {
			notificationsConfig = dict["notificationsConfig"] as? String
		}
		if dict["allowedFromEmailWhiteList"] != nil {
			allowedFromEmailWhiteList = dict["allowedFromEmailWhiteList"] as? String
		}
		if dict["maxUploadSize"] != nil {
			maxUploadSize = dict["maxUploadSize"] as? Int
		}
		if dict["partnerPackage"] != nil {
			partnerPackage = dict["partnerPackage"] as? Int
		}
		if dict["secret"] != nil {
			secret = dict["secret"] as? String
		}
		if dict["adminSecret"] != nil {
			adminSecret = dict["adminSecret"] as? String
		}
		if dict["cmsPassword"] != nil {
			cmsPassword = dict["cmsPassword"] as? String
		}
		if dict["allowMultiNotification"] != nil {
			allowMultiNotification = dict["allowMultiNotification"] as? Int
		}
		if dict["adminLoginUsersQuota"] != nil {
			adminLoginUsersQuota = dict["adminLoginUsersQuota"] as? Int
		}
		if dict["adminUserId"] != nil {
			adminUserId = dict["adminUserId"] as? String
		}
		if dict["firstName"] != nil {
			firstName = dict["firstName"] as? String
		}
		if dict["lastName"] != nil {
			lastName = dict["lastName"] as? String
		}
		if dict["country"] != nil {
			country = dict["country"] as? String
		}
		if dict["state"] != nil {
			state = dict["state"] as? String
		}
		if dict["additionalParams"] != nil {
			additionalParams = try JSONParser.parse(array: dict["additionalParams"] as! [Any])
		}
		if dict["publishersQuota"] != nil {
			publishersQuota = dict["publishersQuota"] as? Int
		}
		if dict["partnerGroupType"] != nil {
			partnerGroupType = PartnerGroupType(rawValue: (dict["partnerGroupType"] as? Int)!)
		}
		if dict["defaultEntitlementEnforcement"] != nil {
			defaultEntitlementEnforcement = dict["defaultEntitlementEnforcement"] as? Bool
		}
		if dict["defaultDeliveryType"] != nil {
			defaultDeliveryType = dict["defaultDeliveryType"] as? String
		}
		if dict["defaultEmbedCodeType"] != nil {
			defaultEmbedCodeType = dict["defaultEmbedCodeType"] as? String
		}
		if dict["deliveryTypes"] != nil {
			deliveryTypes = try JSONParser.parse(array: dict["deliveryTypes"] as! [Any])
		}
		if dict["embedCodeTypes"] != nil {
			embedCodeTypes = try JSONParser.parse(array: dict["embedCodeTypes"] as! [Any])
		}
		if dict["templatePartnerId"] != nil {
			templatePartnerId = dict["templatePartnerId"] as? Int
		}
		if dict["ignoreSeoLinks"] != nil {
			ignoreSeoLinks = dict["ignoreSeoLinks"] as? Bool
		}
		if dict["blockDirectLogin"] != nil {
			blockDirectLogin = dict["blockDirectLogin"] as? Bool
		}
		if dict["host"] != nil {
			host = dict["host"] as? String
		}
		if dict["cdnHost"] != nil {
			cdnHost = dict["cdnHost"] as? String
		}
		if dict["isFirstLogin"] != nil {
			isFirstLogin = dict["isFirstLogin"] as? Bool
		}
		if dict["logoutUrl"] != nil {
			logoutUrl = dict["logoutUrl"] as? String
		}
		if dict["partnerParentId"] != nil {
			partnerParentId = dict["partnerParentId"] as? Int
		}
		if dict["crmId"] != nil {
			crmId = dict["crmId"] as? String
		}
		if dict["referenceId"] != nil {
			referenceId = dict["referenceId"] as? String
		}
		if dict["timeAlignedRenditions"] != nil {
			timeAlignedRenditions = dict["timeAlignedRenditions"] as? Bool
		}
		if dict["publisherEnvironmentType"] != nil {
			publisherEnvironmentType = dict["publisherEnvironmentType"] as? Int
		}
		if dict["ovpEnvironmentUrl"] != nil {
			ovpEnvironmentUrl = dict["ovpEnvironmentUrl"] as? String
		}
		if dict["ottEnvironmentUrl"] != nil {
			ottEnvironmentUrl = dict["ottEnvironmentUrl"] as? String
		}
		if dict["eSearchLanguages"] != nil {
			eSearchLanguages = try JSONParser.parse(array: dict["eSearchLanguages"] as! [Any])
		}
		if dict["authenticationType"] != nil {
			authenticationType = PartnerAuthenticationType(rawValue: (dict["authenticationType"] as? Int)!)
		}
		if dict["extendedFreeTrailExpiryReason"] != nil {
			extendedFreeTrailExpiryReason = dict["extendedFreeTrailExpiryReason"] as? String
		}
		if dict["extendedFreeTrailExpiryDate"] != nil {
			extendedFreeTrailExpiryDate = dict["extendedFreeTrailExpiryDate"] as? Int
		}
		if dict["extendedFreeTrail"] != nil {
			extendedFreeTrail = dict["extendedFreeTrail"] as? Int
		}
		if dict["extendedFreeTrailEndsWarning"] != nil {
			extendedFreeTrailEndsWarning = dict["extendedFreeTrailEndsWarning"] as? Bool
		}
		if dict["eightyPercentWarning"] != nil {
			eightyPercentWarning = dict["eightyPercentWarning"] as? Int
		}
		if dict["usageLimitWarning"] != nil {
			usageLimitWarning = dict["usageLimitWarning"] as? Int
		}
		if dict["lastFreeTrialNotificationDay"] != nil {
			lastFreeTrialNotificationDay = dict["lastFreeTrialNotificationDay"] as? Int
		}
		if dict["monitorUsage"] != nil {
			monitorUsage = dict["monitorUsage"] as? Int
		}
		if dict["passwordStructureValidations"] != nil {
			passwordStructureValidations = try JSONParser.parse(array: dict["passwordStructureValidations"] as! [Any])
		}
		if dict["passwordStructureValidationsDescription"] != nil {
			passwordStructureValidationsDescription = dict["passwordStructureValidationsDescription"] as? String
		}
		if dict["passReplaceFreq"] != nil {
			passReplaceFreq = dict["passReplaceFreq"] as? Int
		}
		if dict["maxLoginAttempts"] != nil {
			maxLoginAttempts = dict["maxLoginAttempts"] as? Int
		}
		if dict["loginBlockPeriod"] != nil {
			loginBlockPeriod = dict["loginBlockPeriod"] as? Int
		}
		if dict["numPrevPassToKeep"] != nil {
			numPrevPassToKeep = dict["numPrevPassToKeep"] as? Int
		}
		if dict["twoFactorAuthenticationMode"] != nil {
			twoFactorAuthenticationMode = TwoFactorAuthenticationMode(rawValue: (dict["twoFactorAuthenticationMode"] as? Int)!)
		}
		if dict["isSelfServe"] != nil {
			isSelfServe = dict["isSelfServe"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(website != nil) {
			dict["website"] = website!
		}
		if(notificationUrl != nil) {
			dict["notificationUrl"] = notificationUrl!
		}
		if(appearInSearch != nil) {
			dict["appearInSearch"] = appearInSearch!
		}
		if(adminName != nil) {
			dict["adminName"] = adminName!
		}
		if(adminEmail != nil) {
			dict["adminEmail"] = adminEmail!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(commercialUse != nil) {
			dict["commercialUse"] = commercialUse!.rawValue
		}
		if(landingPage != nil) {
			dict["landingPage"] = landingPage!
		}
		if(userLandingPage != nil) {
			dict["userLandingPage"] = userLandingPage!
		}
		if(contentCategories != nil) {
			dict["contentCategories"] = contentCategories!
		}
		if(type != nil) {
			dict["type"] = type!.rawValue
		}
		if(phone != nil) {
			dict["phone"] = phone!
		}
		if(describeYourself != nil) {
			dict["describeYourself"] = describeYourself!
		}
		if(adultContent != nil) {
			dict["adultContent"] = adultContent!
		}
		if(defConversionProfileType != nil) {
			dict["defConversionProfileType"] = defConversionProfileType!
		}
		if(notify != nil) {
			dict["notify"] = notify!
		}
		if(allowQuickEdit != nil) {
			dict["allowQuickEdit"] = allowQuickEdit!
		}
		if(mergeEntryLists != nil) {
			dict["mergeEntryLists"] = mergeEntryLists!
		}
		if(notificationsConfig != nil) {
			dict["notificationsConfig"] = notificationsConfig!
		}
		if(allowedFromEmailWhiteList != nil) {
			dict["allowedFromEmailWhiteList"] = allowedFromEmailWhiteList!
		}
		if(maxUploadSize != nil) {
			dict["maxUploadSize"] = maxUploadSize!
		}
		if(partnerPackage != nil) {
			dict["partnerPackage"] = partnerPackage!
		}
		if(allowMultiNotification != nil) {
			dict["allowMultiNotification"] = allowMultiNotification!
		}
		if(adminUserId != nil) {
			dict["adminUserId"] = adminUserId!
		}
		if(firstName != nil) {
			dict["firstName"] = firstName!
		}
		if(lastName != nil) {
			dict["lastName"] = lastName!
		}
		if(country != nil) {
			dict["country"] = country!
		}
		if(state != nil) {
			dict["state"] = state!
		}
		if(additionalParams != nil) {
			dict["additionalParams"] = additionalParams!.map { value in value.toDictionary() }
		}
		if(partnerParentId != nil) {
			dict["partnerParentId"] = partnerParentId!
		}
		if(referenceId != nil) {
			dict["referenceId"] = referenceId!
		}
		if(eSearchLanguages != nil) {
			dict["eSearchLanguages"] = eSearchLanguages!.map { value in value.toDictionary() }
		}
		if(passwordStructureValidations != nil) {
			dict["passwordStructureValidations"] = passwordStructureValidations!.map { value in value.toDictionary() }
		}
		if(passwordStructureValidationsDescription != nil) {
			dict["passwordStructureValidationsDescription"] = passwordStructureValidationsDescription!
		}
		if(passReplaceFreq != nil) {
			dict["passReplaceFreq"] = passReplaceFreq!
		}
		if(maxLoginAttempts != nil) {
			dict["maxLoginAttempts"] = maxLoginAttempts!
		}
		if(loginBlockPeriod != nil) {
			dict["loginBlockPeriod"] = loginBlockPeriod!
		}
		if(numPrevPassToKeep != nil) {
			dict["numPrevPassToKeep"] = numPrevPassToKeep!
		}
		if(isSelfServe != nil) {
			dict["isSelfServe"] = isSelfServe!
		}
		return dict
	}
}

