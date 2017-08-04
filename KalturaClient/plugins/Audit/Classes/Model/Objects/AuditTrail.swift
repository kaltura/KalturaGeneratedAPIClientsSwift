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

open class AuditTrail: ObjectBase {

	public var id: Int? = nil
	public var createdAt: Int? = nil
	/**  Indicates when the data was parsed  */
	public var parsedAt: Int? = nil
	public var status: AuditTrailStatus? = nil
	public var auditObjectType: AuditTrailObjectType? = nil
	public var objectId: String? = nil
	public var relatedObjectId: String? = nil
	public var relatedObjectType: AuditTrailObjectType? = nil
	public var entryId: String? = nil
	public var masterPartnerId: Int? = nil
	public var partnerId: Int? = nil
	public var requestId: String? = nil
	public var userId: String? = nil
	public var action: AuditTrailAction? = nil
	public var data: AuditTrailInfo? = nil
	public var ks: String? = nil
	public var context: AuditTrailContext? = nil
	/**  The API service and action that called and caused this audit  */
	public var entryPoint: String? = nil
	public var serverName: String? = nil
	public var ipAddress: String? = nil
	public var userAgent: String? = nil
	public var clientTag: String? = nil
	public var description: String? = nil
	public var errorDescription: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["parsedAt"] != nil {
			parsedAt = dict["parsedAt"] as? Int
		}
		if dict["status"] != nil {
			status = AuditTrailStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["auditObjectType"] != nil {
			auditObjectType = AuditTrailObjectType(rawValue: "\(dict["auditObjectType"]!)")
		}
		if dict["objectId"] != nil {
			objectId = dict["objectId"] as? String
		}
		if dict["relatedObjectId"] != nil {
			relatedObjectId = dict["relatedObjectId"] as? String
		}
		if dict["relatedObjectType"] != nil {
			relatedObjectType = AuditTrailObjectType(rawValue: "\(dict["relatedObjectType"]!)")
		}
		if dict["entryId"] != nil {
			entryId = dict["entryId"] as? String
		}
		if dict["masterPartnerId"] != nil {
			masterPartnerId = dict["masterPartnerId"] as? Int
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["requestId"] != nil {
			requestId = dict["requestId"] as? String
		}
		if dict["userId"] != nil {
			userId = dict["userId"] as? String
		}
		if dict["action"] != nil {
			action = AuditTrailAction(rawValue: "\(dict["action"]!)")
		}
		if dict["data"] != nil {
		data = try JSONParser.parse(object: dict["data"] as! [String: Any])		}
		if dict["ks"] != nil {
			ks = dict["ks"] as? String
		}
		if dict["context"] != nil {
			context = AuditTrailContext(rawValue: (dict["context"] as? Int)!)
		}
		if dict["entryPoint"] != nil {
			entryPoint = dict["entryPoint"] as? String
		}
		if dict["serverName"] != nil {
			serverName = dict["serverName"] as? String
		}
		if dict["ipAddress"] != nil {
			ipAddress = dict["ipAddress"] as? String
		}
		if dict["userAgent"] != nil {
			userAgent = dict["userAgent"] as? String
		}
		if dict["clientTag"] != nil {
			clientTag = dict["clientTag"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["errorDescription"] != nil {
			errorDescription = dict["errorDescription"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(auditObjectType != nil) {
			dict["auditObjectType"] = auditObjectType!.rawValue
		}
		if(objectId != nil) {
			dict["objectId"] = objectId!
		}
		if(relatedObjectId != nil) {
			dict["relatedObjectId"] = relatedObjectId!
		}
		if(relatedObjectType != nil) {
			dict["relatedObjectType"] = relatedObjectType!.rawValue
		}
		if(entryId != nil) {
			dict["entryId"] = entryId!
		}
		if(userId != nil) {
			dict["userId"] = userId!
		}
		if(action != nil) {
			dict["action"] = action!.rawValue
		}
		if(data != nil) {
			dict["data"] = data!.toDictionary()
		}
		if(clientTag != nil) {
			dict["clientTag"] = clientTag!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		return dict
	}
}

