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

open class AuditTrailBaseFilter: RelatedFilter {

	public var idEqual: Int? = nil
	public var createdAtGreaterThanOrEqual: Int? = nil
	public var createdAtLessThanOrEqual: Int? = nil
	public var parsedAtGreaterThanOrEqual: Int? = nil
	public var parsedAtLessThanOrEqual: Int? = nil
	public var statusEqual: AuditTrailStatus? = nil
	public var statusIn: String? = nil
	public var auditObjectTypeEqual: AuditTrailObjectType? = nil
	public var auditObjectTypeIn: String? = nil
	public var objectIdEqual: String? = nil
	public var objectIdIn: String? = nil
	public var relatedObjectIdEqual: String? = nil
	public var relatedObjectIdIn: String? = nil
	public var relatedObjectTypeEqual: AuditTrailObjectType? = nil
	public var relatedObjectTypeIn: String? = nil
	public var entryIdEqual: String? = nil
	public var entryIdIn: String? = nil
	public var masterPartnerIdEqual: Int? = nil
	public var masterPartnerIdIn: String? = nil
	public var partnerIdEqual: Int? = nil
	public var partnerIdIn: String? = nil
	public var requestIdEqual: String? = nil
	public var requestIdIn: String? = nil
	public var userIdEqual: String? = nil
	public var userIdIn: String? = nil
	public var actionEqual: AuditTrailAction? = nil
	public var actionIn: String? = nil
	public var ksEqual: String? = nil
	public var contextEqual: AuditTrailContext? = nil
	public var contextIn: String? = nil
	public var entryPointEqual: String? = nil
	public var entryPointIn: String? = nil
	public var serverNameEqual: String? = nil
	public var serverNameIn: String? = nil
	public var ipAddressEqual: String? = nil
	public var ipAddressIn: String? = nil
	public var clientTagEqual: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["idEqual"] != nil {
			idEqual = dict["idEqual"] as? Int
		}
		if dict["createdAtGreaterThanOrEqual"] != nil {
			createdAtGreaterThanOrEqual = dict["createdAtGreaterThanOrEqual"] as? Int
		}
		if dict["createdAtLessThanOrEqual"] != nil {
			createdAtLessThanOrEqual = dict["createdAtLessThanOrEqual"] as? Int
		}
		if dict["parsedAtGreaterThanOrEqual"] != nil {
			parsedAtGreaterThanOrEqual = dict["parsedAtGreaterThanOrEqual"] as? Int
		}
		if dict["parsedAtLessThanOrEqual"] != nil {
			parsedAtLessThanOrEqual = dict["parsedAtLessThanOrEqual"] as? Int
		}
		if dict["statusEqual"] != nil {
			statusEqual = AuditTrailStatus(rawValue: (dict["statusEqual"] as? Int)!)
		}
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
		}
		if dict["auditObjectTypeEqual"] != nil {
			auditObjectTypeEqual = AuditTrailObjectType(rawValue: "\(dict["auditObjectTypeEqual"]!)")
		}
		if dict["auditObjectTypeIn"] != nil {
			auditObjectTypeIn = dict["auditObjectTypeIn"] as? String
		}
		if dict["objectIdEqual"] != nil {
			objectIdEqual = dict["objectIdEqual"] as? String
		}
		if dict["objectIdIn"] != nil {
			objectIdIn = dict["objectIdIn"] as? String
		}
		if dict["relatedObjectIdEqual"] != nil {
			relatedObjectIdEqual = dict["relatedObjectIdEqual"] as? String
		}
		if dict["relatedObjectIdIn"] != nil {
			relatedObjectIdIn = dict["relatedObjectIdIn"] as? String
		}
		if dict["relatedObjectTypeEqual"] != nil {
			relatedObjectTypeEqual = AuditTrailObjectType(rawValue: "\(dict["relatedObjectTypeEqual"]!)")
		}
		if dict["relatedObjectTypeIn"] != nil {
			relatedObjectTypeIn = dict["relatedObjectTypeIn"] as? String
		}
		if dict["entryIdEqual"] != nil {
			entryIdEqual = dict["entryIdEqual"] as? String
		}
		if dict["entryIdIn"] != nil {
			entryIdIn = dict["entryIdIn"] as? String
		}
		if dict["masterPartnerIdEqual"] != nil {
			masterPartnerIdEqual = dict["masterPartnerIdEqual"] as? Int
		}
		if dict["masterPartnerIdIn"] != nil {
			masterPartnerIdIn = dict["masterPartnerIdIn"] as? String
		}
		if dict["partnerIdEqual"] != nil {
			partnerIdEqual = dict["partnerIdEqual"] as? Int
		}
		if dict["partnerIdIn"] != nil {
			partnerIdIn = dict["partnerIdIn"] as? String
		}
		if dict["requestIdEqual"] != nil {
			requestIdEqual = dict["requestIdEqual"] as? String
		}
		if dict["requestIdIn"] != nil {
			requestIdIn = dict["requestIdIn"] as? String
		}
		if dict["userIdEqual"] != nil {
			userIdEqual = dict["userIdEqual"] as? String
		}
		if dict["userIdIn"] != nil {
			userIdIn = dict["userIdIn"] as? String
		}
		if dict["actionEqual"] != nil {
			actionEqual = AuditTrailAction(rawValue: "\(dict["actionEqual"]!)")
		}
		if dict["actionIn"] != nil {
			actionIn = dict["actionIn"] as? String
		}
		if dict["ksEqual"] != nil {
			ksEqual = dict["ksEqual"] as? String
		}
		if dict["contextEqual"] != nil {
			contextEqual = AuditTrailContext(rawValue: (dict["contextEqual"] as? Int)!)
		}
		if dict["contextIn"] != nil {
			contextIn = dict["contextIn"] as? String
		}
		if dict["entryPointEqual"] != nil {
			entryPointEqual = dict["entryPointEqual"] as? String
		}
		if dict["entryPointIn"] != nil {
			entryPointIn = dict["entryPointIn"] as? String
		}
		if dict["serverNameEqual"] != nil {
			serverNameEqual = dict["serverNameEqual"] as? String
		}
		if dict["serverNameIn"] != nil {
			serverNameIn = dict["serverNameIn"] as? String
		}
		if dict["ipAddressEqual"] != nil {
			ipAddressEqual = dict["ipAddressEqual"] as? String
		}
		if dict["ipAddressIn"] != nil {
			ipAddressIn = dict["ipAddressIn"] as? String
		}
		if dict["clientTagEqual"] != nil {
			clientTagEqual = dict["clientTagEqual"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(idEqual != nil) {
			dict["idEqual"] = idEqual!
		}
		if(createdAtGreaterThanOrEqual != nil) {
			dict["createdAtGreaterThanOrEqual"] = createdAtGreaterThanOrEqual!
		}
		if(createdAtLessThanOrEqual != nil) {
			dict["createdAtLessThanOrEqual"] = createdAtLessThanOrEqual!
		}
		if(parsedAtGreaterThanOrEqual != nil) {
			dict["parsedAtGreaterThanOrEqual"] = parsedAtGreaterThanOrEqual!
		}
		if(parsedAtLessThanOrEqual != nil) {
			dict["parsedAtLessThanOrEqual"] = parsedAtLessThanOrEqual!
		}
		if(statusEqual != nil) {
			dict["statusEqual"] = statusEqual!.rawValue
		}
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		if(auditObjectTypeEqual != nil) {
			dict["auditObjectTypeEqual"] = auditObjectTypeEqual!.rawValue
		}
		if(auditObjectTypeIn != nil) {
			dict["auditObjectTypeIn"] = auditObjectTypeIn!
		}
		if(objectIdEqual != nil) {
			dict["objectIdEqual"] = objectIdEqual!
		}
		if(objectIdIn != nil) {
			dict["objectIdIn"] = objectIdIn!
		}
		if(relatedObjectIdEqual != nil) {
			dict["relatedObjectIdEqual"] = relatedObjectIdEqual!
		}
		if(relatedObjectIdIn != nil) {
			dict["relatedObjectIdIn"] = relatedObjectIdIn!
		}
		if(relatedObjectTypeEqual != nil) {
			dict["relatedObjectTypeEqual"] = relatedObjectTypeEqual!.rawValue
		}
		if(relatedObjectTypeIn != nil) {
			dict["relatedObjectTypeIn"] = relatedObjectTypeIn!
		}
		if(entryIdEqual != nil) {
			dict["entryIdEqual"] = entryIdEqual!
		}
		if(entryIdIn != nil) {
			dict["entryIdIn"] = entryIdIn!
		}
		if(masterPartnerIdEqual != nil) {
			dict["masterPartnerIdEqual"] = masterPartnerIdEqual!
		}
		if(masterPartnerIdIn != nil) {
			dict["masterPartnerIdIn"] = masterPartnerIdIn!
		}
		if(partnerIdEqual != nil) {
			dict["partnerIdEqual"] = partnerIdEqual!
		}
		if(partnerIdIn != nil) {
			dict["partnerIdIn"] = partnerIdIn!
		}
		if(requestIdEqual != nil) {
			dict["requestIdEqual"] = requestIdEqual!
		}
		if(requestIdIn != nil) {
			dict["requestIdIn"] = requestIdIn!
		}
		if(userIdEqual != nil) {
			dict["userIdEqual"] = userIdEqual!
		}
		if(userIdIn != nil) {
			dict["userIdIn"] = userIdIn!
		}
		if(actionEqual != nil) {
			dict["actionEqual"] = actionEqual!.rawValue
		}
		if(actionIn != nil) {
			dict["actionIn"] = actionIn!
		}
		if(ksEqual != nil) {
			dict["ksEqual"] = ksEqual!
		}
		if(contextEqual != nil) {
			dict["contextEqual"] = contextEqual!.rawValue
		}
		if(contextIn != nil) {
			dict["contextIn"] = contextIn!
		}
		if(entryPointEqual != nil) {
			dict["entryPointEqual"] = entryPointEqual!
		}
		if(entryPointIn != nil) {
			dict["entryPointIn"] = entryPointIn!
		}
		if(serverNameEqual != nil) {
			dict["serverNameEqual"] = serverNameEqual!
		}
		if(serverNameIn != nil) {
			dict["serverNameIn"] = serverNameIn!
		}
		if(ipAddressEqual != nil) {
			dict["ipAddressEqual"] = ipAddressEqual!
		}
		if(ipAddressIn != nil) {
			dict["ipAddressIn"] = ipAddressIn!
		}
		if(clientTagEqual != nil) {
			dict["clientTagEqual"] = clientTagEqual!
		}
		return dict
	}
}

