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

open class StorageProfile: ObjectBase {

	public var id: Int? = nil
	public var createdAt: Int? = nil
	public var updatedAt: Int? = nil
	public var partnerId: Int? = nil
	public var name: String? = nil
	public var systemName: String? = nil
	public var desciption: String? = nil
	public var status: StorageProfileStatus? = nil
	public var protocol_: StorageProfileProtocol? = nil
	public var storageUrl: String? = nil
	public var storageBaseDir: String? = nil
	public var storageUsername: String? = nil
	public var storagePassword: String? = nil
	public var storageFtpPassiveMode: Bool? = nil
	public var minFileSize: Int? = nil
	public var maxFileSize: Int? = nil
	public var flavorParamsIds: String? = nil
	public var maxConcurrentConnections: Int? = nil
	public var pathManagerClass: String? = nil
	public var pathManagerParams: Array<KeyValue>? = nil
	/**  No need to create enum for temp field  */
	public var trigger: Int? = nil
	/**  Delivery Priority  */
	public var deliveryPriority: Int? = nil
	public var deliveryStatus: StorageProfileDeliveryStatus? = nil
	public var readyBehavior: StorageProfileReadyBehavior? = nil
	/**  Flag sugnifying that the storage exported content should be deleted when soure
	  entry is deleted  */
	public var allowAutoDelete: Int? = nil
	/**  Indicates to the local file transfer manager to create a link to the file
	  instead of copying it  */
	public var createFileLink: Bool? = nil
	/**  Holds storage profile export rules  */
	public var rules: Array<Rule>? = nil
	/**  Delivery profile ids  */
	public var deliveryProfileIds: Array<KeyValue>? = nil
	public var privateKey: String? = nil
	public var publicKey: String? = nil
	public var passPhrase: String? = nil
	public var shouldExportThumbs: Bool? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["systemName"] != nil {
			systemName = dict["systemName"] as? String
		}
		if dict["desciption"] != nil {
			desciption = dict["desciption"] as? String
		}
		if dict["status"] != nil {
			status = StorageProfileStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["protocol"] != nil {
			protocol_ = StorageProfileProtocol(rawValue: "\(dict["protocol"]!)")
		}
		if dict["storageUrl"] != nil {
			storageUrl = dict["storageUrl"] as? String
		}
		if dict["storageBaseDir"] != nil {
			storageBaseDir = dict["storageBaseDir"] as? String
		}
		if dict["storageUsername"] != nil {
			storageUsername = dict["storageUsername"] as? String
		}
		if dict["storagePassword"] != nil {
			storagePassword = dict["storagePassword"] as? String
		}
		if dict["storageFtpPassiveMode"] != nil {
			storageFtpPassiveMode = dict["storageFtpPassiveMode"] as? Bool
		}
		if dict["minFileSize"] != nil {
			minFileSize = dict["minFileSize"] as? Int
		}
		if dict["maxFileSize"] != nil {
			maxFileSize = dict["maxFileSize"] as? Int
		}
		if dict["flavorParamsIds"] != nil {
			flavorParamsIds = dict["flavorParamsIds"] as? String
		}
		if dict["maxConcurrentConnections"] != nil {
			maxConcurrentConnections = dict["maxConcurrentConnections"] as? Int
		}
		if dict["pathManagerClass"] != nil {
			pathManagerClass = dict["pathManagerClass"] as? String
		}
		if dict["pathManagerParams"] != nil {
			pathManagerParams = try JSONParser.parse(array: dict["pathManagerParams"] as! [Any])
		}
		if dict["trigger"] != nil {
			trigger = dict["trigger"] as? Int
		}
		if dict["deliveryPriority"] != nil {
			deliveryPriority = dict["deliveryPriority"] as? Int
		}
		if dict["deliveryStatus"] != nil {
			deliveryStatus = StorageProfileDeliveryStatus(rawValue: (dict["deliveryStatus"] as? Int)!)
		}
		if dict["readyBehavior"] != nil {
			readyBehavior = StorageProfileReadyBehavior(rawValue: (dict["readyBehavior"] as? Int)!)
		}
		if dict["allowAutoDelete"] != nil {
			allowAutoDelete = dict["allowAutoDelete"] as? Int
		}
		if dict["createFileLink"] != nil {
			createFileLink = dict["createFileLink"] as? Bool
		}
		if dict["rules"] != nil {
			rules = try JSONParser.parse(array: dict["rules"] as! [Any])
		}
		if dict["deliveryProfileIds"] != nil {
			deliveryProfileIds = try JSONParser.parse(array: dict["deliveryProfileIds"] as! [Any])
		}
		if dict["privateKey"] != nil {
			privateKey = dict["privateKey"] as? String
		}
		if dict["publicKey"] != nil {
			publicKey = dict["publicKey"] as? String
		}
		if dict["passPhrase"] != nil {
			passPhrase = dict["passPhrase"] as? String
		}
		if dict["shouldExportThumbs"] != nil {
			shouldExportThumbs = dict["shouldExportThumbs"] as? Bool
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(systemName != nil) {
			dict["systemName"] = systemName!
		}
		if(desciption != nil) {
			dict["desciption"] = desciption!
		}
		if(status != nil) {
			dict["status"] = status!.rawValue
		}
		if(protocol_ != nil) {
			dict["protocol"] = protocol_!.rawValue
		}
		if(storageUrl != nil) {
			dict["storageUrl"] = storageUrl!
		}
		if(storageBaseDir != nil) {
			dict["storageBaseDir"] = storageBaseDir!
		}
		if(storageUsername != nil) {
			dict["storageUsername"] = storageUsername!
		}
		if(storagePassword != nil) {
			dict["storagePassword"] = storagePassword!
		}
		if(storageFtpPassiveMode != nil) {
			dict["storageFtpPassiveMode"] = storageFtpPassiveMode!
		}
		if(minFileSize != nil) {
			dict["minFileSize"] = minFileSize!
		}
		if(maxFileSize != nil) {
			dict["maxFileSize"] = maxFileSize!
		}
		if(flavorParamsIds != nil) {
			dict["flavorParamsIds"] = flavorParamsIds!
		}
		if(maxConcurrentConnections != nil) {
			dict["maxConcurrentConnections"] = maxConcurrentConnections!
		}
		if(pathManagerClass != nil) {
			dict["pathManagerClass"] = pathManagerClass!
		}
		if(pathManagerParams != nil) {
			dict["pathManagerParams"] = pathManagerParams!.map { value in value.toDictionary() }
		}
		if(trigger != nil) {
			dict["trigger"] = trigger!
		}
		if(deliveryPriority != nil) {
			dict["deliveryPriority"] = deliveryPriority!
		}
		if(deliveryStatus != nil) {
			dict["deliveryStatus"] = deliveryStatus!.rawValue
		}
		if(readyBehavior != nil) {
			dict["readyBehavior"] = readyBehavior!.rawValue
		}
		if(allowAutoDelete != nil) {
			dict["allowAutoDelete"] = allowAutoDelete!
		}
		if(createFileLink != nil) {
			dict["createFileLink"] = createFileLink!
		}
		if(rules != nil) {
			dict["rules"] = rules!.map { value in value.toDictionary() }
		}
		if(deliveryProfileIds != nil) {
			dict["deliveryProfileIds"] = deliveryProfileIds!.map { value in value.toDictionary() }
		}
		if(privateKey != nil) {
			dict["privateKey"] = privateKey!
		}
		if(publicKey != nil) {
			dict["publicKey"] = publicKey!
		}
		if(passPhrase != nil) {
			dict["passPhrase"] = passPhrase!
		}
		if(shouldExportThumbs != nil) {
			dict["shouldExportThumbs"] = shouldExportThumbs!
		}
		return dict
	}
}

