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
// Copyright (C) 2006-2022  Kaltura Inc.
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

open class BatchJobBaseFilter: Filter {

	public class BatchJobBaseFilterTokenizer: Filter.FilterTokenizer {
		
		public var idEqual: BaseTokenizedObject {
			get {
				return self.append("idEqual") 
			}
		}
		
		public var idGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("idGreaterThanOrEqual") 
			}
		}
		
		public var partnerIdEqual: BaseTokenizedObject {
			get {
				return self.append("partnerIdEqual") 
			}
		}
		
		public var partnerIdIn: BaseTokenizedObject {
			get {
				return self.append("partnerIdIn") 
			}
		}
		
		public var partnerIdNotIn: BaseTokenizedObject {
			get {
				return self.append("partnerIdNotIn") 
			}
		}
		
		public var createdAtGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("createdAtGreaterThanOrEqual") 
			}
		}
		
		public var createdAtLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("createdAtLessThanOrEqual") 
			}
		}
		
		public var updatedAtGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("updatedAtGreaterThanOrEqual") 
			}
		}
		
		public var updatedAtLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("updatedAtLessThanOrEqual") 
			}
		}
		
		public var executionAttemptsGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("executionAttemptsGreaterThanOrEqual") 
			}
		}
		
		public var executionAttemptsLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("executionAttemptsLessThanOrEqual") 
			}
		}
		
		public var lockVersionGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("lockVersionGreaterThanOrEqual") 
			}
		}
		
		public var lockVersionLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("lockVersionLessThanOrEqual") 
			}
		}
		
		public var entryIdEqual: BaseTokenizedObject {
			get {
				return self.append("entryIdEqual") 
			}
		}
		
		public var jobTypeEqual: BaseTokenizedObject {
			get {
				return self.append("jobTypeEqual") 
			}
		}
		
		public var jobTypeIn: BaseTokenizedObject {
			get {
				return self.append("jobTypeIn") 
			}
		}
		
		public var jobTypeNotIn: BaseTokenizedObject {
			get {
				return self.append("jobTypeNotIn") 
			}
		}
		
		public var jobSubTypeEqual: BaseTokenizedObject {
			get {
				return self.append("jobSubTypeEqual") 
			}
		}
		
		public var jobSubTypeIn: BaseTokenizedObject {
			get {
				return self.append("jobSubTypeIn") 
			}
		}
		
		public var jobSubTypeNotIn: BaseTokenizedObject {
			get {
				return self.append("jobSubTypeNotIn") 
			}
		}
		
		public var statusEqual: BaseTokenizedObject {
			get {
				return self.append("statusEqual") 
			}
		}
		
		public var statusIn: BaseTokenizedObject {
			get {
				return self.append("statusIn") 
			}
		}
		
		public var statusNotIn: BaseTokenizedObject {
			get {
				return self.append("statusNotIn") 
			}
		}
		
		public var priorityGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("priorityGreaterThanOrEqual") 
			}
		}
		
		public var priorityLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("priorityLessThanOrEqual") 
			}
		}
		
		public var priorityEqual: BaseTokenizedObject {
			get {
				return self.append("priorityEqual") 
			}
		}
		
		public var priorityIn: BaseTokenizedObject {
			get {
				return self.append("priorityIn") 
			}
		}
		
		public var priorityNotIn: BaseTokenizedObject {
			get {
				return self.append("priorityNotIn") 
			}
		}
		
		public var batchVersionGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("batchVersionGreaterThanOrEqual") 
			}
		}
		
		public var batchVersionLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("batchVersionLessThanOrEqual") 
			}
		}
		
		public var batchVersionEqual: BaseTokenizedObject {
			get {
				return self.append("batchVersionEqual") 
			}
		}
		
		public var queueTimeGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("queueTimeGreaterThanOrEqual") 
			}
		}
		
		public var queueTimeLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("queueTimeLessThanOrEqual") 
			}
		}
		
		public var finishTimeGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("finishTimeGreaterThanOrEqual") 
			}
		}
		
		public var finishTimeLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("finishTimeLessThanOrEqual") 
			}
		}
		
		public var errTypeEqual: BaseTokenizedObject {
			get {
				return self.append("errTypeEqual") 
			}
		}
		
		public var errTypeIn: BaseTokenizedObject {
			get {
				return self.append("errTypeIn") 
			}
		}
		
		public var errTypeNotIn: BaseTokenizedObject {
			get {
				return self.append("errTypeNotIn") 
			}
		}
		
		public var errNumberEqual: BaseTokenizedObject {
			get {
				return self.append("errNumberEqual") 
			}
		}
		
		public var errNumberIn: BaseTokenizedObject {
			get {
				return self.append("errNumberIn") 
			}
		}
		
		public var errNumberNotIn: BaseTokenizedObject {
			get {
				return self.append("errNumberNotIn") 
			}
		}
		
		public var estimatedEffortLessThan: BaseTokenizedObject {
			get {
				return self.append("estimatedEffortLessThan") 
			}
		}
		
		public var estimatedEffortGreaterThan: BaseTokenizedObject {
			get {
				return self.append("estimatedEffortGreaterThan") 
			}
		}
		
		public var urgencyLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("urgencyLessThanOrEqual") 
			}
		}
		
		public var urgencyGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("urgencyGreaterThanOrEqual") 
			}
		}
	}

	public var idEqual: Int64? = nil
	public var idGreaterThanOrEqual: Int64? = nil
	public var partnerIdEqual: Int? = nil
	public var partnerIdIn: String? = nil
	public var partnerIdNotIn: String? = nil
	public var createdAtGreaterThanOrEqual: Int? = nil
	public var createdAtLessThanOrEqual: Int? = nil
	public var updatedAtGreaterThanOrEqual: Int? = nil
	public var updatedAtLessThanOrEqual: Int? = nil
	public var executionAttemptsGreaterThanOrEqual: Int? = nil
	public var executionAttemptsLessThanOrEqual: Int? = nil
	public var lockVersionGreaterThanOrEqual: Int? = nil
	public var lockVersionLessThanOrEqual: Int? = nil
	public var entryIdEqual: String? = nil
	public var jobTypeEqual: BatchJobType? = nil
	public var jobTypeIn: String? = nil
	public var jobTypeNotIn: String? = nil
	public var jobSubTypeEqual: Int? = nil
	public var jobSubTypeIn: String? = nil
	public var jobSubTypeNotIn: String? = nil
	public var statusEqual: BatchJobStatus? = nil
	public var statusIn: String? = nil
	public var statusNotIn: String? = nil
	public var priorityGreaterThanOrEqual: Int? = nil
	public var priorityLessThanOrEqual: Int? = nil
	public var priorityEqual: Int? = nil
	public var priorityIn: String? = nil
	public var priorityNotIn: String? = nil
	public var batchVersionGreaterThanOrEqual: Int? = nil
	public var batchVersionLessThanOrEqual: Int? = nil
	public var batchVersionEqual: Int? = nil
	public var queueTimeGreaterThanOrEqual: Int? = nil
	public var queueTimeLessThanOrEqual: Int? = nil
	public var finishTimeGreaterThanOrEqual: Int? = nil
	public var finishTimeLessThanOrEqual: Int? = nil
	public var errTypeEqual: BatchJobErrorTypes? = nil
	public var errTypeIn: String? = nil
	public var errTypeNotIn: String? = nil
	public var errNumberEqual: Int? = nil
	public var errNumberIn: String? = nil
	public var errNumberNotIn: String? = nil
	public var estimatedEffortLessThan: Int? = nil
	public var estimatedEffortGreaterThan: Int? = nil
	public var urgencyLessThanOrEqual: Int? = nil
	public var urgencyGreaterThanOrEqual: Int? = nil


	public func setMultiRequestToken(idEqual: String) {
		self.dict["idEqual"] = idEqual
	}
	
	public func setMultiRequestToken(idGreaterThanOrEqual: String) {
		self.dict["idGreaterThanOrEqual"] = idGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(partnerIdEqual: String) {
		self.dict["partnerIdEqual"] = partnerIdEqual
	}
	
	public func setMultiRequestToken(partnerIdIn: String) {
		self.dict["partnerIdIn"] = partnerIdIn
	}
	
	public func setMultiRequestToken(partnerIdNotIn: String) {
		self.dict["partnerIdNotIn"] = partnerIdNotIn
	}
	
	public func setMultiRequestToken(createdAtGreaterThanOrEqual: String) {
		self.dict["createdAtGreaterThanOrEqual"] = createdAtGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(createdAtLessThanOrEqual: String) {
		self.dict["createdAtLessThanOrEqual"] = createdAtLessThanOrEqual
	}
	
	public func setMultiRequestToken(updatedAtGreaterThanOrEqual: String) {
		self.dict["updatedAtGreaterThanOrEqual"] = updatedAtGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(updatedAtLessThanOrEqual: String) {
		self.dict["updatedAtLessThanOrEqual"] = updatedAtLessThanOrEqual
	}
	
	public func setMultiRequestToken(executionAttemptsGreaterThanOrEqual: String) {
		self.dict["executionAttemptsGreaterThanOrEqual"] = executionAttemptsGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(executionAttemptsLessThanOrEqual: String) {
		self.dict["executionAttemptsLessThanOrEqual"] = executionAttemptsLessThanOrEqual
	}
	
	public func setMultiRequestToken(lockVersionGreaterThanOrEqual: String) {
		self.dict["lockVersionGreaterThanOrEqual"] = lockVersionGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(lockVersionLessThanOrEqual: String) {
		self.dict["lockVersionLessThanOrEqual"] = lockVersionLessThanOrEqual
	}
	
	public func setMultiRequestToken(entryIdEqual: String) {
		self.dict["entryIdEqual"] = entryIdEqual
	}
	
	public func setMultiRequestToken(jobTypeEqual: String) {
		self.dict["jobTypeEqual"] = jobTypeEqual
	}
	
	public func setMultiRequestToken(jobTypeIn: String) {
		self.dict["jobTypeIn"] = jobTypeIn
	}
	
	public func setMultiRequestToken(jobTypeNotIn: String) {
		self.dict["jobTypeNotIn"] = jobTypeNotIn
	}
	
	public func setMultiRequestToken(jobSubTypeEqual: String) {
		self.dict["jobSubTypeEqual"] = jobSubTypeEqual
	}
	
	public func setMultiRequestToken(jobSubTypeIn: String) {
		self.dict["jobSubTypeIn"] = jobSubTypeIn
	}
	
	public func setMultiRequestToken(jobSubTypeNotIn: String) {
		self.dict["jobSubTypeNotIn"] = jobSubTypeNotIn
	}
	
	public func setMultiRequestToken(statusEqual: String) {
		self.dict["statusEqual"] = statusEqual
	}
	
	public func setMultiRequestToken(statusIn: String) {
		self.dict["statusIn"] = statusIn
	}
	
	public func setMultiRequestToken(statusNotIn: String) {
		self.dict["statusNotIn"] = statusNotIn
	}
	
	public func setMultiRequestToken(priorityGreaterThanOrEqual: String) {
		self.dict["priorityGreaterThanOrEqual"] = priorityGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(priorityLessThanOrEqual: String) {
		self.dict["priorityLessThanOrEqual"] = priorityLessThanOrEqual
	}
	
	public func setMultiRequestToken(priorityEqual: String) {
		self.dict["priorityEqual"] = priorityEqual
	}
	
	public func setMultiRequestToken(priorityIn: String) {
		self.dict["priorityIn"] = priorityIn
	}
	
	public func setMultiRequestToken(priorityNotIn: String) {
		self.dict["priorityNotIn"] = priorityNotIn
	}
	
	public func setMultiRequestToken(batchVersionGreaterThanOrEqual: String) {
		self.dict["batchVersionGreaterThanOrEqual"] = batchVersionGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(batchVersionLessThanOrEqual: String) {
		self.dict["batchVersionLessThanOrEqual"] = batchVersionLessThanOrEqual
	}
	
	public func setMultiRequestToken(batchVersionEqual: String) {
		self.dict["batchVersionEqual"] = batchVersionEqual
	}
	
	public func setMultiRequestToken(queueTimeGreaterThanOrEqual: String) {
		self.dict["queueTimeGreaterThanOrEqual"] = queueTimeGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(queueTimeLessThanOrEqual: String) {
		self.dict["queueTimeLessThanOrEqual"] = queueTimeLessThanOrEqual
	}
	
	public func setMultiRequestToken(finishTimeGreaterThanOrEqual: String) {
		self.dict["finishTimeGreaterThanOrEqual"] = finishTimeGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(finishTimeLessThanOrEqual: String) {
		self.dict["finishTimeLessThanOrEqual"] = finishTimeLessThanOrEqual
	}
	
	public func setMultiRequestToken(errTypeEqual: String) {
		self.dict["errTypeEqual"] = errTypeEqual
	}
	
	public func setMultiRequestToken(errTypeIn: String) {
		self.dict["errTypeIn"] = errTypeIn
	}
	
	public func setMultiRequestToken(errTypeNotIn: String) {
		self.dict["errTypeNotIn"] = errTypeNotIn
	}
	
	public func setMultiRequestToken(errNumberEqual: String) {
		self.dict["errNumberEqual"] = errNumberEqual
	}
	
	public func setMultiRequestToken(errNumberIn: String) {
		self.dict["errNumberIn"] = errNumberIn
	}
	
	public func setMultiRequestToken(errNumberNotIn: String) {
		self.dict["errNumberNotIn"] = errNumberNotIn
	}
	
	public func setMultiRequestToken(estimatedEffortLessThan: String) {
		self.dict["estimatedEffortLessThan"] = estimatedEffortLessThan
	}
	
	public func setMultiRequestToken(estimatedEffortGreaterThan: String) {
		self.dict["estimatedEffortGreaterThan"] = estimatedEffortGreaterThan
	}
	
	public func setMultiRequestToken(urgencyLessThanOrEqual: String) {
		self.dict["urgencyLessThanOrEqual"] = urgencyLessThanOrEqual
	}
	
	public func setMultiRequestToken(urgencyGreaterThanOrEqual: String) {
		self.dict["urgencyGreaterThanOrEqual"] = urgencyGreaterThanOrEqual
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["idEqual"] != nil {
			idEqual = Int64("\(dict["idEqual"]!)")
		}
		if dict["idGreaterThanOrEqual"] != nil {
			idGreaterThanOrEqual = Int64("\(dict["idGreaterThanOrEqual"]!)")
		}
		if dict["partnerIdEqual"] != nil {
			partnerIdEqual = dict["partnerIdEqual"] as? Int
		}
		if dict["partnerIdIn"] != nil {
			partnerIdIn = dict["partnerIdIn"] as? String
		}
		if dict["partnerIdNotIn"] != nil {
			partnerIdNotIn = dict["partnerIdNotIn"] as? String
		}
		if dict["createdAtGreaterThanOrEqual"] != nil {
			createdAtGreaterThanOrEqual = dict["createdAtGreaterThanOrEqual"] as? Int
		}
		if dict["createdAtLessThanOrEqual"] != nil {
			createdAtLessThanOrEqual = dict["createdAtLessThanOrEqual"] as? Int
		}
		if dict["updatedAtGreaterThanOrEqual"] != nil {
			updatedAtGreaterThanOrEqual = dict["updatedAtGreaterThanOrEqual"] as? Int
		}
		if dict["updatedAtLessThanOrEqual"] != nil {
			updatedAtLessThanOrEqual = dict["updatedAtLessThanOrEqual"] as? Int
		}
		if dict["executionAttemptsGreaterThanOrEqual"] != nil {
			executionAttemptsGreaterThanOrEqual = dict["executionAttemptsGreaterThanOrEqual"] as? Int
		}
		if dict["executionAttemptsLessThanOrEqual"] != nil {
			executionAttemptsLessThanOrEqual = dict["executionAttemptsLessThanOrEqual"] as? Int
		}
		if dict["lockVersionGreaterThanOrEqual"] != nil {
			lockVersionGreaterThanOrEqual = dict["lockVersionGreaterThanOrEqual"] as? Int
		}
		if dict["lockVersionLessThanOrEqual"] != nil {
			lockVersionLessThanOrEqual = dict["lockVersionLessThanOrEqual"] as? Int
		}
		if dict["entryIdEqual"] != nil {
			entryIdEqual = dict["entryIdEqual"] as? String
		}
		if dict["jobTypeEqual"] != nil {
			jobTypeEqual = BatchJobType(rawValue: "\(dict["jobTypeEqual"]!)")
		}
		if dict["jobTypeIn"] != nil {
			jobTypeIn = dict["jobTypeIn"] as? String
		}
		if dict["jobTypeNotIn"] != nil {
			jobTypeNotIn = dict["jobTypeNotIn"] as? String
		}
		if dict["jobSubTypeEqual"] != nil {
			jobSubTypeEqual = dict["jobSubTypeEqual"] as? Int
		}
		if dict["jobSubTypeIn"] != nil {
			jobSubTypeIn = dict["jobSubTypeIn"] as? String
		}
		if dict["jobSubTypeNotIn"] != nil {
			jobSubTypeNotIn = dict["jobSubTypeNotIn"] as? String
		}
		if dict["statusEqual"] != nil {
			statusEqual = BatchJobStatus(rawValue: (dict["statusEqual"] as? Int)!)
		}
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
		}
		if dict["statusNotIn"] != nil {
			statusNotIn = dict["statusNotIn"] as? String
		}
		if dict["priorityGreaterThanOrEqual"] != nil {
			priorityGreaterThanOrEqual = dict["priorityGreaterThanOrEqual"] as? Int
		}
		if dict["priorityLessThanOrEqual"] != nil {
			priorityLessThanOrEqual = dict["priorityLessThanOrEqual"] as? Int
		}
		if dict["priorityEqual"] != nil {
			priorityEqual = dict["priorityEqual"] as? Int
		}
		if dict["priorityIn"] != nil {
			priorityIn = dict["priorityIn"] as? String
		}
		if dict["priorityNotIn"] != nil {
			priorityNotIn = dict["priorityNotIn"] as? String
		}
		if dict["batchVersionGreaterThanOrEqual"] != nil {
			batchVersionGreaterThanOrEqual = dict["batchVersionGreaterThanOrEqual"] as? Int
		}
		if dict["batchVersionLessThanOrEqual"] != nil {
			batchVersionLessThanOrEqual = dict["batchVersionLessThanOrEqual"] as? Int
		}
		if dict["batchVersionEqual"] != nil {
			batchVersionEqual = dict["batchVersionEqual"] as? Int
		}
		if dict["queueTimeGreaterThanOrEqual"] != nil {
			queueTimeGreaterThanOrEqual = dict["queueTimeGreaterThanOrEqual"] as? Int
		}
		if dict["queueTimeLessThanOrEqual"] != nil {
			queueTimeLessThanOrEqual = dict["queueTimeLessThanOrEqual"] as? Int
		}
		if dict["finishTimeGreaterThanOrEqual"] != nil {
			finishTimeGreaterThanOrEqual = dict["finishTimeGreaterThanOrEqual"] as? Int
		}
		if dict["finishTimeLessThanOrEqual"] != nil {
			finishTimeLessThanOrEqual = dict["finishTimeLessThanOrEqual"] as? Int
		}
		if dict["errTypeEqual"] != nil {
			errTypeEqual = BatchJobErrorTypes(rawValue: (dict["errTypeEqual"] as? Int)!)
		}
		if dict["errTypeIn"] != nil {
			errTypeIn = dict["errTypeIn"] as? String
		}
		if dict["errTypeNotIn"] != nil {
			errTypeNotIn = dict["errTypeNotIn"] as? String
		}
		if dict["errNumberEqual"] != nil {
			errNumberEqual = dict["errNumberEqual"] as? Int
		}
		if dict["errNumberIn"] != nil {
			errNumberIn = dict["errNumberIn"] as? String
		}
		if dict["errNumberNotIn"] != nil {
			errNumberNotIn = dict["errNumberNotIn"] as? String
		}
		if dict["estimatedEffortLessThan"] != nil {
			estimatedEffortLessThan = dict["estimatedEffortLessThan"] as? Int
		}
		if dict["estimatedEffortGreaterThan"] != nil {
			estimatedEffortGreaterThan = dict["estimatedEffortGreaterThan"] as? Int
		}
		if dict["urgencyLessThanOrEqual"] != nil {
			urgencyLessThanOrEqual = dict["urgencyLessThanOrEqual"] as? Int
		}
		if dict["urgencyGreaterThanOrEqual"] != nil {
			urgencyGreaterThanOrEqual = dict["urgencyGreaterThanOrEqual"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(idEqual != nil) {
			dict["idEqual"] = idEqual!
		}
		if(idGreaterThanOrEqual != nil) {
			dict["idGreaterThanOrEqual"] = idGreaterThanOrEqual!
		}
		if(partnerIdEqual != nil) {
			dict["partnerIdEqual"] = partnerIdEqual!
		}
		if(partnerIdIn != nil) {
			dict["partnerIdIn"] = partnerIdIn!
		}
		if(partnerIdNotIn != nil) {
			dict["partnerIdNotIn"] = partnerIdNotIn!
		}
		if(createdAtGreaterThanOrEqual != nil) {
			dict["createdAtGreaterThanOrEqual"] = createdAtGreaterThanOrEqual!
		}
		if(createdAtLessThanOrEqual != nil) {
			dict["createdAtLessThanOrEqual"] = createdAtLessThanOrEqual!
		}
		if(updatedAtGreaterThanOrEqual != nil) {
			dict["updatedAtGreaterThanOrEqual"] = updatedAtGreaterThanOrEqual!
		}
		if(updatedAtLessThanOrEqual != nil) {
			dict["updatedAtLessThanOrEqual"] = updatedAtLessThanOrEqual!
		}
		if(executionAttemptsGreaterThanOrEqual != nil) {
			dict["executionAttemptsGreaterThanOrEqual"] = executionAttemptsGreaterThanOrEqual!
		}
		if(executionAttemptsLessThanOrEqual != nil) {
			dict["executionAttemptsLessThanOrEqual"] = executionAttemptsLessThanOrEqual!
		}
		if(lockVersionGreaterThanOrEqual != nil) {
			dict["lockVersionGreaterThanOrEqual"] = lockVersionGreaterThanOrEqual!
		}
		if(lockVersionLessThanOrEqual != nil) {
			dict["lockVersionLessThanOrEqual"] = lockVersionLessThanOrEqual!
		}
		if(entryIdEqual != nil) {
			dict["entryIdEqual"] = entryIdEqual!
		}
		if(jobTypeEqual != nil) {
			dict["jobTypeEqual"] = jobTypeEqual!.rawValue
		}
		if(jobTypeIn != nil) {
			dict["jobTypeIn"] = jobTypeIn!
		}
		if(jobTypeNotIn != nil) {
			dict["jobTypeNotIn"] = jobTypeNotIn!
		}
		if(jobSubTypeEqual != nil) {
			dict["jobSubTypeEqual"] = jobSubTypeEqual!
		}
		if(jobSubTypeIn != nil) {
			dict["jobSubTypeIn"] = jobSubTypeIn!
		}
		if(jobSubTypeNotIn != nil) {
			dict["jobSubTypeNotIn"] = jobSubTypeNotIn!
		}
		if(statusEqual != nil) {
			dict["statusEqual"] = statusEqual!.rawValue
		}
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		if(statusNotIn != nil) {
			dict["statusNotIn"] = statusNotIn!
		}
		if(priorityGreaterThanOrEqual != nil) {
			dict["priorityGreaterThanOrEqual"] = priorityGreaterThanOrEqual!
		}
		if(priorityLessThanOrEqual != nil) {
			dict["priorityLessThanOrEqual"] = priorityLessThanOrEqual!
		}
		if(priorityEqual != nil) {
			dict["priorityEqual"] = priorityEqual!
		}
		if(priorityIn != nil) {
			dict["priorityIn"] = priorityIn!
		}
		if(priorityNotIn != nil) {
			dict["priorityNotIn"] = priorityNotIn!
		}
		if(batchVersionGreaterThanOrEqual != nil) {
			dict["batchVersionGreaterThanOrEqual"] = batchVersionGreaterThanOrEqual!
		}
		if(batchVersionLessThanOrEqual != nil) {
			dict["batchVersionLessThanOrEqual"] = batchVersionLessThanOrEqual!
		}
		if(batchVersionEqual != nil) {
			dict["batchVersionEqual"] = batchVersionEqual!
		}
		if(queueTimeGreaterThanOrEqual != nil) {
			dict["queueTimeGreaterThanOrEqual"] = queueTimeGreaterThanOrEqual!
		}
		if(queueTimeLessThanOrEqual != nil) {
			dict["queueTimeLessThanOrEqual"] = queueTimeLessThanOrEqual!
		}
		if(finishTimeGreaterThanOrEqual != nil) {
			dict["finishTimeGreaterThanOrEqual"] = finishTimeGreaterThanOrEqual!
		}
		if(finishTimeLessThanOrEqual != nil) {
			dict["finishTimeLessThanOrEqual"] = finishTimeLessThanOrEqual!
		}
		if(errTypeEqual != nil) {
			dict["errTypeEqual"] = errTypeEqual!.rawValue
		}
		if(errTypeIn != nil) {
			dict["errTypeIn"] = errTypeIn!
		}
		if(errTypeNotIn != nil) {
			dict["errTypeNotIn"] = errTypeNotIn!
		}
		if(errNumberEqual != nil) {
			dict["errNumberEqual"] = errNumberEqual!
		}
		if(errNumberIn != nil) {
			dict["errNumberIn"] = errNumberIn!
		}
		if(errNumberNotIn != nil) {
			dict["errNumberNotIn"] = errNumberNotIn!
		}
		if(estimatedEffortLessThan != nil) {
			dict["estimatedEffortLessThan"] = estimatedEffortLessThan!
		}
		if(estimatedEffortGreaterThan != nil) {
			dict["estimatedEffortGreaterThan"] = estimatedEffortGreaterThan!
		}
		if(urgencyLessThanOrEqual != nil) {
			dict["urgencyLessThanOrEqual"] = urgencyLessThanOrEqual!
		}
		if(urgencyGreaterThanOrEqual != nil) {
			dict["urgencyGreaterThanOrEqual"] = urgencyGreaterThanOrEqual!
		}
		return dict
	}
}

