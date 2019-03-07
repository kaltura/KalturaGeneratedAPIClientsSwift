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
// Copyright (C) 2006-2019  Kaltura Inc.
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

open class EntryVendorTask: ObjectBase {

	public class EntryVendorTaskTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var vendorPartnerId: BaseTokenizedObject {
			get {
				return self.append("vendorPartnerId") 
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
		
		public var queueTime: BaseTokenizedObject {
			get {
				return self.append("queueTime") 
			}
		}
		
		public var finishTime: BaseTokenizedObject {
			get {
				return self.append("finishTime") 
			}
		}
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var reachProfileId: BaseTokenizedObject {
			get {
				return self.append("reachProfileId") 
			}
		}
		
		public var catalogItemId: BaseTokenizedObject {
			get {
				return self.append("catalogItemId") 
			}
		}
		
		public var price: BaseTokenizedObject {
			get {
				return self.append("price") 
			}
		}
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var moderatingUser: BaseTokenizedObject {
			get {
				return self.append("moderatingUser") 
			}
		}
		
		public var errDescription: BaseTokenizedObject {
			get {
				return self.append("errDescription") 
			}
		}
		
		public var accessKey: BaseTokenizedObject {
			get {
				return self.append("accessKey") 
			}
		}
		
		public var version: BaseTokenizedObject {
			get {
				return self.append("version") 
			}
		}
		
		public var notes: BaseTokenizedObject {
			get {
				return self.append("notes") 
			}
		}
		
		public var dictionary: BaseTokenizedObject {
			get {
				return self.append("dictionary") 
			}
		}
		
		public var context: BaseTokenizedObject {
			get {
				return self.append("context") 
			}
		}
		
		public var accuracy: BaseTokenizedObject {
			get {
				return self.append("accuracy") 
			}
		}
		
		public var outputObjectId: BaseTokenizedObject {
			get {
				return self.append("outputObjectId") 
			}
		}
		
		public var partnerData: BaseTokenizedObject {
			get {
				return self.append("partnerData") 
			}
		}
		
		public var creationMode: BaseTokenizedObject {
			get {
				return self.append("creationMode") 
			}
		}
		
		public func taskJobData<T: VendorTaskData.VendorTaskDataTokenizer>() -> T {
			return T(self.append("taskJobData"))
		}
	}

	public var id: Int64? = nil
	public var partnerId: Int? = nil
	public var vendorPartnerId: Int? = nil
	public var createdAt: Int? = nil
	public var updatedAt: Int? = nil
	public var queueTime: Int? = nil
	public var finishTime: Int? = nil
	public var entryId: String? = nil
	public var status: EntryVendorTaskStatus? = nil
	/**  The profile id from which this task base config is taken from  */
	public var reachProfileId: Int? = nil
	/**  The catalog item Id containing the task description  */
	public var catalogItemId: Int? = nil
	/**  The charged price to execute this task  */
	public var price: Double? = nil
	/**  The ID of the user who created this task  */
	public var userId: String? = nil
	/**  The user ID that approved this task for execution (in case moderation is
	  requested)  */
	public var moderatingUser: String? = nil
	/**  Err description provided by provider in case job execution has failed  */
	public var errDescription: String? = nil
	/**  Access key generated by Kaltura to allow vendors to ingest the end result to the
	  destination  */
	public var accessKey: String? = nil
	/**  Vendor generated by Kaltura representing the entry vendor task version
	  correlated to the entry version  */
	public var version: String? = nil
	/**  User generated notes that should be taken into account by the vendor while
	  executing the task  */
	public var notes: String? = nil
	public var dictionary: String? = nil
	/**  Task context  */
	public var context: String? = nil
	/**  Task result accuracy percentage  */
	public var accuracy: Int? = nil
	/**  Task main object generated by executing the task  */
	public var outputObjectId: String? = nil
	/**  Json object containing extra task data required by the requester  */
	public var partnerData: String? = nil
	/**  Task creation mode  */
	public var creationMode: EntryVendorTaskCreationMode? = nil
	public var taskJobData: VendorTaskData? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(vendorPartnerId: String) {
		self.dict["vendorPartnerId"] = vendorPartnerId
	}
	
	public func setMultiRequestToken(createdAt: String) {
		self.dict["createdAt"] = createdAt
	}
	
	public func setMultiRequestToken(updatedAt: String) {
		self.dict["updatedAt"] = updatedAt
	}
	
	public func setMultiRequestToken(queueTime: String) {
		self.dict["queueTime"] = queueTime
	}
	
	public func setMultiRequestToken(finishTime: String) {
		self.dict["finishTime"] = finishTime
	}
	
	public func setMultiRequestToken(entryId: String) {
		self.dict["entryId"] = entryId
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(reachProfileId: String) {
		self.dict["reachProfileId"] = reachProfileId
	}
	
	public func setMultiRequestToken(catalogItemId: String) {
		self.dict["catalogItemId"] = catalogItemId
	}
	
	public func setMultiRequestToken(price: String) {
		self.dict["price"] = price
	}
	
	public func setMultiRequestToken(userId: String) {
		self.dict["userId"] = userId
	}
	
	public func setMultiRequestToken(moderatingUser: String) {
		self.dict["moderatingUser"] = moderatingUser
	}
	
	public func setMultiRequestToken(errDescription: String) {
		self.dict["errDescription"] = errDescription
	}
	
	public func setMultiRequestToken(accessKey: String) {
		self.dict["accessKey"] = accessKey
	}
	
	public func setMultiRequestToken(version: String) {
		self.dict["version"] = version
	}
	
	public func setMultiRequestToken(notes: String) {
		self.dict["notes"] = notes
	}
	
	public func setMultiRequestToken(dictionary: String) {
		self.dict["dictionary"] = dictionary
	}
	
	public func setMultiRequestToken(context: String) {
		self.dict["context"] = context
	}
	
	public func setMultiRequestToken(accuracy: String) {
		self.dict["accuracy"] = accuracy
	}
	
	public func setMultiRequestToken(outputObjectId: String) {
		self.dict["outputObjectId"] = outputObjectId
	}
	
	public func setMultiRequestToken(partnerData: String) {
		self.dict["partnerData"] = partnerData
	}
	
	public func setMultiRequestToken(creationMode: String) {
		self.dict["creationMode"] = creationMode
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = Int64("\(dict["id"]!)")
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["vendorPartnerId"] != nil {
			vendorPartnerId = dict["vendorPartnerId"] as? Int
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["queueTime"] != nil {
			queueTime = dict["queueTime"] as? Int
		}
		if dict["finishTime"] != nil {
			finishTime = dict["finishTime"] as? Int
		}
		if dict["entryId"] != nil {
			entryId = dict["entryId"] as? String
		}
		if dict["status"] != nil {
			status = EntryVendorTaskStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["reachProfileId"] != nil {
			reachProfileId = dict["reachProfileId"] as? Int
		}
		if dict["catalogItemId"] != nil {
			catalogItemId = dict["catalogItemId"] as? Int
		}
		if dict["price"] != nil {
			price = dict["price"] as? Double
		}
		if dict["userId"] != nil {
			userId = dict["userId"] as? String
		}
		if dict["moderatingUser"] != nil {
			moderatingUser = dict["moderatingUser"] as? String
		}
		if dict["errDescription"] != nil {
			errDescription = dict["errDescription"] as? String
		}
		if dict["accessKey"] != nil {
			accessKey = dict["accessKey"] as? String
		}
		if dict["version"] != nil {
			version = dict["version"] as? String
		}
		if dict["notes"] != nil {
			notes = dict["notes"] as? String
		}
		if dict["dictionary"] != nil {
			dictionary = dict["dictionary"] as? String
		}
		if dict["context"] != nil {
			context = dict["context"] as? String
		}
		if dict["accuracy"] != nil {
			accuracy = dict["accuracy"] as? Int
		}
		if dict["outputObjectId"] != nil {
			outputObjectId = dict["outputObjectId"] as? String
		}
		if dict["partnerData"] != nil {
			partnerData = dict["partnerData"] as? String
		}
		if dict["creationMode"] != nil {
			creationMode = EntryVendorTaskCreationMode(rawValue: (dict["creationMode"] as? Int)!)
		}
		if dict["taskJobData"] != nil {
		taskJobData = try JSONParser.parse(object: dict["taskJobData"] as! [String: Any])		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(entryId != nil) {
			dict["entryId"] = entryId!
		}
		if(status != nil) {
			dict["status"] = status!.rawValue
		}
		if(reachProfileId != nil) {
			dict["reachProfileId"] = reachProfileId!
		}
		if(catalogItemId != nil) {
			dict["catalogItemId"] = catalogItemId!
		}
		if(errDescription != nil) {
			dict["errDescription"] = errDescription!
		}
		if(notes != nil) {
			dict["notes"] = notes!
		}
		if(context != nil) {
			dict["context"] = context!
		}
		if(accuracy != nil) {
			dict["accuracy"] = accuracy!
		}
		if(outputObjectId != nil) {
			dict["outputObjectId"] = outputObjectId!
		}
		if(partnerData != nil) {
			dict["partnerData"] = partnerData!
		}
		if(taskJobData != nil) {
			dict["taskJobData"] = taskJobData!.toDictionary()
		}
		return dict
	}
}

