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
// Copyright (C) 2006-2020  Kaltura Inc.
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

open class StorageProfile: ObjectBase {

	public class StorageProfileTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var createdAt: BaseTokenizedObject {
			get {
				return self.append("createdAt") 
			}
		}
		
		public var updatedAt: BaseTokenizedObject {
			get {
				return self.append("updatedAt") 
			}
		}
		
		public var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var systemName: BaseTokenizedObject {
			get {
				return self.append("systemName") 
			}
		}
		
		public var desciption: BaseTokenizedObject {
			get {
				return self.append("desciption") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var protocol_: BaseTokenizedObject {
			get {
				return self.append("protocol_") 
			}
		}
		
		public var storageUrl: BaseTokenizedObject {
			get {
				return self.append("storageUrl") 
			}
		}
		
		public var storageBaseDir: BaseTokenizedObject {
			get {
				return self.append("storageBaseDir") 
			}
		}
		
		public var storageUsername: BaseTokenizedObject {
			get {
				return self.append("storageUsername") 
			}
		}
		
		public var storagePassword: BaseTokenizedObject {
			get {
				return self.append("storagePassword") 
			}
		}
		
		public var storageFtpPassiveMode: BaseTokenizedObject {
			get {
				return self.append("storageFtpPassiveMode") 
			}
		}
		
		public var minFileSize: BaseTokenizedObject {
			get {
				return self.append("minFileSize") 
			}
		}
		
		public var maxFileSize: BaseTokenizedObject {
			get {
				return self.append("maxFileSize") 
			}
		}
		
		public var flavorParamsIds: BaseTokenizedObject {
			get {
				return self.append("flavorParamsIds") 
			}
		}
		
		public var maxConcurrentConnections: BaseTokenizedObject {
			get {
				return self.append("maxConcurrentConnections") 
			}
		}
		
		public var pathManagerClass: BaseTokenizedObject {
			get {
				return self.append("pathManagerClass") 
			}
		}
		
		public var pathManagerParams: ArrayTokenizedObject<KeyValue.KeyValueTokenizer> {
			get {
				return ArrayTokenizedObject<KeyValue.KeyValueTokenizer>(self.append("pathManagerParams"))
			} 
		}
		
		public var trigger: BaseTokenizedObject {
			get {
				return self.append("trigger") 
			}
		}
		
		public var deliveryPriority: BaseTokenizedObject {
			get {
				return self.append("deliveryPriority") 
			}
		}
		
		public var deliveryStatus: BaseTokenizedObject {
			get {
				return self.append("deliveryStatus") 
			}
		}
		
		public var readyBehavior: BaseTokenizedObject {
			get {
				return self.append("readyBehavior") 
			}
		}
		
		public var allowAutoDelete: BaseTokenizedObject {
			get {
				return self.append("allowAutoDelete") 
			}
		}
		
		public var createFileLink: BaseTokenizedObject {
			get {
				return self.append("createFileLink") 
			}
		}
		
		public var rules: ArrayTokenizedObject<Rule.RuleTokenizer> {
			get {
				return ArrayTokenizedObject<Rule.RuleTokenizer>(self.append("rules"))
			} 
		}
		
		public var deliveryProfileIds: ArrayTokenizedObject<KeyValue.KeyValueTokenizer> {
			get {
				return ArrayTokenizedObject<KeyValue.KeyValueTokenizer>(self.append("deliveryProfileIds"))
			} 
		}
		
		public var privateKey: BaseTokenizedObject {
			get {
				return self.append("privateKey") 
			}
		}
		
		public var publicKey: BaseTokenizedObject {
			get {
				return self.append("publicKey") 
			}
		}
		
		public var passPhrase: BaseTokenizedObject {
			get {
				return self.append("passPhrase") 
			}
		}
		
		public var shouldExportThumbs: BaseTokenizedObject {
			get {
				return self.append("shouldExportThumbs") 
			}
		}
		
		public var mappedPackagerUrl: BaseTokenizedObject {
			get {
				return self.append("mappedPackagerUrl") 
			}
		}
		
		public var regularPackagerUrl: BaseTokenizedObject {
			get {
				return self.append("regularPackagerUrl") 
			}
		}
	}

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
	public var mappedPackagerUrl: String? = nil
	public var regularPackagerUrl: String? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(createdAt: String) {
		self.dict["createdAt"] = createdAt
	}
	
	public func setMultiRequestToken(updatedAt: String) {
		self.dict["updatedAt"] = updatedAt
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(systemName: String) {
		self.dict["systemName"] = systemName
	}
	
	public func setMultiRequestToken(desciption: String) {
		self.dict["desciption"] = desciption
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(protocol_: String) {
		self.dict["protocol"] = protocol_
	}
	
	public func setMultiRequestToken(storageUrl: String) {
		self.dict["storageUrl"] = storageUrl
	}
	
	public func setMultiRequestToken(storageBaseDir: String) {
		self.dict["storageBaseDir"] = storageBaseDir
	}
	
	public func setMultiRequestToken(storageUsername: String) {
		self.dict["storageUsername"] = storageUsername
	}
	
	public func setMultiRequestToken(storagePassword: String) {
		self.dict["storagePassword"] = storagePassword
	}
	
	public func setMultiRequestToken(storageFtpPassiveMode: String) {
		self.dict["storageFtpPassiveMode"] = storageFtpPassiveMode
	}
	
	public func setMultiRequestToken(minFileSize: String) {
		self.dict["minFileSize"] = minFileSize
	}
	
	public func setMultiRequestToken(maxFileSize: String) {
		self.dict["maxFileSize"] = maxFileSize
	}
	
	public func setMultiRequestToken(flavorParamsIds: String) {
		self.dict["flavorParamsIds"] = flavorParamsIds
	}
	
	public func setMultiRequestToken(maxConcurrentConnections: String) {
		self.dict["maxConcurrentConnections"] = maxConcurrentConnections
	}
	
	public func setMultiRequestToken(pathManagerClass: String) {
		self.dict["pathManagerClass"] = pathManagerClass
	}
	
	public func setMultiRequestToken(trigger: String) {
		self.dict["trigger"] = trigger
	}
	
	public func setMultiRequestToken(deliveryPriority: String) {
		self.dict["deliveryPriority"] = deliveryPriority
	}
	
	public func setMultiRequestToken(deliveryStatus: String) {
		self.dict["deliveryStatus"] = deliveryStatus
	}
	
	public func setMultiRequestToken(readyBehavior: String) {
		self.dict["readyBehavior"] = readyBehavior
	}
	
	public func setMultiRequestToken(allowAutoDelete: String) {
		self.dict["allowAutoDelete"] = allowAutoDelete
	}
	
	public func setMultiRequestToken(createFileLink: String) {
		self.dict["createFileLink"] = createFileLink
	}
	
	public func setMultiRequestToken(privateKey: String) {
		self.dict["privateKey"] = privateKey
	}
	
	public func setMultiRequestToken(publicKey: String) {
		self.dict["publicKey"] = publicKey
	}
	
	public func setMultiRequestToken(passPhrase: String) {
		self.dict["passPhrase"] = passPhrase
	}
	
	public func setMultiRequestToken(shouldExportThumbs: String) {
		self.dict["shouldExportThumbs"] = shouldExportThumbs
	}
	
	public func setMultiRequestToken(mappedPackagerUrl: String) {
		self.dict["mappedPackagerUrl"] = mappedPackagerUrl
	}
	
	public func setMultiRequestToken(regularPackagerUrl: String) {
		self.dict["regularPackagerUrl"] = regularPackagerUrl
	}
	
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
		if dict["mappedPackagerUrl"] != nil {
			mappedPackagerUrl = dict["mappedPackagerUrl"] as? String
		}
		if dict["regularPackagerUrl"] != nil {
			regularPackagerUrl = dict["regularPackagerUrl"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
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
		if(mappedPackagerUrl != nil) {
			dict["mappedPackagerUrl"] = mappedPackagerUrl!
		}
		if(regularPackagerUrl != nil) {
			dict["regularPackagerUrl"] = regularPackagerUrl!
		}
		return dict
	}
}

