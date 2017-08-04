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

open class Partner: ObjectBase {

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
	public var host: String? = nil
	public var cdnHost: String? = nil
	public var isFirstLogin: Bool? = nil
	public var logoutUrl: String? = nil
	public var partnerParentId: Int? = nil
	public var crmId: String? = nil
	public var referenceId: String? = nil
	public var timeAlignedRenditions: Bool? = nil


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

	}

	public override func toDictionary() -> [String: Any] {
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
		return dict
	}
}

