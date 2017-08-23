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
 * This class was generated using generate.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class BatchJob: ObjectBase {

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


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = Int64((dict["id"] as? String)!)
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

	public override func toDictionary() -> [String: Any] {
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

