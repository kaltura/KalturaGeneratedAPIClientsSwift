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

open class BatchJob: ObjectBase {

	public class BatchJobTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
		
		public var deletedAt: BaseTokenizedObject {
			get {
				return self.append("deletedAt") 
			}
		}
		
		public var lockExpiration: BaseTokenizedObject {
			get {
				return self.append("lockExpiration") 
			}
		}
		
		public var executionAttempts: BaseTokenizedObject {
			get {
				return self.append("executionAttempts") 
			}
		}
		
		public var lockVersion: BaseTokenizedObject {
			get {
				return self.append("lockVersion") 
			}
		}
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var entryName: BaseTokenizedObject {
			get {
				return self.append("entryName") 
			}
		}
		
		public var jobType: BaseTokenizedObject {
			get {
				return self.append("jobType") 
			}
		}
		
		public var jobSubType: BaseTokenizedObject {
			get {
				return self.append("jobSubType") 
			}
		}
		
		public func data<T: JobData.JobDataTokenizer>() -> T {
			return T(self.append("data"))
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var abort: BaseTokenizedObject {
			get {
				return self.append("abort") 
			}
		}
		
		public var checkAgainTimeout: BaseTokenizedObject {
			get {
				return self.append("checkAgainTimeout") 
			}
		}
		
		public var message: BaseTokenizedObject {
			get {
				return self.append("message") 
			}
		}
		
		public var description: BaseTokenizedObject {
			get {
				return self.append("description") 
			}
		}
		
		public var priority: BaseTokenizedObject {
			get {
				return self.append("priority") 
			}
		}
		
		public var history: ArrayTokenizedObject<BatchHistoryData.BatchHistoryDataTokenizer> {
			get {
				return ArrayTokenizedObject<BatchHistoryData.BatchHistoryDataTokenizer>(self.append("history"))
			} 
		}
		
		public var bulkJobId: BaseTokenizedObject {
			get {
				return self.append("bulkJobId") 
			}
		}
		
		public var batchVersion: BaseTokenizedObject {
			get {
				return self.append("batchVersion") 
			}
		}
		
		public var parentJobId: BaseTokenizedObject {
			get {
				return self.append("parentJobId") 
			}
		}
		
		public var rootJobId: BaseTokenizedObject {
			get {
				return self.append("rootJobId") 
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
		
		public var errType: BaseTokenizedObject {
			get {
				return self.append("errType") 
			}
		}
		
		public var errNumber: BaseTokenizedObject {
			get {
				return self.append("errNumber") 
			}
		}
		
		public var estimatedEffort: BaseTokenizedObject {
			get {
				return self.append("estimatedEffort") 
			}
		}
		
		public var urgency: BaseTokenizedObject {
			get {
				return self.append("urgency") 
			}
		}
		
		public var schedulerId: BaseTokenizedObject {
			get {
				return self.append("schedulerId") 
			}
		}
		
		public var workerId: BaseTokenizedObject {
			get {
				return self.append("workerId") 
			}
		}
		
		public var batchIndex: BaseTokenizedObject {
			get {
				return self.append("batchIndex") 
			}
		}
		
		public var lastSchedulerId: BaseTokenizedObject {
			get {
				return self.append("lastSchedulerId") 
			}
		}
		
		public var lastWorkerId: BaseTokenizedObject {
			get {
				return self.append("lastWorkerId") 
			}
		}
		
		public var dc: BaseTokenizedObject {
			get {
				return self.append("dc") 
			}
		}
		
		public var jobObjectId: BaseTokenizedObject {
			get {
				return self.append("jobObjectId") 
			}
		}
		
		public var jobObjectType: BaseTokenizedObject {
			get {
				return self.append("jobObjectType") 
			}
		}
	}

	public var id: Int64? = nil
	public var partnerId: Int? = nil
	public var createdAt: Int? = nil
	public var updatedAt: Int? = nil
	public var deletedAt: Int? = nil
	public var lockExpiration: Int? = nil
	public var executionAttempts: Int? = nil
	public var lockVersion: Int? = nil
	public var entryId: String? = nil
	public var entryName: String? = nil
	public var jobType: BatchJobType? = nil
	public var jobSubType: Int? = nil
	public var data: JobData? = nil
	public var status: BatchJobStatus? = nil
	public var abort: Int? = nil
	public var checkAgainTimeout: Int? = nil
	public var message: String? = nil
	public var description: String? = nil
	public var priority: Int? = nil
	public var history: Array<BatchHistoryData>? = nil
	/**  The id of the bulk upload job that initiated this job  */
	public var bulkJobId: Int? = nil
	public var batchVersion: Int? = nil
	/**  When one job creates another - the parent should set this parentJobId to be its
	  own id.  */
	public var parentJobId: Int? = nil
	/**  The id of the root parent job  */
	public var rootJobId: Int? = nil
	/**  The time that the job was pulled from the queue  */
	public var queueTime: Int? = nil
	/**  The time that the job was finished or closed as failed  */
	public var finishTime: Int? = nil
	public var errType: BatchJobErrorTypes? = nil
	public var errNumber: Int? = nil
	public var estimatedEffort: Int? = nil
	public var urgency: Int? = nil
	public var schedulerId: Int? = nil
	public var workerId: Int? = nil
	public var batchIndex: Int? = nil
	public var lastSchedulerId: Int? = nil
	public var lastWorkerId: Int? = nil
	public var dc: Int? = nil
	public var jobObjectId: String? = nil
	public var jobObjectType: Int? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(createdAt: String) {
		self.dict["createdAt"] = createdAt
	}
	
	public func setMultiRequestToken(updatedAt: String) {
		self.dict["updatedAt"] = updatedAt
	}
	
	public func setMultiRequestToken(deletedAt: String) {
		self.dict["deletedAt"] = deletedAt
	}
	
	public func setMultiRequestToken(lockExpiration: String) {
		self.dict["lockExpiration"] = lockExpiration
	}
	
	public func setMultiRequestToken(executionAttempts: String) {
		self.dict["executionAttempts"] = executionAttempts
	}
	
	public func setMultiRequestToken(lockVersion: String) {
		self.dict["lockVersion"] = lockVersion
	}
	
	public func setMultiRequestToken(entryId: String) {
		self.dict["entryId"] = entryId
	}
	
	public func setMultiRequestToken(entryName: String) {
		self.dict["entryName"] = entryName
	}
	
	public func setMultiRequestToken(jobType: String) {
		self.dict["jobType"] = jobType
	}
	
	public func setMultiRequestToken(jobSubType: String) {
		self.dict["jobSubType"] = jobSubType
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(abort: String) {
		self.dict["abort"] = abort
	}
	
	public func setMultiRequestToken(checkAgainTimeout: String) {
		self.dict["checkAgainTimeout"] = checkAgainTimeout
	}
	
	public func setMultiRequestToken(message: String) {
		self.dict["message"] = message
	}
	
	public func setMultiRequestToken(description: String) {
		self.dict["description"] = description
	}
	
	public func setMultiRequestToken(priority: String) {
		self.dict["priority"] = priority
	}
	
	public func setMultiRequestToken(bulkJobId: String) {
		self.dict["bulkJobId"] = bulkJobId
	}
	
	public func setMultiRequestToken(batchVersion: String) {
		self.dict["batchVersion"] = batchVersion
	}
	
	public func setMultiRequestToken(parentJobId: String) {
		self.dict["parentJobId"] = parentJobId
	}
	
	public func setMultiRequestToken(rootJobId: String) {
		self.dict["rootJobId"] = rootJobId
	}
	
	public func setMultiRequestToken(queueTime: String) {
		self.dict["queueTime"] = queueTime
	}
	
	public func setMultiRequestToken(finishTime: String) {
		self.dict["finishTime"] = finishTime
	}
	
	public func setMultiRequestToken(errType: String) {
		self.dict["errType"] = errType
	}
	
	public func setMultiRequestToken(errNumber: String) {
		self.dict["errNumber"] = errNumber
	}
	
	public func setMultiRequestToken(estimatedEffort: String) {
		self.dict["estimatedEffort"] = estimatedEffort
	}
	
	public func setMultiRequestToken(urgency: String) {
		self.dict["urgency"] = urgency
	}
	
	public func setMultiRequestToken(schedulerId: String) {
		self.dict["schedulerId"] = schedulerId
	}
	
	public func setMultiRequestToken(workerId: String) {
		self.dict["workerId"] = workerId
	}
	
	public func setMultiRequestToken(batchIndex: String) {
		self.dict["batchIndex"] = batchIndex
	}
	
	public func setMultiRequestToken(lastSchedulerId: String) {
		self.dict["lastSchedulerId"] = lastSchedulerId
	}
	
	public func setMultiRequestToken(lastWorkerId: String) {
		self.dict["lastWorkerId"] = lastWorkerId
	}
	
	public func setMultiRequestToken(dc: String) {
		self.dict["dc"] = dc
	}
	
	public func setMultiRequestToken(jobObjectId: String) {
		self.dict["jobObjectId"] = jobObjectId
	}
	
	public func setMultiRequestToken(jobObjectType: String) {
		self.dict["jobObjectType"] = jobObjectType
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
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["deletedAt"] != nil {
			deletedAt = dict["deletedAt"] as? Int
		}
		if dict["lockExpiration"] != nil {
			lockExpiration = dict["lockExpiration"] as? Int
		}
		if dict["executionAttempts"] != nil {
			executionAttempts = dict["executionAttempts"] as? Int
		}
		if dict["lockVersion"] != nil {
			lockVersion = dict["lockVersion"] as? Int
		}
		if dict["entryId"] != nil {
			entryId = dict["entryId"] as? String
		}
		if dict["entryName"] != nil {
			entryName = dict["entryName"] as? String
		}
		if dict["jobType"] != nil {
			jobType = BatchJobType(rawValue: "\(dict["jobType"]!)")
		}
		if dict["jobSubType"] != nil {
			jobSubType = dict["jobSubType"] as? Int
		}
		if dict["data"] != nil {
		data = try JSONParser.parse(object: dict["data"] as! [String: Any])		}
		if dict["status"] != nil {
			status = BatchJobStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["abort"] != nil {
			abort = dict["abort"] as? Int
		}
		if dict["checkAgainTimeout"] != nil {
			checkAgainTimeout = dict["checkAgainTimeout"] as? Int
		}
		if dict["message"] != nil {
			message = dict["message"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["priority"] != nil {
			priority = dict["priority"] as? Int
		}
		if dict["history"] != nil {
			history = try JSONParser.parse(array: dict["history"] as! [Any])
		}
		if dict["bulkJobId"] != nil {
			bulkJobId = dict["bulkJobId"] as? Int
		}
		if dict["batchVersion"] != nil {
			batchVersion = dict["batchVersion"] as? Int
		}
		if dict["parentJobId"] != nil {
			parentJobId = dict["parentJobId"] as? Int
		}
		if dict["rootJobId"] != nil {
			rootJobId = dict["rootJobId"] as? Int
		}
		if dict["queueTime"] != nil {
			queueTime = dict["queueTime"] as? Int
		}
		if dict["finishTime"] != nil {
			finishTime = dict["finishTime"] as? Int
		}
		if dict["errType"] != nil {
			errType = BatchJobErrorTypes(rawValue: (dict["errType"] as? Int)!)
		}
		if dict["errNumber"] != nil {
			errNumber = dict["errNumber"] as? Int
		}
		if dict["estimatedEffort"] != nil {
			estimatedEffort = dict["estimatedEffort"] as? Int
		}
		if dict["urgency"] != nil {
			urgency = dict["urgency"] as? Int
		}
		if dict["schedulerId"] != nil {
			schedulerId = dict["schedulerId"] as? Int
		}
		if dict["workerId"] != nil {
			workerId = dict["workerId"] as? Int
		}
		if dict["batchIndex"] != nil {
			batchIndex = dict["batchIndex"] as? Int
		}
		if dict["lastSchedulerId"] != nil {
			lastSchedulerId = dict["lastSchedulerId"] as? Int
		}
		if dict["lastWorkerId"] != nil {
			lastWorkerId = dict["lastWorkerId"] as? Int
		}
		if dict["dc"] != nil {
			dc = dict["dc"] as? Int
		}
		if dict["jobObjectId"] != nil {
			jobObjectId = dict["jobObjectId"] as? String
		}
		if dict["jobObjectType"] != nil {
			jobObjectType = dict["jobObjectType"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(entryId != nil) {
			dict["entryId"] = entryId!
		}
		if(entryName != nil) {
			dict["entryName"] = entryName!
		}
		if(jobSubType != nil) {
			dict["jobSubType"] = jobSubType!
		}
		if(data != nil) {
			dict["data"] = data!.toDictionary()
		}
		if(status != nil) {
			dict["status"] = status!.rawValue
		}
		if(abort != nil) {
			dict["abort"] = abort!
		}
		if(checkAgainTimeout != nil) {
			dict["checkAgainTimeout"] = checkAgainTimeout!
		}
		if(message != nil) {
			dict["message"] = message!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(priority != nil) {
			dict["priority"] = priority!
		}
		if(history != nil) {
			dict["history"] = history!.map { value in value.toDictionary() }
		}
		if(bulkJobId != nil) {
			dict["bulkJobId"] = bulkJobId!
		}
		if(batchVersion != nil) {
			dict["batchVersion"] = batchVersion!
		}
		if(parentJobId != nil) {
			dict["parentJobId"] = parentJobId!
		}
		if(rootJobId != nil) {
			dict["rootJobId"] = rootJobId!
		}
		if(queueTime != nil) {
			dict["queueTime"] = queueTime!
		}
		if(finishTime != nil) {
			dict["finishTime"] = finishTime!
		}
		if(errType != nil) {
			dict["errType"] = errType!.rawValue
		}
		if(errNumber != nil) {
			dict["errNumber"] = errNumber!
		}
		if(estimatedEffort != nil) {
			dict["estimatedEffort"] = estimatedEffort!
		}
		if(urgency != nil) {
			dict["urgency"] = urgency!
		}
		if(schedulerId != nil) {
			dict["schedulerId"] = schedulerId!
		}
		if(workerId != nil) {
			dict["workerId"] = workerId!
		}
		if(batchIndex != nil) {
			dict["batchIndex"] = batchIndex!
		}
		if(lastSchedulerId != nil) {
			dict["lastSchedulerId"] = lastSchedulerId!
		}
		if(lastWorkerId != nil) {
			dict["lastWorkerId"] = lastWorkerId!
		}
		if(dc != nil) {
			dict["dc"] = dc!
		}
		if(jobObjectId != nil) {
			dict["jobObjectId"] = jobObjectId!
		}
		if(jobObjectType != nil) {
			dict["jobObjectType"] = jobObjectType!
		}
		return dict
	}
}

